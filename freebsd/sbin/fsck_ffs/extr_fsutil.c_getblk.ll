; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_getblk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufarea = type { i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32 }

@sblock = common dso_local global i32 0, align 4
@totalreads = common dso_local global i32 0, align 4
@fswritefd = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@readcnt = common dso_local global i32* null, align 8
@CLOCK_REALTIME_PRECISE = common dso_local global i32 0, align 4
@fsreadfd = common dso_local global i32 0, align 4
@readtime = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getblk(%struct.bufarea* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bufarea*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.timespec, align 4
  store %struct.bufarea* %0, %struct.bufarea** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @fsbtodb(i32* @sblock, i64 %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %13 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @totalreads, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @totalreads, align 4
  br label %71

20:                                               ; preds = %3
  %21 = load i32, i32* @fswritefd, align 4
  %22 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %23 = call i32 @flush(i32 %21, %struct.bufarea* %22)
  %24 = load i64, i64* @debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32*, i32** @readcnt, align 8
  %28 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %29 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @CLOCK_REALTIME_PRECISE, align 4
  %35 = call i32 @clock_gettime(i32 %34, %struct.timespec* %8)
  br label %36

36:                                               ; preds = %26, %20
  %37 = load i32, i32* @fsreadfd, align 4
  %38 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %39 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @blread(i32 %37, i32 %41, i64 %42, i64 %43)
  %45 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %46 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* @debug, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %36
  %50 = load i32, i32* @CLOCK_REALTIME_PRECISE, align 4
  %51 = call i32 @clock_gettime(i32 %50, %struct.timespec* %9)
  %52 = call i32 @timespecsub(%struct.timespec* %9, %struct.timespec* %8, %struct.timespec* %9)
  %53 = load i32*, i32** @readtime, align 8
  %54 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %55 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32*, i32** @readtime, align 8
  %59 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %60 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i32 @timespecadd(i32* %57, %struct.timespec* %9, i32* %62)
  br label %64

64:                                               ; preds = %49, %36
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %67 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %70 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %17
  ret void
}

declare dso_local i64 @fsbtodb(i32*, i64) #1

declare dso_local i32 @flush(i32, %struct.bufarea*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @blread(i32, i32, i64, i64) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespecadd(i32*, %struct.timespec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
