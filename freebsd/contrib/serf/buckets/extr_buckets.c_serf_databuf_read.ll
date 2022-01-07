; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_databuf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_databuf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i64 }

@SERF_READ_ALL_AVAIL = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf_databuf_read(%struct.TYPE_4__* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load i64*, i64** %9, align 8
  %13 = call i64 @common_databuf_prep(%struct.TYPE_4__* %11, i64* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %5, align 8
  br label %61

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64*, i64** %9, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %39
  store i8* %43, i8** %41, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i64, i64* @APR_SUCCESS, align 8
  br label %59

55:                                               ; preds = %32
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i64 [ %54, %53 ], [ %58, %55 ]
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %59, %16
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i64 @common_databuf_prep(%struct.TYPE_4__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
