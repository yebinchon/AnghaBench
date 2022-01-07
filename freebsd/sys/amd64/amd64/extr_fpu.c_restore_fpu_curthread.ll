; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_restore_fpu_curthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_restore_fpu_curthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32, i64, i32 }

@fpcurthread = common dso_local global i32 0, align 4
@PCB_FPUINITDONE = common dso_local global i32 0, align 4
@fpu_initialstate = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@__INITIAL_FPUCW__ = common dso_local global i64 0, align 8
@PCB_USERFPUINITDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @restore_fpu_curthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_fpu_curthread(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load i32, i32* @fpcurthread, align 4
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = call i32 @PCPU_SET(i32 %4, %struct.thread* %5)
  %7 = call i32 (...) @stop_emulating()
  %8 = call i32 (...) @fpu_clean_state()
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.pcb*, %struct.pcb** %10, align 8
  store %struct.pcb* %11, %struct.pcb** %3, align 8
  %12 = load %struct.pcb*, %struct.pcb** %3, align 8
  %13 = getelementptr inbounds %struct.pcb, %struct.pcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PCB_FPUINITDONE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %1
  %19 = load i32, i32* @fpu_initialstate, align 4
  %20 = load %struct.pcb*, %struct.pcb** %3, align 8
  %21 = getelementptr inbounds %struct.pcb, %struct.pcb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @cpu_max_ext_state_size, align 4
  %24 = call i32 @bcopy(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.pcb*, %struct.pcb** %3, align 8
  %26 = getelementptr inbounds %struct.pcb, %struct.pcb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @fpurestore(i32 %27)
  %29 = load %struct.pcb*, %struct.pcb** %3, align 8
  %30 = getelementptr inbounds %struct.pcb, %struct.pcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @__INITIAL_FPUCW__, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.pcb*, %struct.pcb** %3, align 8
  %36 = getelementptr inbounds %struct.pcb, %struct.pcb* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @fldcw(i64 %37)
  br label %39

39:                                               ; preds = %34, %18
  %40 = load %struct.pcb*, %struct.pcb** %3, align 8
  %41 = call i64 @PCB_USER_FPU(%struct.pcb* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.pcb*, %struct.pcb** %3, align 8
  %45 = load i32, i32* @PCB_FPUINITDONE, align 4
  %46 = load i32, i32* @PCB_USERFPUINITDONE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @set_pcb_flags(%struct.pcb* %44, i32 %47)
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.pcb*, %struct.pcb** %3, align 8
  %51 = load i32, i32* @PCB_FPUINITDONE, align 4
  %52 = call i32 @set_pcb_flags(%struct.pcb* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %43
  br label %59

54:                                               ; preds = %1
  %55 = load %struct.pcb*, %struct.pcb** %3, align 8
  %56 = getelementptr inbounds %struct.pcb, %struct.pcb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @fpurestore(i32 %57)
  br label %59

59:                                               ; preds = %54, %53
  ret void
}

declare dso_local i32 @PCPU_SET(i32, %struct.thread*) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @fpu_clean_state(...) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @fpurestore(i32) #1

declare dso_local i32 @fldcw(i64) #1

declare dso_local i64 @PCB_USER_FPU(%struct.pcb*) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
