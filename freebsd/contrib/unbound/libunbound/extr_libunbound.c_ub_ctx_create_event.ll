; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_create_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i64 }
%struct.event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_ctx* @ub_ctx_create_event(%struct.event_base* %0) #0 {
  %2 = alloca %struct.ub_ctx*, align 8
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.ub_ctx*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  %5 = call %struct.ub_ctx* (...) @ub_ctx_create_nopipe()
  store %struct.ub_ctx* %5, %struct.ub_ctx** %4, align 8
  %6 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %7 = icmp ne %struct.ub_ctx* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.ub_ctx* null, %struct.ub_ctx** %2, align 8
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.event_base*, %struct.event_base** %3, align 8
  %15 = call i32 @ub_libevent_event_base(%struct.event_base* %14)
  %16 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %9
  %23 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %24 = call i32 @ub_ctx_delete(%struct.ub_ctx* %23)
  store %struct.ub_ctx* null, %struct.ub_ctx** %2, align 8
  br label %27

25:                                               ; preds = %9
  %26 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  store %struct.ub_ctx* %26, %struct.ub_ctx** %2, align 8
  br label %27

27:                                               ; preds = %25, %22, %8
  %28 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  ret %struct.ub_ctx* %28
}

declare dso_local %struct.ub_ctx* @ub_ctx_create_nopipe(...) #1

declare dso_local i32 @ub_libevent_event_base(%struct.event_base*) #1

declare dso_local i32 @ub_ctx_delete(%struct.ub_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
