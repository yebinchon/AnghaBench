; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpusetregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpusetregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32 }
%struct.savefpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpu_mxcsr_mask = common dso_local global i32 0, align 4
@fpcurthread = common dso_local global i32 0, align 4
@PCB_FPUINITDONE = common dso_local global i32 0, align 4
@PCB_USERFPUINITDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpusetregs(%struct.thread* %0, %struct.savefpu* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.savefpu*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pcb*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.savefpu* %1, %struct.savefpu** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @cpu_mxcsr_mask, align 4
  %12 = load %struct.savefpu*, %struct.savefpu** %6, align 8
  %13 = getelementptr inbounds %struct.savefpu, %struct.savefpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %11
  store i32 %16, i32* %14, align 4
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load %struct.pcb*, %struct.pcb** %18, align 8
  store %struct.pcb* %19, %struct.pcb** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = call i32 (...) @critical_enter()
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = load i32, i32* @fpcurthread, align 4
  %23 = call %struct.thread* @PCPU_GET(i32 %22)
  %24 = icmp eq %struct.thread* %21, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %4
  %26 = load %struct.pcb*, %struct.pcb** %9, align 8
  %27 = call i64 @PCB_USER_FPU(%struct.pcb* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.thread*, %struct.thread** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @fpusetxstate(%struct.thread* %30, i8* %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.savefpu*, %struct.savefpu** %6, align 8
  %38 = load %struct.thread*, %struct.thread** %5, align 8
  %39 = call i32 @get_pcb_user_save_td(%struct.thread* %38)
  %40 = call i32 @bcopy(%struct.savefpu* %37, i32 %39, i32 4)
  %41 = load %struct.thread*, %struct.thread** %5, align 8
  %42 = call i32 @get_pcb_user_save_td(%struct.thread* %41)
  %43 = call i32 @fpurestore(i32 %42)
  %44 = load %struct.pcb*, %struct.pcb** %9, align 8
  %45 = load i32, i32* @PCB_FPUINITDONE, align 4
  %46 = load i32, i32* @PCB_USERFPUINITDONE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @set_pcb_flags(%struct.pcb* %44, i32 %47)
  br label %49

49:                                               ; preds = %36, %29
  br label %65

50:                                               ; preds = %25, %4
  %51 = load %struct.thread*, %struct.thread** %5, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @fpusetxstate(%struct.thread* %51, i8* %52, i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.savefpu*, %struct.savefpu** %6, align 8
  %59 = load %struct.thread*, %struct.thread** %5, align 8
  %60 = call i32 @get_pcb_user_save_td(%struct.thread* %59)
  %61 = call i32 @bcopy(%struct.savefpu* %58, i32 %60, i32 4)
  %62 = load %struct.thread*, %struct.thread** %5, align 8
  %63 = call i32 @fpuuserinited(%struct.thread* %62)
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %64, %49
  %66 = call i32 (...) @critical_exit()
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i64 @PCB_USER_FPU(%struct.pcb*) #1

declare dso_local i32 @fpusetxstate(%struct.thread*, i8*, i64) #1

declare dso_local i32 @bcopy(%struct.savefpu*, i32, i32) #1

declare dso_local i32 @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @fpurestore(i32) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @fpuuserinited(%struct.thread*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
