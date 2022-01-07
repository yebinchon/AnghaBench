; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_cleanup_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_cleanup_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__* }

@events_mutex = common dso_local global i32 0, align 4
@events_head = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcm_cleanup_events(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @KCM_ASSERT_VALID(i64 %6)
  %8 = call i32 @HEIMDAL_MUTEX_lock(i32* @events_mutex)
  store %struct.TYPE_4__** @events_head, %struct.TYPE_4__*** %5, align 8
  br label %9

9:                                                ; preds = %36, %2
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %29 = call i32 @kcm_remove_event_internal(i32 %27, %struct.TYPE_4__** %28)
  br label %30

30:                                               ; preds = %26, %19, %13
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp eq %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %40

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.TYPE_4__** %39, %struct.TYPE_4__*** %5, align 8
  br label %9

40:                                               ; preds = %34, %9
  %41 = call i32 @HEIMDAL_MUTEX_unlock(i32* @events_mutex)
  ret i32 0
}

declare dso_local i32 @KCM_ASSERT_VALID(i64) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @kcm_remove_event_internal(i32, %struct.TYPE_4__**) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
