; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_add_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"option name/str value pair\00", align 1
@OPARG_TYPE_NONE = common dso_local global i32 0, align 4
@OPARG_TYPE_STRING = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8**, i8*, i64, i8*, i64)* @add_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @add_string(i8** %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = add i64 %17, %18
  %20 = add i64 %19, 24
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call %struct.TYPE_7__* @AGALOC(i64 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %11, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load i32, i32* @OPARG_TYPE_NONE, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  br label %96

35:                                               ; preds = %5
  %36 = load i32, i32* @OPARG_TYPE_STRING, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %13, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %14, align 8
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %70, %41
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %13, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = and i32 %54, 255
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @NUL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %75

60:                                               ; preds = %50
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 38
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @get_special_char(i8** %13, i32* %15)
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %16, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %14, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %15, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %50, label %74

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i32, i32* @NUL, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %14, align 8
  store i8 %77, i8* %78, align 1
  br label %86

79:                                               ; preds = %35
  %80 = load i32, i32* @NUL, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %75
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  br label %96

96:                                               ; preds = %86, %25
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @memcpy(i32* %99, i8* %100, i64 %101)
  %103 = load i32, i32* @NUL, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i8**, i8*** %6, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = call i32 @addArgListEntry(i8** %109, %struct.TYPE_7__* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %112
}

declare dso_local %struct.TYPE_7__* @AGALOC(i64, i8*) #1

declare dso_local i32 @get_special_char(i8**, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @addArgListEntry(i8**, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
