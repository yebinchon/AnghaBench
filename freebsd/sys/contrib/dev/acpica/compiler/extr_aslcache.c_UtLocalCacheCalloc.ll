; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcache.c_UtLocalCacheCalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcache.c_UtLocalCacheCalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@ASL_STRING_CACHE_SIZE = common dso_local global i64 0, align 8
@AslGbl_StringCacheList = common dso_local global %struct.TYPE_4__* null, align 8
@AslGbl_StringCount = common dso_local global i32 0, align 4
@AslGbl_StringSize = common dso_local global i32 0, align 4
@AslGbl_StringCacheNext = common dso_local global i64 0, align 8
@AslGbl_StringCacheLast = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @UtLocalCacheCalloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* @ASL_STRING_CACHE_SIZE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AslGbl_StringCacheList, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = add i64 8, %16
  %18 = call %struct.TYPE_4__* @UtLocalCalloc(i64 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AslGbl_StringCacheList, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AslGbl_StringCacheList, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load i32, i32* @AslGbl_StringCount, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @AslGbl_StringCount, align 4
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @AslGbl_StringSize, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @AslGbl_StringSize, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %73

37:                                               ; preds = %11
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i64, i64* @AslGbl_StringCacheNext, align 8
  %40 = load i64, i64* %3, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @AslGbl_StringCacheLast, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = add i64 8, %45
  %47 = call %struct.TYPE_4__* @UtLocalCalloc(i64 %46)
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AslGbl_StringCacheList, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** @AslGbl_StringCacheList, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* @AslGbl_StringCacheNext, align 8
  %56 = load i64, i64* @AslGbl_StringCacheNext, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %56, %57
  store i64 %58, i64* @AslGbl_StringCacheLast, align 8
  br label %59

59:                                               ; preds = %44, %38
  %60 = load i32, i32* @AslGbl_StringCount, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @AslGbl_StringCount, align 4
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* @AslGbl_StringSize, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* @AslGbl_StringSize, align 4
  %67 = load i64, i64* @AslGbl_StringCacheNext, align 8
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %4, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @AslGbl_StringCacheNext, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* @AslGbl_StringCacheNext, align 8
  %72 = load i8*, i8** %4, align 8
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %59, %15
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local %struct.TYPE_4__* @UtLocalCalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
