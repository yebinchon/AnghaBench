; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i64, %struct.ub_event_base*, i32* }
%struct.ub_event_base = type { i32 }
%struct.event_base = type { i32 }

@UB_INITFAIL = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_set_event(%struct.ub_ctx* %0, %struct.event_base* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca %struct.ub_event_base*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store %struct.event_base* %1, %struct.event_base** %5, align 8
  %7 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %8 = icmp ne %struct.ub_ctx* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %10, i32 0, i32 3
  %12 = load %struct.ub_event_base*, %struct.ub_event_base** %11, align 8
  %13 = icmp ne %struct.ub_event_base* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.event_base*, %struct.event_base** %5, align 8
  %16 = icmp ne %struct.event_base* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %9, %2
  %18 = load i32, i32* @UB_INITFAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %14
  %20 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %20, i32 0, i32 3
  %22 = load %struct.ub_event_base*, %struct.ub_event_base** %21, align 8
  %23 = call %struct.event_base* @ub_libevent_get_event_base(%struct.ub_event_base* %22)
  %24 = load %struct.event_base*, %struct.event_base** %5, align 8
  %25 = icmp eq %struct.event_base* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @UB_NOERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %19
  %29 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %29, i32 0, i32 1
  %31 = call i32 @lock_basic_lock(i32* %30)
  %32 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @libworker_delete_event(i32* %34)
  %36 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.event_base*, %struct.event_base** %5, align 8
  %39 = call %struct.ub_event_base* @ub_libevent_event_base(%struct.event_base* %38)
  store %struct.ub_event_base* %39, %struct.ub_event_base** %6, align 8
  %40 = load %struct.ub_event_base*, %struct.ub_event_base** %6, align 8
  %41 = icmp ne %struct.ub_event_base* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load %struct.ub_event_base*, %struct.ub_event_base** %6, align 8
  %44 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %44, i32 0, i32 3
  store %struct.ub_event_base* %43, %struct.ub_event_base** %45, align 8
  br label %46

46:                                               ; preds = %42, %28
  %47 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %51, i32 0, i32 1
  %53 = call i32 @lock_basic_unlock(i32* %52)
  %54 = load %struct.ub_event_base*, %struct.ub_event_base** %6, align 8
  %55 = icmp ne %struct.ub_event_base* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @UB_NOERROR, align 4
  br label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @UB_INITFAIL, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %26, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.event_base* @ub_libevent_get_event_base(%struct.ub_event_base*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @libworker_delete_event(i32*) #1

declare dso_local %struct.ub_event_base* @ub_libevent_event_base(%struct.event_base*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
