; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ckh.c_ckh_bucket_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ckh.c_ckh_bucket_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i8*, i32*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@LG_CKH_BUCKET_CELLS = common dso_local global i32 0, align 4
@SIZE_T_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i8*)* @ckh_bucket_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ckh_bucket_search(%struct.TYPE_5__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %51, %3
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @ZU(i32 1)
  %13 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %14 = shl i32 %12, %13
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 %20, %22
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %26
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %16
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64 (i8*, i32*)*, i64 (i8*, i32*)** %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 %35(i8* %36, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 %43, %45
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  store i64 %49, i64* %4, align 8
  br label %56

50:                                               ; preds = %32, %16
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load i64, i64* @SIZE_T_MAX, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %54, %42
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @ZU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
