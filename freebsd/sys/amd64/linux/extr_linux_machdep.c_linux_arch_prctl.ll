; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_arch_prctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_arch_prctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, %struct.pcb* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pcb = type { i32, i32 }
%struct.linux_arch_prctl_args = type { i32, i32 }

@arch_prctl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"0x%x, %p\00", align 1
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@_ugssel = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@_ufssel = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_arch_prctl(%struct.thread* %0, %struct.linux_arch_prctl_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_arch_prctl_args*, align 8
  %5 = alloca %struct.pcb*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_arch_prctl_args* %1, %struct.linux_arch_prctl_args** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.pcb*, %struct.pcb** %8, align 8
  store %struct.pcb* %9, %struct.pcb** %5, align 8
  %10 = load i32, i32* @arch_prctl, align 4
  %11 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %12 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %15 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @LINUX_CTR2(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %19 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %83 [
    i32 128, label %21
    i32 129, label %44
    i32 131, label %67
    i32 130, label %75
  ]

21:                                               ; preds = %2
  %22 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %23 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.pcb*, %struct.pcb** %5, align 8
  %29 = load i32, i32* @PCB_FULL_IRET, align 4
  %30 = call i32 @set_pcb_flags(%struct.pcb* %28, i32 %29)
  %31 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %32 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pcb*, %struct.pcb** %5, align 8
  %35 = getelementptr inbounds %struct.pcb, %struct.pcb* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @_ugssel, align 4
  %37 = load %struct.thread*, %struct.thread** %3, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  store i32 0, i32* %6, align 4
  br label %43

41:                                               ; preds = %21
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %27
  br label %85

44:                                               ; preds = %2
  %45 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %46 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.pcb*, %struct.pcb** %5, align 8
  %52 = load i32, i32* @PCB_FULL_IRET, align 4
  %53 = call i32 @set_pcb_flags(%struct.pcb* %51, i32 %52)
  %54 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %55 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pcb*, %struct.pcb** %5, align 8
  %58 = getelementptr inbounds %struct.pcb, %struct.pcb* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @_ufssel, align 4
  %60 = load %struct.thread*, %struct.thread** %3, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  store i32 0, i32* %6, align 4
  br label %66

64:                                               ; preds = %44
  %65 = load i32, i32* @EPERM, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %50
  br label %85

67:                                               ; preds = %2
  %68 = load %struct.pcb*, %struct.pcb** %5, align 8
  %69 = getelementptr inbounds %struct.pcb, %struct.pcb* %68, i32 0, i32 1
  %70 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %71 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PTRIN(i32 %72)
  %74 = call i32 @copyout(i32* %69, i32 %73, i32 4)
  store i32 %74, i32* %6, align 4
  br label %85

75:                                               ; preds = %2
  %76 = load %struct.pcb*, %struct.pcb** %5, align 8
  %77 = getelementptr inbounds %struct.pcb, %struct.pcb* %76, i32 0, i32 0
  %78 = load %struct.linux_arch_prctl_args*, %struct.linux_arch_prctl_args** %4, align 8
  %79 = getelementptr inbounds %struct.linux_arch_prctl_args, %struct.linux_arch_prctl_args* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PTRIN(i32 %80)
  %82 = call i32 @copyout(i32* %77, i32 %81, i32 4)
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %2
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %75, %67, %66, %43
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @LINUX_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @PTRIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
