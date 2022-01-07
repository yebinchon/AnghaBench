; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_vmoffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_vmoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@CUSE_ALLOC_UNIT_MAX = common dso_local global i32 0, align 4
@a_cuse = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@CUSE_ALLOC_PAGES_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cuse_vmoffset(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = call i32 (...) @CUSE_LOCK()
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %77, %1
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @CUSE_ALLOC_UNIT_MAX, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %77

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %4, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 -1
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = icmp uge i32* %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %25
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ule i32* %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = call i32 (...) @CUSE_UNLOCK()
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = urem i64 %62, %63
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = mul i64 %68, %69
  %71 = load i32, i32* @CUSE_ALLOC_PAGES_MAX, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %70, %72
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %73, %74
  store i64 %75, i64* %2, align 8
  br label %82

76:                                               ; preds = %50, %25
  br label %77

77:                                               ; preds = %76, %24
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %12

80:                                               ; preds = %12
  %81 = call i32 (...) @CUSE_UNLOCK()
  store i64 2147483648, i64* %2, align 8
  br label %82

82:                                               ; preds = %80, %54
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i32 @CUSE_LOCK(...) #1

declare dso_local i32 @CUSE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
