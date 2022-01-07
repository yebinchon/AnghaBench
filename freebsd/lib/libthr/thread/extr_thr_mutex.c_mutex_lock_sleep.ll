; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_lock_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_lock_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }
%struct.pthread_mutex = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timespec = type { i32 }

@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@UMUTEX_PRIO_INHERIT = common dso_local global i32 0, align 4
@UMUTEX_ROBUST = common dso_local global i32 0, align 4
@UMUTEX_NONCONSISTENT = common dso_local global i32 0, align 4
@_thr_is_smp = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@CPU_SPINWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread*, %struct.pthread_mutex*, %struct.timespec*)* @mutex_lock_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mutex_lock_sleep(%struct.pthread* %0, %struct.pthread_mutex* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca %struct.pthread_mutex*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %5, align 8
  store %struct.pthread_mutex* %1, %struct.pthread_mutex** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %12 = load %struct.pthread*, %struct.pthread** %5, align 8
  %13 = call i32 @TID(%struct.pthread* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %15 = call i32 @PMUTEX_OWNER_ID(%struct.pthread_mutex* %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %20 = load %struct.timespec*, %struct.timespec** %7, align 8
  %21 = call i32 @mutex_self_lock(%struct.pthread_mutex* %19, %struct.timespec* %20)
  store i32 %21, i32* %4, align 4
  br label %168

22:                                               ; preds = %3
  %23 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %24 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %28 = load i32, i32* @UMUTEX_PRIO_INHERIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @UMUTEX_ROBUST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %26, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @__predict_false(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %110

40:                                               ; preds = %22
  %41 = load i32, i32* @_thr_is_smp, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %77

44:                                               ; preds = %40
  %45 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %46 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %74, %44
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %54 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %64 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @atomic_cmpset_acq_32(i32* %65, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %143

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i32, i32* @CPU_SPINWAIT, align 4
  br label %48

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %43
  %78 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %79 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %108, %77
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %10, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = call i32 (...) @_sched_yield()
  %87 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %88 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %98 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %101, %102
  %104 = call i64 @atomic_cmpset_acq_32(i32* %99, i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  br label %143

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %85
  br label %81

109:                                              ; preds = %81
  br label %110

110:                                              ; preds = %109, %39
  %111 = load %struct.timespec*, %struct.timespec** %7, align 8
  %112 = icmp eq %struct.timespec* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %115 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %114, i32 0, i32 2
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @__thr_umutex_lock(%struct.TYPE_3__* %115, i32 %116)
  store i32 %117, i32* %11, align 4
  br label %142

118:                                              ; preds = %110
  %119 = load %struct.timespec*, %struct.timespec** %7, align 8
  %120 = getelementptr inbounds %struct.timespec, %struct.timespec* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.timespec*, %struct.timespec** %7, align 8
  %125 = getelementptr inbounds %struct.timespec, %struct.timespec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 1000000000
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i1 [ true, %118 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = call i64 @__predict_false(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %11, align 4
  br label %141

135:                                              ; preds = %128
  %136 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %137 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %136, i32 0, i32 2
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.timespec*, %struct.timespec** %7, align 8
  %140 = call i32 @__thr_umutex_timedlock(%struct.TYPE_3__* %137, i32 %138, %struct.timespec* %139)
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %135, %133
  br label %142

142:                                              ; preds = %141, %113
  br label %143

143:                                              ; preds = %142, %106, %72
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @EOWNERDEAD, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146, %143
  %151 = load %struct.pthread*, %struct.pthread** %5, align 8
  %152 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @enqueue_mutex(%struct.pthread* %151, %struct.pthread_mutex* %152, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @EOWNERDEAD, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %160 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %161 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %158, %150
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %18
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @TID(%struct.pthread*) #1

declare dso_local i32 @PMUTEX_OWNER_ID(%struct.pthread_mutex*) #1

declare dso_local i32 @mutex_self_lock(%struct.pthread_mutex*, %struct.timespec*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @atomic_cmpset_acq_32(i32*, i32, i32) #1

declare dso_local i32 @_sched_yield(...) #1

declare dso_local i32 @__thr_umutex_lock(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @__thr_umutex_timedlock(%struct.TYPE_3__*, i32, %struct.timespec*) #1

declare dso_local i32 @enqueue_mutex(%struct.pthread*, %struct.pthread_mutex*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
