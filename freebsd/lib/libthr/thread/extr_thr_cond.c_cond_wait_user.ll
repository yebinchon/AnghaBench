; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_wait_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_wait_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_cond = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pthread_mutex = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timespec = type { i32 }
%struct.pthread = type { i64, %struct.pthread_mutex*, i32*, i32 }
%struct.sleepqueue = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"thread %p was already on queue.\00", align 1
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@UMTX_OP_MUTEX_WAKE2 = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_cond*, %struct.pthread_mutex*, %struct.timespec*, i32)* @cond_wait_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_wait_user(%struct.pthread_cond* %0, %struct.pthread_mutex* %1, %struct.timespec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pthread_cond*, align 8
  %7 = alloca %struct.pthread_mutex*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pthread*, align 8
  %11 = alloca %struct.sleepqueue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pthread_cond* %0, %struct.pthread_cond** %6, align 8
  store %struct.pthread_mutex* %1, %struct.pthread_mutex** %7, align 8
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %16, %struct.pthread** %10, align 8
  %17 = load %struct.pthread*, %struct.pthread** %10, align 8
  %18 = getelementptr inbounds %struct.pthread, %struct.pthread* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.pthread*, %struct.pthread** %10, align 8
  %23 = call i32 @PANIC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.pthread* %22)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.pthread*, %struct.pthread** %10, align 8
  %29 = call i32 @_thr_testcancel(%struct.pthread* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %32 = call i32 @_sleepq_lock(%struct.pthread_cond* %31)
  %33 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %34 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  store i32 0, i32* %12, align 4
  %35 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %36 = call i32 @_mutex_cv_unlock(%struct.pthread_mutex* %35, i32* %15, i32* %12)
  %37 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %38 = load %struct.pthread*, %struct.pthread** %10, align 8
  %39 = getelementptr inbounds %struct.pthread, %struct.pthread* %38, i32 0, i32 1
  store %struct.pthread_mutex* %37, %struct.pthread_mutex** %39, align 8
  %40 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %41 = load %struct.pthread*, %struct.pthread** %10, align 8
  %42 = call i32 @_sleepq_add(%struct.pthread_cond* %40, %struct.pthread* %41)
  br label %43

43:                                               ; preds = %157, %30
  %44 = load %struct.pthread*, %struct.pthread** %10, align 8
  %45 = call i32 @_thr_clear_wake(%struct.pthread* %44)
  %46 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %47 = call i32 @_sleepq_unlock(%struct.pthread_cond* %46)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  %51 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %52 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %60 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %59, i32 0, i32 0
  %61 = load i32, i32* @UMTX_OP_MUTEX_WAKE2, align 4
  %62 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %63 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @_umtx_op_err(%struct.TYPE_4__* %60, i32 %61, i32 %65, i32 0, i32 0)
  br label %67

67:                                               ; preds = %58, %50
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct.pthread*, %struct.pthread** %10, align 8
  %70 = getelementptr inbounds %struct.pthread, %struct.pthread* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.pthread*, %struct.pthread** %10, align 8
  %75 = getelementptr inbounds %struct.pthread, %struct.pthread* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.pthread*, %struct.pthread** %10, align 8
  %78 = getelementptr inbounds %struct.pthread, %struct.pthread* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @_thr_wake_all(i32 %76, i64 %79)
  %81 = load %struct.pthread*, %struct.pthread** %10, align 8
  %82 = getelementptr inbounds %struct.pthread, %struct.pthread* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %73, %68
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.pthread*, %struct.pthread** %10, align 8
  %88 = call i32 @_thr_cancel_enter2(%struct.pthread* %87, i32 0)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.pthread*, %struct.pthread** %10, align 8
  %91 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %92 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.timespec*, %struct.timespec** %8, align 8
  %96 = call i32 @_thr_sleep(%struct.pthread* %90, i32 %94, %struct.timespec* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.pthread*, %struct.pthread** %10, align 8
  %101 = call i32 @_thr_cancel_leave(%struct.pthread* %100, i32 0)
  br label %102

102:                                              ; preds = %99, %89
  %103 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %104 = call i32 @_sleepq_lock(%struct.pthread_cond* %103)
  %105 = load %struct.pthread*, %struct.pthread** %10, align 8
  %106 = getelementptr inbounds %struct.pthread, %struct.pthread* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 0, i32* %13, align 4
  br label %158

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %142

113:                                              ; preds = %110
  %114 = load %struct.pthread*, %struct.pthread** %10, align 8
  %115 = call i64 @SHOULD_CANCEL(%struct.pthread* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %142

117:                                              ; preds = %113
  %118 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %119 = call %struct.sleepqueue* @_sleepq_lookup(%struct.pthread_cond* %118)
  store %struct.sleepqueue* %119, %struct.sleepqueue** %11, align 8
  %120 = load %struct.sleepqueue*, %struct.sleepqueue** %11, align 8
  %121 = load %struct.pthread*, %struct.pthread** %10, align 8
  %122 = call i8* @_sleepq_remove(%struct.sleepqueue* %120, %struct.pthread* %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %125 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %127 = call i32 @_sleepq_unlock(%struct.pthread_cond* %126)
  %128 = load %struct.pthread*, %struct.pthread** %10, align 8
  %129 = getelementptr inbounds %struct.pthread, %struct.pthread* %128, i32 0, i32 1
  store %struct.pthread_mutex* null, %struct.pthread_mutex** %129, align 8
  %130 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @_mutex_cv_lock(%struct.pthread_mutex* %130, i32 %131, i32 0)
  store i32 %132, i32* %14, align 4
  %133 = load %struct.pthread*, %struct.pthread** %10, align 8
  %134 = call i32 @THR_IN_CRITICAL(%struct.pthread* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %117
  %137 = load i32, i32* @PTHREAD_CANCELED, align 4
  %138 = call i32 @_pthread_exit(i32 %137)
  br label %141

139:                                              ; preds = %117
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %172

141:                                              ; preds = %136
  br label %156

142:                                              ; preds = %113, %110
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @ETIMEDOUT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %148 = call %struct.sleepqueue* @_sleepq_lookup(%struct.pthread_cond* %147)
  store %struct.sleepqueue* %148, %struct.sleepqueue** %11, align 8
  %149 = load %struct.sleepqueue*, %struct.sleepqueue** %11, align 8
  %150 = load %struct.pthread*, %struct.pthread** %10, align 8
  %151 = call i8* @_sleepq_remove(%struct.sleepqueue* %149, %struct.pthread* %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %154 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  br label %158

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156
  br label %43

158:                                              ; preds = %146, %109
  %159 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %160 = call i32 @_sleepq_unlock(%struct.pthread_cond* %159)
  %161 = load %struct.pthread*, %struct.pthread** %10, align 8
  %162 = getelementptr inbounds %struct.pthread, %struct.pthread* %161, i32 0, i32 1
  store %struct.pthread_mutex* null, %struct.pthread_mutex** %162, align 8
  %163 = load %struct.pthread_mutex*, %struct.pthread_mutex** %7, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @_mutex_cv_lock(%struct.pthread_mutex* %163, i32 %164, i32 0)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %168, %158
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %139
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @PANIC(i8*, %struct.pthread*) #1

declare dso_local i32 @_thr_testcancel(%struct.pthread*) #1

declare dso_local i32 @_sleepq_lock(%struct.pthread_cond*) #1

declare dso_local i32 @_mutex_cv_unlock(%struct.pthread_mutex*, i32*, i32*) #1

declare dso_local i32 @_sleepq_add(%struct.pthread_cond*, %struct.pthread*) #1

declare dso_local i32 @_thr_clear_wake(%struct.pthread*) #1

declare dso_local i32 @_sleepq_unlock(%struct.pthread_cond*) #1

declare dso_local i32 @_umtx_op_err(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @_thr_wake_all(i32, i64) #1

declare dso_local i32 @_thr_cancel_enter2(%struct.pthread*, i32) #1

declare dso_local i32 @_thr_sleep(%struct.pthread*, i32, %struct.timespec*) #1

declare dso_local i32 @_thr_cancel_leave(%struct.pthread*, i32) #1

declare dso_local i64 @SHOULD_CANCEL(%struct.pthread*) #1

declare dso_local %struct.sleepqueue* @_sleepq_lookup(%struct.pthread_cond*) #1

declare dso_local i8* @_sleepq_remove(%struct.sleepqueue*, %struct.pthread*) #1

declare dso_local i32 @_mutex_cv_lock(%struct.pthread_mutex*, i32, i32) #1

declare dso_local i32 @THR_IN_CRITICAL(%struct.pthread*) #1

declare dso_local i32 @_pthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
