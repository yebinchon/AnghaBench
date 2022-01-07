; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread.c_debug_lock_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread.c_debug_lock_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32)* }
%struct.debug_lock = type { i32, i32, i32, i32* }

@DEBUG_LOCK_SIG = common dso_local global i32 0, align 4
@original_lock_fns_ = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @debug_lock_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_lock_free(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.debug_lock*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.debug_lock*
  store %struct.debug_lock* %7, %struct.debug_lock** %5, align 8
  %8 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %9 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @EVUTIL_ASSERT(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %16 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @EVUTIL_ASSERT(i32 %19)
  %21 = load i32, i32* @DEBUG_LOCK_SIG, align 4
  %22 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %23 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @EVUTIL_ASSERT(i32 %26)
  %28 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @original_lock_fns_, i32 0, i32 0), align 8
  %29 = icmp ne i32 (i32*, i32)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @original_lock_fns_, i32 0, i32 0), align 8
  %32 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %33 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %36 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 %31(i32* %34, i32 %39)
  br label %41

41:                                               ; preds = %30, %2
  %42 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %43 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %45 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %44, i32 0, i32 0
  store i32 -100, i32* %45, align 8
  %46 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %47 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %46, i32 0, i32 2
  store i32 305139674, i32* %47, align 8
  %48 = load %struct.debug_lock*, %struct.debug_lock** %5, align 8
  %49 = call i32 @mm_free(%struct.debug_lock* %48)
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @mm_free(%struct.debug_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
