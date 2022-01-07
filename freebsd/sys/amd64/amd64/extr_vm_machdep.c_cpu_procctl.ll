; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_procctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_procctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@P_PID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRIV_IO = common dso_local global i32 0, align 4
@PROC_KPTI_CTL_ENABLE_ON_EXEC = common dso_local global i32 0, align 4
@PROC_KPTI_CTL_DISABLE_ON_EXEC = common dso_local global i32 0, align 4
@PGET_CANSEE = common dso_local global i32 0, align 4
@PGET_NOTWEXIT = common dso_local global i32 0, align 4
@PGET_NOTID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_procctl(%struct.thread* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.proc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %71 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %5, %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @P_PID, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %12, align 4
  br label %73

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load %struct.thread*, %struct.thread** %6, align 8
  %26 = load i32, i32* @PRIV_IO, align 4
  %27 = call i32 @priv_check(%struct.thread* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %73

31:                                               ; preds = %24
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @copyin(i8* %32, i32* %13, i32 4)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %73

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @PROC_KPTI_CTL_ENABLE_ON_EXEC, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @PROC_KPTI_CTL_DISABLE_ON_EXEC, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %12, align 4
  br label %73

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PGET_CANSEE, align 4
  %51 = load i32, i32* @PGET_NOTWEXIT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PGET_NOTID, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @pget(i32 %49, i32 %54, %struct.proc** %11)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load %struct.proc*, %struct.proc** %11, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @cpu_procctl_kpti(%struct.proc* %59, i32 %60, i32* %13)
  %62 = load %struct.proc*, %struct.proc** %11, align 8
  %63 = call i32 @PROC_UNLOCK(%struct.proc* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @copyout(i32* %13, i8* %67, i32 4)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %48
  br label %73

71:                                               ; preds = %5
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %70, %45, %36, %30, %19
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @copyin(i8*, i32*, i32) #1

declare dso_local i32 @pget(i32, i32, %struct.proc**) #1

declare dso_local i32 @cpu_procctl_kpti(%struct.proc*, i32, i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
