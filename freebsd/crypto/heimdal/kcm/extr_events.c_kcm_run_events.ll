; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_run_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_run_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }

@events_mutex = common dso_local global i32 0, align 4
@last_run = common dso_local global i64 0, align 8
@KCM_EVENT_QUEUE_INTERVAL = common dso_local global i64 0, align 8
@events_head = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Could not fire event for cache %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not expire event for cache %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcm_run_events(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = call i32 @HEIMDAL_MUTEX_lock(i32* @events_mutex)
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @last_run, align 8
  %11 = load i64, i64* @KCM_EVENT_QUEUE_INTERVAL, align 8
  %12 = add nsw i64 %10, %11
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @HEIMDAL_MUTEX_unlock(i32* @events_mutex)
  store i64 0, i64* %3, align 8
  br label %98

16:                                               ; preds = %2
  store %struct.TYPE_7__** @events_head, %struct.TYPE_7__*** %7, align 8
  br label %17

17:                                               ; preds = %91, %16
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %95

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %91

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %29, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %38 = call i64 @kcm_fire_event(i32 %36, %struct.TYPE_7__** %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @krb5_get_err_text(i32 %48, i64 %49)
  %51 = call i32 @kcm_log(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %41, %35
  br label %85

53:                                               ; preds = %28
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %60, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %69 = call i64 @kcm_remove_event_internal(i32 %67, %struct.TYPE_7__** %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @krb5_get_err_text(i32 %79, i64 %80)
  %82 = call i32 @kcm_log(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %72, %66
  br label %84

84:                                               ; preds = %83, %59, %53
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = icmp eq %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %95

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %27
  %92 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  store %struct.TYPE_7__** %94, %struct.TYPE_7__*** %7, align 8
  br label %17

95:                                               ; preds = %89, %17
  %96 = load i64, i64* %5, align 8
  store i64 %96, i64* @last_run, align 8
  %97 = call i32 @HEIMDAL_MUTEX_unlock(i32* @events_mutex)
  store i64 0, i64* %3, align 8
  br label %98

98:                                               ; preds = %95, %14
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i64 @kcm_fire_event(i32, %struct.TYPE_7__**) #1

declare dso_local i32 @kcm_log(i32, i8*, i32, i32) #1

declare dso_local i32 @krb5_get_err_text(i32, i64) #1

declare dso_local i64 @kcm_remove_event_internal(i32, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
