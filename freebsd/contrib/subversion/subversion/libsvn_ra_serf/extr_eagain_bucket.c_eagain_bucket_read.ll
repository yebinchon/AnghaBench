; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_eagain_bucket.c_eagain_bucket_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_eagain_bucket.c_eagain_bucket_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8* }

@SERF_READ_ALL_AVAIL = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i8**, i64*)* @eagain_bucket_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eagain_bucket_read(%struct.TYPE_4__* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %8, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28, %18
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i8* null, i8** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %54

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %44
  store i8* %48, i8** %46, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %41, %32
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %60, i32* %5, align 4
  br label %64

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* @APR_EAGAIN, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
