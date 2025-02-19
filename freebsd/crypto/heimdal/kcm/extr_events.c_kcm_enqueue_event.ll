; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_enqueue_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_enqueue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@KCM_EVENT_NONE = common dso_local global i64 0, align 8
@events_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcm_enqueue_event(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KCM_EVENT_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = call i32 @HEIMDAL_MUTEX_lock(i32* @events_mutex)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = call i32 @kcm_enqueue_event_internal(i32 %15, %struct.TYPE_4__* %16)
  store i32 %17, i32* %6, align 4
  %18 = call i32 @HEIMDAL_MUTEX_unlock(i32* @events_mutex)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @kcm_enqueue_event_internal(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
