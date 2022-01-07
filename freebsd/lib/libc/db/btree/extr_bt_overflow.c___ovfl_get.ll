; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_overflow.c___ovfl_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_overflow.c___ovfl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@RET_ERROR = common dso_local global i32 0, align 4
@BTDATAOFF = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@P_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ovfl_get(%struct.TYPE_7__* %0, i8* %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = bitcast i64* %13 to i8*
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @memmove(i8* %17, i8* %18, i64 8)
  %20 = bitcast i64* %16 to i8*
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = call i32 @memmove(i8* %20, i8* %22, i64 8)
  %24 = load i64, i64* %16, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %16, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %5
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %16, align 8
  %34 = call i8* @reallocf(i8* %32, i64 %33)
  %35 = load i8**, i8*** %10, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %10, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @RET_ERROR, align 4
  store i32 %40, i32* %6, align 4
  br label %94

41:                                               ; preds = %30
  %42 = load i64, i64* %16, align 8
  %43 = load i64*, i64** %11, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %5
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BTDATAOFF, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %15, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %8, align 8
  br label %53

53:                                               ; preds = %85, %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %13, align 8
  %58 = call %struct.TYPE_6__* @mpool_get(i32 %56, i64 %57, i32 0)
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %12, align 8
  %59 = icmp eq %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @RET_ERROR, align 4
  store i32 %61, i32* %6, align 4
  br label %94

62:                                               ; preds = %53
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @MIN(i64 %63, i64 %64)
  store i64 %65, i64* %14, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %68 = bitcast %struct.TYPE_6__* %67 to i8*
  %69 = load i32, i32* @BTDATAOFF, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @memmove(i8* %66, i8* %71, i64 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = call i32 @mpool_put(i32 %76, %struct.TYPE_6__* %77, i32 0)
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %16, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %16, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %62
  br label %92

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %8, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %13, align 8
  br label %53

92:                                               ; preds = %83
  %93 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %60, %39
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local %struct.TYPE_6__* @mpool_get(i32, i64, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
