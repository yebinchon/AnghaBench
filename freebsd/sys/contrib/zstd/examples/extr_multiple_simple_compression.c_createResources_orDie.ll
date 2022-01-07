; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_simple_compression.c_createResources_orDie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_simple_compression.c_createResources_orDie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"ZSTD_createCCtx() failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8**, i8**, i64*)* @createResources_orDie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createResources_orDie(%struct.TYPE_3__* noalias sret %0, i32 %1, i8** %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i64* %4, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %16

16:                                               ; preds = %42, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i8**, i8*** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i64 @fsize_orDie(i8* %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %33, %20
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %15, align 8
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @ZSTD_compressBound(i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 5
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @malloc_orDie(i64 %55)
  %57 = load i8**, i8*** %8, align 8
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @malloc_orDie(i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @malloc_orDie(i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i8* %64, i8** %65, align 8
  %66 = call i32* (...) @ZSTD_createCCtx()
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32* %66, i32** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @CHECK(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @fsize_orDie(i8*) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32 @CHECK(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
