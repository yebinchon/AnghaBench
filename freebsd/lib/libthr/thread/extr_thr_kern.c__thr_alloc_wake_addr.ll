; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_kern.c__thr_alloc_wake_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_kern.c__thr_alloc_wake_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wake_addr = type { i64, %struct.wake_addr* }
%struct.pthread = type { i32 }

@_thr_initial = common dso_local global i32* null, align 8
@default_wake_addr = common dso_local global %struct.wake_addr zeroinitializer, align 8
@addr_lock = common dso_local global i32 0, align 4
@wake_addr_head = common dso_local global %struct.wake_addr* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wake_addr* @_thr_alloc_wake_addr() #0 {
  %1 = alloca %struct.wake_addr*, align 8
  %2 = alloca %struct.pthread*, align 8
  %3 = alloca %struct.wake_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wake_addr*, align 8
  %7 = load i32*, i32** @_thr_initial, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.wake_addr* @default_wake_addr, %struct.wake_addr** %1, align 8
  br label %70

10:                                               ; preds = %0
  %11 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %11, %struct.pthread** %2, align 8
  %12 = load %struct.pthread*, %struct.pthread** %2, align 8
  %13 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %12, i32* @addr_lock)
  %14 = load %struct.wake_addr*, %struct.wake_addr** @wake_addr_head, align 8
  %15 = icmp eq %struct.wake_addr* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = call i32 (...) @getpagesize()
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @getpagesize()
  %19 = load i32, i32* @PROT_READ, align 4
  %20 = load i32, i32* @PROT_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MAP_ANON, align 4
  %23 = load i32, i32* @MAP_PRIVATE, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @mmap(i32* null, i32 %18, i32 %21, i32 %24, i32 -1, i32 0)
  %26 = inttoptr i64 %25 to %struct.wake_addr*
  store %struct.wake_addr* %26, %struct.wake_addr** %6, align 8
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %45, %16
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %31, 16
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.wake_addr*, %struct.wake_addr** %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %35, i64 %38
  %40 = load %struct.wake_addr*, %struct.wake_addr** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %40, i64 %42
  %44 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %43, i32 0, i32 1
  store %struct.wake_addr* %39, %struct.wake_addr** %44, align 8
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.wake_addr*, %struct.wake_addr** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sub i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %49, i64 %52
  %54 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %53, i32 0, i32 1
  store %struct.wake_addr* null, %struct.wake_addr** %54, align 8
  %55 = load %struct.wake_addr*, %struct.wake_addr** %6, align 8
  %56 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %55, i64 1
  store %struct.wake_addr* %56, %struct.wake_addr** @wake_addr_head, align 8
  %57 = load %struct.wake_addr*, %struct.wake_addr** %6, align 8
  %58 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %57, i64 0
  store %struct.wake_addr* %58, %struct.wake_addr** %3, align 8
  br label %64

59:                                               ; preds = %10
  %60 = load %struct.wake_addr*, %struct.wake_addr** @wake_addr_head, align 8
  store %struct.wake_addr* %60, %struct.wake_addr** %3, align 8
  %61 = load %struct.wake_addr*, %struct.wake_addr** %3, align 8
  %62 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %61, i32 0, i32 1
  %63 = load %struct.wake_addr*, %struct.wake_addr** %62, align 8
  store %struct.wake_addr* %63, %struct.wake_addr** @wake_addr_head, align 8
  br label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.pthread*, %struct.pthread** %2, align 8
  %66 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %65, i32* @addr_lock)
  %67 = load %struct.wake_addr*, %struct.wake_addr** %3, align 8
  %68 = getelementptr inbounds %struct.wake_addr, %struct.wake_addr* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.wake_addr*, %struct.wake_addr** %3, align 8
  store %struct.wake_addr* %69, %struct.wake_addr** %1, align 8
  br label %70

70:                                               ; preds = %64, %9
  %71 = load %struct.wake_addr*, %struct.wake_addr** %1, align 8
  ret %struct.wake_addr* %71
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_LOCK_ACQUIRE(%struct.pthread*, i32*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
