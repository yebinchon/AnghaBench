; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_platform_conn_state_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_platform_conn_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@vchiq_susp_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%d: %s->%s\00", align 1
@VCHIQ_CONNSTATE_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"VCHIQka-%d\00", align 1
@vchiq_keepalive_thread_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"vchiq: FATAL: couldn't create thread %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_platform_conn_state_changed(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca [10 x i8], align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call %struct.TYPE_7__* @vchiq_platform_get_arm_state(%struct.TYPE_6__* %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load i32, i32* @vchiq_susp_log_level, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_conn_state_name(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @get_conn_state_name(i32 %17)
  %19 = call i32 @vchiq_log_info(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VCHIQ_CONNSTATE_CONNECTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = call i32 @write_lock_bh(i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @write_unlock_bh(i32* %37)
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i8* %39, i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = bitcast %struct.TYPE_6__* %44 to i8*
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %47 = call i32* @vchiq_thread_create(i32* @vchiq_keepalive_thread_func, i8* %45, i8* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %33
  %55 = load i32, i32* @vchiq_susp_log_level, align 4
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %57 = call i32 @vchiq_log_error(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %63

58:                                               ; preds = %33
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @wake_up_process(i32* %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %68

64:                                               ; preds = %25
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = call i32 @write_unlock_bh(i32* %66)
  br label %68

68:                                               ; preds = %64, %63
  br label %69

69:                                               ; preds = %68, %3
  ret void
}

declare dso_local %struct.TYPE_7__* @vchiq_platform_get_arm_state(%struct.TYPE_6__*) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @get_conn_state_name(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @vchiq_thread_create(i32*, i8*, i8*) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i8*) #1

declare dso_local i32 @wake_up_process(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
