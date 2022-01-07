; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_try_gc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_try_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_try_gc(%struct.pthread* %0, %struct.pthread* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store %struct.pthread* %1, %struct.pthread** %4, align 8
  %5 = load %struct.pthread*, %struct.pthread** %4, align 8
  %6 = call i64 @THR_SHOULD_GC(%struct.pthread* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load %struct.pthread*, %struct.pthread** %3, align 8
  %10 = load %struct.pthread*, %struct.pthread** %4, align 8
  %11 = call i32 @THR_REF_ADD(%struct.pthread* %9, %struct.pthread* %10)
  %12 = load %struct.pthread*, %struct.pthread** %3, align 8
  %13 = load %struct.pthread*, %struct.pthread** %4, align 8
  %14 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %12, %struct.pthread* %13)
  %15 = load %struct.pthread*, %struct.pthread** %3, align 8
  %16 = call i32 @THREAD_LIST_WRLOCK(%struct.pthread* %15)
  %17 = load %struct.pthread*, %struct.pthread** %3, align 8
  %18 = load %struct.pthread*, %struct.pthread** %4, align 8
  %19 = call i32 @THR_THREAD_LOCK(%struct.pthread* %17, %struct.pthread* %18)
  %20 = load %struct.pthread*, %struct.pthread** %3, align 8
  %21 = load %struct.pthread*, %struct.pthread** %4, align 8
  %22 = call i32 @THR_REF_DEL(%struct.pthread* %20, %struct.pthread* %21)
  %23 = load %struct.pthread*, %struct.pthread** %4, align 8
  %24 = call i64 @THR_SHOULD_GC(%struct.pthread* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load %struct.pthread*, %struct.pthread** %4, align 8
  %28 = call i32 @THR_LIST_REMOVE(%struct.pthread* %27)
  %29 = load %struct.pthread*, %struct.pthread** %4, align 8
  %30 = call i32 @THR_GCLIST_ADD(%struct.pthread* %29)
  br label %31

31:                                               ; preds = %26, %8
  %32 = load %struct.pthread*, %struct.pthread** %3, align 8
  %33 = load %struct.pthread*, %struct.pthread** %4, align 8
  %34 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %32, %struct.pthread* %33)
  %35 = load %struct.pthread*, %struct.pthread** %3, align 8
  %36 = call i32 @THREAD_LIST_UNLOCK(%struct.pthread* %35)
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.pthread*, %struct.pthread** %3, align 8
  %39 = load %struct.pthread*, %struct.pthread** %4, align 8
  %40 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %38, %struct.pthread* %39)
  br label %41

41:                                               ; preds = %37, %31
  ret void
}

declare dso_local i64 @THR_SHOULD_GC(%struct.pthread*) #1

declare dso_local i32 @THR_REF_ADD(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THREAD_LIST_WRLOCK(%struct.pthread*) #1

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THR_REF_DEL(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THR_LIST_REMOVE(%struct.pthread*) #1

declare dso_local i32 @THR_GCLIST_ADD(%struct.pthread*) #1

declare dso_local i32 @THREAD_LIST_UNLOCK(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
