; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ckh.c_ckh_evict_reloc_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ckh.c_ckh_evict_reloc_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i8*, i64*)*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@LG_CKH_BUCKET_CELLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i8**, i8**)* @ckh_evict_reloc_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckh_evict_reloc_insert(%struct.TYPE_6__* %0, i64 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca [2 x i64], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i8**, i8*** %9, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %4, %108
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load i64, i64* @LG_CKH_BUCKET_CELLS, align 8
  %28 = call i64 @prng_lg_range_u64(i32* %26, i64 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %18, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @LG_CKH_BUCKET_CELLS, align 8
  %35 = shl i64 %33, %34
  %36 = load i32, i32* %18, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %38
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %14, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %12, align 8
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %13, align 8
  store i8* %59, i8** %11, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32 (i8*, i64*)*, i32 (i8*, i64*)** %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %65 = call i32 %62(i8* %63, i64* %64)
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ZU(i32 1)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %68, %71
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = and i64 %67, %74
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %24
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %81 = load i64, i64* %80, align 16
  %82 = call i32 @ZU(i32 1)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %82, %85
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = and i64 %81, %88
  store i64 %89, i64* %17, align 8
  br label %90

90:                                               ; preds = %79, %24
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %10, align 8
  %96 = load i8**, i8*** %8, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i8**, i8*** %9, align 8
  store i8* %97, i8** %98, align 8
  store i32 1, i32* %5, align 4
  br label %109

99:                                               ; preds = %90
  %100 = load i64, i64* %17, align 8
  store i64 %100, i64* %16, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @ckh_try_bucket_insert(%struct.TYPE_6__* %101, i64 %102, i8* %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %109

108:                                              ; preds = %99
  br label %24

109:                                              ; preds = %107, %94
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @prng_lg_range_u64(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @ckh_try_bucket_insert(%struct.TYPE_6__*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
