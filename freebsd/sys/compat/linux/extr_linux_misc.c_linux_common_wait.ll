; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_common_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_common_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.__wrusage = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WAIT_ANY = common dso_local global i32 0, align 4
@P_ALL = common dso_local global i32 0, align 4
@P_PGID = common dso_local global i32 0, align 4
@P_PID = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WTRAPPED = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32*, i32, %struct.__wrusage*)* @linux_common_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_common_wait(%struct.thread* %0, i32 %1, i32* %2, i32 %3, %struct.__wrusage* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.__wrusage*, align 8
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.__wrusage* %4, %struct.__wrusage** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @WAIT_ANY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @P_ALL, align 4
  store i32 %22, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %36

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @P_PGID, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 0, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %14, align 8
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @P_PID, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %14, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* @WEXITED, align 4
  %38 = load i32, i32* @WTRAPPED, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.thread*, %struct.thread** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.__wrusage*, %struct.__wrusage** %11, align 8
  %47 = call i32 @kern_wait6(%struct.thread* %42, i32 %43, i64 %44, i32* %16, i32 %45, %struct.__wrusage* %46, %struct.TYPE_3__* %12)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %6, align 4
  br label %103

52:                                               ; preds = %36
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %101

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  %57 = and i32 %56, 65535
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i64 @WIFSIGNALED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %17, align 4
  %63 = and i32 %62, -128
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @WTERMSIG(i32 %64)
  %66 = call i32 @bsd_to_linux_signal(i64 %65)
  %67 = or i32 %63, %66
  store i32 %67, i32* %17, align 4
  br label %98

68:                                               ; preds = %55
  %69 = load i32, i32* %17, align 4
  %70 = call i64 @WIFSTOPPED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i32, i32* %17, align 4
  %74 = and i32 %73, -65281
  %75 = load i32, i32* %17, align 4
  %76 = call i64 @WSTOPSIG(i32 %75)
  %77 = call i32 @bsd_to_linux_signal(i64 %76)
  %78 = shl i32 %77, 8
  %79 = or i32 %74, %78
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i64 @WSTOPSIG(i32 %80)
  %82 = load i64, i64* @SIGTRAP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.thread*, %struct.thread** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @linux_ptrace_status(%struct.thread* %85, i32 %87, i32 %88)
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %84, %72
  br label %97

91:                                               ; preds = %68
  %92 = load i32, i32* %17, align 4
  %93 = call i64 @WIFCONTINUED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 65535, i32* %17, align 4
  br label %96

96:                                               ; preds = %95, %91
  br label %97

97:                                               ; preds = %96, %90
  br label %98

98:                                               ; preds = %97, %61
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @copyout(i32* %17, i32* %99, i32 4)
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %98, %52
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %50
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @kern_wait6(%struct.thread*, i32, i64, i32*, i32, %struct.__wrusage*, %struct.TYPE_3__*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @bsd_to_linux_signal(i64) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @linux_ptrace_status(%struct.thread*, i32, i32) #1

declare dso_local i64 @WIFCONTINUED(i32) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
