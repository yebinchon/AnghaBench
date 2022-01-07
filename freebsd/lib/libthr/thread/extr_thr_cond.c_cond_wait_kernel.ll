; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_wait_kernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_wait_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_cond = type { i32 }
%struct.pthread_mutex = type { i32 }
%struct.timespec = type { i32 }
%struct.pthread = type { i32 }

@CVWAIT_ABSTIME = common dso_local global i32 0, align 4
@CVWAIT_CLOCKID = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_cond*, %struct.pthread_mutex*, %struct.timespec*, i32)* @cond_wait_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_wait_kernel(%struct.pthread_cond* %0, %struct.pthread_mutex* %1, %struct.timespec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pthread_cond*, align 8
  %7 = alloca %struct.pthread_mutex*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pthread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pthread_cond* %0, %struct.pthread_cond** %6, align 8
  store %struct.pthread_mutex* %1, %struct.pthread_mutex** %7, align 8
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %15, %struct.pthread** %10, align 8
  %16 = load %struct.pthread*, %struct.pthread** %10, align 8
  %17 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %18 = call i32 @_mutex_enter_robust(%struct.pthread* %16, %struct.pthread_mutex* %17)
  store i32 %18, i32* %14, align 4
  %19 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %20 = call i32 @_mutex_cv_detach(%struct.pthread_mutex* %19, i32* %13)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.pthread*, %struct.pthread** %10, align 8
  %28 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %29 = call i32 @_mutex_leave_robust(%struct.pthread* %27, %struct.pthread_mutex* %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %127

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.pthread*, %struct.pthread** %10, align 8
  %37 = call i32 @_thr_cancel_enter2(%struct.pthread* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %40 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %39, i32 0, i32 0
  %41 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %42 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %41, i32 0, i32 0
  %43 = load %struct.timespec*, %struct.timespec** %8, align 8
  %44 = load i32, i32* @CVWAIT_ABSTIME, align 4
  %45 = load i32, i32* @CVWAIT_CLOCKID, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @_thr_ucond_wait(i32* %40, i32* %42, %struct.timespec* %43, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.pthread*, %struct.pthread** %10, align 8
  %52 = call i32 @_thr_cancel_leave(%struct.pthread* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @_mutex_cv_lock(%struct.pthread_mutex* %57, i32 %58, i32 1)
  store i32 %59, i32* %12, align 4
  br label %111

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @EINTR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64, %60
  %69 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @_mutex_cv_lock(%struct.pthread_mutex* %69, i32 %70, i32 1)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.pthread*, %struct.pthread** %10, align 8
  %82 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %83 = call i32 @_mutex_leave_robust(%struct.pthread* %81, %struct.pthread_mutex* %82)
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.pthread*, %struct.pthread** %10, align 8
  %86 = call i32 @_thr_testcancel(%struct.pthread* %85)
  br label %87

87:                                               ; preds = %84, %74, %68
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @EINTR, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %87
  br label %110

93:                                               ; preds = %64
  %94 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @_mutex_cv_attach(%struct.pthread_mutex* %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.pthread*, %struct.pthread** %10, align 8
  %104 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %105 = call i32 @_mutex_leave_robust(%struct.pthread* %103, %struct.pthread_mutex* %104)
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.pthread*, %struct.pthread** %10, align 8
  %108 = call i32 @_thr_testcancel(%struct.pthread* %107)
  br label %109

109:                                              ; preds = %106, %93
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %109, %92
  br label %111

111:                                              ; preds = %110, %56
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.pthread*, %struct.pthread** %10, align 8
  %116 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %117 = call i32 @_mutex_leave_robust(%struct.pthread* %115, %struct.pthread_mutex* %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  br label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %30
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_mutex_enter_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @_mutex_cv_detach(%struct.pthread_mutex*, i32*) #1

declare dso_local i32 @_mutex_leave_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @_thr_cancel_enter2(%struct.pthread*, i32) #1

declare dso_local i32 @_thr_ucond_wait(i32*, i32*, %struct.timespec*, i32) #1

declare dso_local i32 @_thr_cancel_leave(%struct.pthread*, i32) #1

declare dso_local i32 @_mutex_cv_lock(%struct.pthread_mutex*, i32, i32) #1

declare dso_local i32 @_thr_testcancel(%struct.pthread*) #1

declare dso_local i32 @_mutex_cv_attach(%struct.pthread_mutex*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
