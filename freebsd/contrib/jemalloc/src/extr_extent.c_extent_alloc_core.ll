; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_alloc_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_alloc_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_dss = common dso_local global i64 0, align 8
@dss_prec_primary = common dso_local global i64 0, align 8
@dss_prec_secondary = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8*, i64, i64, i32*, i32*, i64)* @extent_alloc_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extent_alloc_core(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32* %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %14, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* @have_dss, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %8
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @dss_prec_primary, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = call i8* @extent_alloc_dss(i32* %34, i32* %35, i8* %36, i64 %37, i64 %38, i32* %39, i32* %40)
  store i8* %41, i8** %18, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i8*, i8** %18, align 8
  store i8* %44, i8** %9, align 8
  br label %75

45:                                               ; preds = %33, %29, %8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i8* @extent_alloc_mmap(i8* %46, i64 %47, i64 %48, i32* %49, i32* %50)
  store i8* %51, i8** %18, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i8*, i8** %18, align 8
  store i8* %54, i8** %9, align 8
  br label %75

55:                                               ; preds = %45
  %56 = load i64, i64* @have_dss, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* @dss_prec_secondary, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i8* @extent_alloc_dss(i32* %63, i32* %64, i8* %65, i64 %66, i64 %67, i32* %68, i32* %69)
  store i8* %70, i8** %18, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i8*, i8** %18, align 8
  store i8* %73, i8** %9, align 8
  br label %75

74:                                               ; preds = %62, %58, %55
  store i8* null, i8** %9, align 8
  br label %75

75:                                               ; preds = %74, %72, %53, %43
  %76 = load i8*, i8** %9, align 8
  ret i8* %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @extent_alloc_dss(i32*, i32*, i8*, i64, i64, i32*, i32*) #1

declare dso_local i8* @extent_alloc_mmap(i8*, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
