; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c__citrus_csmapper_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c__citrus_csmapper_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_csmapper = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@maparea = common dso_local global i32 0, align 4
@_PATH_CSMAPPER = common dso_local global i32 0, align 4
@CS_ALIAS = common dso_local global i32 0, align 4
@_LOOKUP_CASE_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@_CSMAPPER_F_PREVENT_PIVOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_csmapper_open(%struct._citrus_csmapper** noalias %0, i8* noalias %1, i8* noalias %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._citrus_csmapper**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct._citrus_csmapper** %0, %struct._citrus_csmapper*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %29 = load i32, i32* @PATH_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %35 = load i32, i32* @_PATH_CSMAPPER, align 4
  %36 = call i32 @_citrus_mapper_create_area(i32* @maparea, i32 %35)
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %20, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %121

41:                                               ; preds = %5
  %42 = load i32, i32* @CS_ALIAS, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = trunc i64 %23 to i32
  %45 = load i32, i32* @_LOOKUP_CASE_IGNORE, align 4
  %46 = call i8* @_lookup_alias(i32 %42, i8* %43, i8* %25, i32 %44, i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i32, i32* @CS_ALIAS, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = trunc i64 %27 to i32
  %50 = load i32, i32* @_LOOKUP_CASE_IGNORE, align 4
  %51 = call i8* @_lookup_alias(i32 %47, i8* %48, i8* %28, i32 %49, i32 %50)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @maparea, align 4
  %58 = load %struct._citrus_csmapper**, %struct._citrus_csmapper*** %7, align 8
  %59 = call i32 @get_none(i32 %57, %struct._citrus_csmapper** %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i64*, i64** %11, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i64*, i64** %11, align 8
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %65, %62, %56
  %68 = load i32, i32* %20, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %121

69:                                               ; preds = %41
  %70 = trunc i64 %30 to i32
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @snprintf(i8* %31, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %71, i8* %72)
  %74 = load i32, i32* @maparea, align 4
  %75 = load %struct._citrus_csmapper**, %struct._citrus_csmapper*** %7, align 8
  %76 = call i32 @_mapper_open(i32 %74, %struct._citrus_csmapper** %75, i8* %31)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i64*, i64** %11, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i64*, i64** %11, align 8
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %82, %79
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %121

85:                                               ; preds = %69
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* @ENOENT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @_CSMAPPER_F_PREVENT_PIVOT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %85
  %95 = load i32, i32* %20, align 4
  store i32 %95, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %121

96:                                               ; preds = %89
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = trunc i64 %33 to i32
  %100 = call i32 @find_best_pivot(i8* %97, i8* %98, i8* %34, i32 %99, i64* %19)
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %20, align 4
  store i32 %104, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %121

105:                                              ; preds = %96
  %106 = load i32, i32* @maparea, align 4
  %107 = load %struct._citrus_csmapper**, %struct._citrus_csmapper*** %7, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @open_serial_mapper(i32 %106, %struct._citrus_csmapper** %107, i8* %108, i8* %34, i8* %109)
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %20, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i64*, i64** %11, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i64, i64* %19, align 8
  %118 = load i64*, i64** %11, align 8
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %113, %105
  %120 = load i32, i32* %20, align 4
  store i32 %120, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %121

121:                                              ; preds = %119, %103, %94, %84, %67, %39
  %122 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_citrus_mapper_create_area(i32*, i32) #2

declare dso_local i8* @_lookup_alias(i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @get_none(i32, %struct._citrus_csmapper**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @_mapper_open(i32, %struct._citrus_csmapper**, i8*) #2

declare dso_local i32 @find_best_pivot(i8*, i8*, i8*, i32, i64*) #2

declare dso_local i32 @open_serial_mapper(i32, %struct._citrus_csmapper**, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
