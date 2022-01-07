; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32*, i32 }

@BUCKET_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i64, i8*)* @cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cache_lookup(%struct.TYPE_4__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %19
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %11, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @memcmp(i32 %35, i8* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %4, align 8
  br label %119

55:                                               ; preds = %32, %26, %3
  %56 = load i64, i64* %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @hash_func(i64 %56, i8* %57, i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 16
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = ashr i64 %66, 8
  %68 = add nsw i64 %65, %67
  %69 = load i64, i64* @BUCKET_COUNT, align 8
  %70 = srem i64 %68, %69
  store i64 %70, i64* %8, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %11, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %104, label %84

84:                                               ; preds = %55
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %104, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @memcmp(i32 %99, i8* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96, %90, %84, %55
  store i32* null, i32** %4, align 8
  br label %119

105:                                              ; preds = %96
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %4, align 8
  br label %119

119:                                              ; preds = %115, %104, %51
  %120 = load i32*, i32** %4, align 8
  ret i32* %120
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @hash_func(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
