; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_create_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_create_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_neigh_handler = type { i32 }
%struct.timespec = type { i32, i32 }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }

@NUM_OF_TRIES = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@TFD_NONBLOCK = common dso_local global i32 0, align 4
@TFD_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.get_neigh_handler*)* @create_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_timer(%struct.get_neigh_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.get_neigh_handler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.itimerspec, align 4
  %7 = alloca i32, align 4
  store %struct.get_neigh_handler* %0, %struct.get_neigh_handler** %3, align 8
  %8 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %9 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NUM_OF_TRIES, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, 1000
  %19 = mul nsw i32 %18, 1000000
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %6, i32 0, i32 0
  %21 = bitcast %struct.timespec* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %6, i32 0, i32 1
  %23 = bitcast %struct.timespec* %22 to i8*
  %24 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %25 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %26 = load i32, i32* @TFD_NONBLOCK, align 4
  %27 = load i32, i32* @TFD_CLOEXEC, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @timerfd_create(i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %1
  %35 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %36 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i32, i32* @NUM_OF_TRIES, align 4
  %41 = icmp sle i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %6, i32 0, i32 0
  %44 = call i32 @bzero(%struct.timespec* %43, i32 8)
  br label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %6, i32 0, i32 0
  %47 = bitcast %struct.timespec* %46 to i8*
  %48 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @timerfd_settime(i32 %50, i32 0, %struct.itimerspec* %6, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @close(i32 %54)
  store i32 -1, i32* %2, align 4
  br label %59

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %53, %32
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @timerfd_create(i32, i32) #2

declare dso_local i32 @bzero(%struct.timespec*, i32) #2

declare dso_local i64 @timerfd_settime(i32, i32, %struct.itimerspec*, i32*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
