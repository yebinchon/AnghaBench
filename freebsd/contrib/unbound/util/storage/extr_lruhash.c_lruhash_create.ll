; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i64, i32, i64, %struct.lruhash*, i32, i64, i64, i32*, i32*, i8*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lruhash* @lruhash_create(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.lruhash*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.lruhash*, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = call %struct.lruhash* @calloc(i32 1, i32 96)
  store %struct.lruhash* %17, %struct.lruhash** %16, align 8
  %18 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %19 = icmp ne %struct.lruhash* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  store %struct.lruhash* null, %struct.lruhash** %8, align 8
  br label %101

21:                                               ; preds = %7
  %22 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %23 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %22, i32 0, i32 4
  %24 = call i32 @lock_quick_init(i32* %23)
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %27 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %30 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %33 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %36 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %39 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %42 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %47 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %49 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %48, i32 0, i32 8
  store i32* null, i32** %49, align 8
  %50 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %51 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %50, i32 0, i32 7
  store i32* null, i32** %51, align 8
  %52 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %53 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %55 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %58 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %60 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call %struct.lruhash* @calloc(i32 %62, i32 4)
  %64 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %65 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %64, i32 0, i32 3
  store %struct.lruhash* %63, %struct.lruhash** %65, align 8
  %66 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %67 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %66, i32 0, i32 3
  %68 = load %struct.lruhash*, %struct.lruhash** %67, align 8
  %69 = icmp ne %struct.lruhash* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %21
  %71 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %72 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %71, i32 0, i32 4
  %73 = call i32 @lock_quick_destroy(i32* %72)
  %74 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %75 = call i32 @free(%struct.lruhash* %74)
  store %struct.lruhash* null, %struct.lruhash** %8, align 8
  br label %101

76:                                               ; preds = %21
  %77 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %78 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %77, i32 0, i32 3
  %79 = load %struct.lruhash*, %struct.lruhash** %78, align 8
  %80 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %81 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @bin_init(%struct.lruhash* %79, i32 %83)
  %85 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %86 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %85, i32 0, i32 4
  %87 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %88 = call i32 @lock_protect(i32* %86, %struct.lruhash* %87, i32 96)
  %89 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %90 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %89, i32 0, i32 4
  %91 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %92 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %91, i32 0, i32 3
  %93 = load %struct.lruhash*, %struct.lruhash** %92, align 8
  %94 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  %95 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @lock_protect(i32* %90, %struct.lruhash* %93, i32 %98)
  %100 = load %struct.lruhash*, %struct.lruhash** %16, align 8
  store %struct.lruhash* %100, %struct.lruhash** %8, align 8
  br label %101

101:                                              ; preds = %76, %70, %20
  %102 = load %struct.lruhash*, %struct.lruhash** %8, align 8
  ret %struct.lruhash* %102
}

declare dso_local %struct.lruhash* @calloc(i32, i32) #1

declare dso_local i32 @lock_quick_init(i32*) #1

declare dso_local i32 @lock_quick_destroy(i32*) #1

declare dso_local i32 @free(%struct.lruhash*) #1

declare dso_local i32 @bin_init(%struct.lruhash*, i32) #1

declare dso_local i32 @lock_protect(i32*, %struct.lruhash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
