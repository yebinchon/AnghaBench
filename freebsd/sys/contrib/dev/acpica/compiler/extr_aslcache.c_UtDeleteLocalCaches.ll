; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcache.c_UtDeleteLocalCaches.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcache.c_UtDeleteLocalCaches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@AslGbl_StringCacheList = common dso_local global %struct.TYPE_7__* null, align 8
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%u Strings (%u bytes), Buffer size: %u bytes, %u Buffers\0A\00", align 1
@AslGbl_StringCount = common dso_local global i64 0, align 8
@AslGbl_StringSize = common dso_local global i32 0, align 4
@ASL_STRING_CACHE_SIZE = common dso_local global i32 0, align 4
@AslGbl_StringCacheNext = common dso_local global i32* null, align 8
@AslGbl_StringCacheLast = common dso_local global i32* null, align 8
@AslGbl_ParseOpCacheList = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"%u ParseOps, Buffer size: %u ops (%u bytes), %u Buffers\0A\00", align 1
@AslGbl_ParseOpCount = common dso_local global i64 0, align 8
@ASL_PARSEOP_CACHE_SIZE = common dso_local global i32 0, align 4
@AslGbl_ParseOpCacheNext = common dso_local global i32* null, align 8
@AslGbl_ParseOpCacheLast = common dso_local global i32* null, align 8
@AslGbl_ParseTreeRoot = common dso_local global i32* null, align 8
@AslGbl_FieldCacheList = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"%u Fields, Buffer size: %u fields (%u bytes), %u Buffers\0A\00", align 1
@AslGbl_FieldCount = common dso_local global i64 0, align 8
@ASL_FIELD_CACHE_SIZE = common dso_local global i32 0, align 4
@AslGbl_FieldCacheNext = common dso_local global i32* null, align 8
@AslGbl_FieldCacheLast = common dso_local global i32* null, align 8
@AslGbl_SubtableCacheList = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"%u Subtables, Buffer size: %u subtables (%u bytes), %u Buffers\0A\00", align 1
@AslGbl_SubtableCount = common dso_local global i64 0, align 8
@ASL_SUBTABLE_CACHE_SIZE = common dso_local global i32 0, align 4
@AslGbl_SubtableCacheNext = common dso_local global i32* null, align 8
@AslGbl_SubtableCacheLast = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UtDeleteLocalCaches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_StringCacheList, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_StringCacheList, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_StringCacheList, align 8
  %11 = call i32 @ACPI_FREE(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** @AslGbl_StringCacheList, align 8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %3

15:                                               ; preds = %3
  %16 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %17 = load i64, i64* @AslGbl_StringCount, align 8
  %18 = load i32, i32* @AslGbl_StringSize, align 4
  %19 = load i32, i32* @ASL_STRING_CACHE_SIZE, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @DbgPrint(i32 %16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* @AslGbl_StringSize, align 4
  store i64 0, i64* @AslGbl_StringCount, align 8
  store i32* null, i32** @AslGbl_StringCacheNext, align 8
  store i32* null, i32** @AslGbl_StringCacheLast, align 8
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %25, %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_ParseOpCacheList, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_ParseOpCacheList, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %2, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_ParseOpCacheList, align 8
  %30 = call i32 @ACPI_FREE(%struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** @AslGbl_ParseOpCacheList, align 8
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %36 = load i64, i64* @AslGbl_ParseOpCount, align 8
  %37 = load i32, i32* @ASL_PARSEOP_CACHE_SIZE, align 4
  %38 = load i32, i32* @ASL_PARSEOP_CACHE_SIZE, align 4
  %39 = mul nsw i32 4, %38
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @DbgPrint(i32 %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %36, i32 %37, i32 %39, i32 %40)
  store i64 0, i64* @AslGbl_ParseOpCount, align 8
  store i32* null, i32** @AslGbl_ParseOpCacheNext, align 8
  store i32* null, i32** @AslGbl_ParseOpCacheLast, align 8
  store i32* null, i32** @AslGbl_ParseTreeRoot, align 8
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %45, %34
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_FieldCacheList, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_FieldCacheList, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %2, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_FieldCacheList, align 8
  %50 = call i32 @ACPI_FREE(%struct.TYPE_7__* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** @AslGbl_FieldCacheList, align 8
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %56 = load i64, i64* @AslGbl_FieldCount, align 8
  %57 = load i32, i32* @ASL_FIELD_CACHE_SIZE, align 4
  %58 = load i32, i32* @ASL_FIELD_CACHE_SIZE, align 4
  %59 = mul nsw i32 4, %58
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @DbgPrint(i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %56, i32 %57, i32 %59, i32 %60)
  store i64 0, i64* @AslGbl_FieldCount, align 8
  store i32* null, i32** @AslGbl_FieldCacheNext, align 8
  store i32* null, i32** @AslGbl_FieldCacheLast, align 8
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %65, %54
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_SubtableCacheList, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_SubtableCacheList, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %2, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_SubtableCacheList, align 8
  %70 = call i32 @ACPI_FREE(%struct.TYPE_7__* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** @AslGbl_SubtableCacheList, align 8
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %62

74:                                               ; preds = %62
  %75 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %76 = load i64, i64* @AslGbl_SubtableCount, align 8
  %77 = load i32, i32* @ASL_SUBTABLE_CACHE_SIZE, align 4
  %78 = load i32, i32* @ASL_SUBTABLE_CACHE_SIZE, align 4
  %79 = mul nsw i32 4, %78
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @DbgPrint(i32 %75, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %76, i32 %77, i32 %79, i32 %80)
  store i64 0, i64* @AslGbl_SubtableCount, align 8
  store i32* null, i32** @AslGbl_SubtableCacheNext, align 8
  store i32* null, i32** @AslGbl_SubtableCacheLast, align 8
  ret void
}

declare dso_local i32 @ACPI_FREE(%struct.TYPE_7__*) #1

declare dso_local i32 @DbgPrint(i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
