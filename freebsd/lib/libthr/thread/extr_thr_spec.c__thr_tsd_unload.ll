; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spec.c__thr_tsd_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spec.c__thr_tsd_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i8*)*, i32 }
%struct.dl_phdr_info = type { i32 }
%struct.pthread = type { i32 }

@_keytable_lock = common dso_local global i32 0, align 4
@PTHREAD_KEYS_MAX = common dso_local global i32 0, align 4
@_thread_keytable = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_tsd_unload(%struct.dl_phdr_info* %0) #0 {
  %2 = alloca %struct.dl_phdr_info*, align 8
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i32, align 4
  store %struct.dl_phdr_info* %0, %struct.dl_phdr_info** %2, align 8
  %6 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %6, %struct.pthread** %3, align 8
  %7 = load %struct.pthread*, %struct.pthread** %3, align 8
  %8 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %7, i32* @_keytable_lock)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PTHREAD_KEYS_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_thread_keytable, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %44

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_thread_keytable, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load void (i8*)*, void (i8*)** %27, align 8
  store void (i8*)* %28, void (i8*)** %4, align 8
  %29 = load void (i8*)*, void (i8*)** %4, align 8
  %30 = icmp eq void (i8*)* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.dl_phdr_info*, %struct.dl_phdr_info** %2, align 8
  %34 = load void (i8*)*, void (i8*)** %4, align 8
  %35 = call i64 @__elf_phdr_match_addr(%struct.dl_phdr_info* %33, void (i8*)* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_thread_keytable, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store void (i8*)* null, void (i8*)** %42, align 8
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %31, %21
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %9

47:                                               ; preds = %9
  %48 = load %struct.pthread*, %struct.pthread** %3, align 8
  %49 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %48, i32* @_keytable_lock)
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_LOCK_ACQUIRE(%struct.pthread*, i32*) #1

declare dso_local i64 @__elf_phdr_match_addr(%struct.dl_phdr_info*, void (i8*)*) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
