; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_string_table.c_svn_fs_x__string_table_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_string_table.c_svn_fs_x__string_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i8* }

@TABLE_SHIFT = common dso_local global i64 0, align 8
@STRING_INDEX_MASK = common dso_local global i64 0, align 8
@LONG_STRING_MASK = common dso_local global i64 0, align 8
@PADDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_fs_x__string_table_get(%struct.TYPE_9__* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @TABLE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @STRING_INDEX_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %111

27:                                               ; preds = %4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %31
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %12, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @LONG_STRING_MASK, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %27
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load i64*, i64** %8, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @apr_pstrmemdup(i32* %56, i8* %63, i64 %70)
  store i8* %71, i8** %5, align 8
  br label %114

72:                                               ; preds = %37
  br label %110

73:                                               ; preds = %27
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %83
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %13, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %87, %90
  store i64 %91, i64* %14, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @PADDING, align 8
  %95 = add i64 %93, %94
  %96 = call i8* @apr_palloc(i32* %92, i64 %95)
  store i8* %96, i8** %15, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %79
  %100 = load i64, i64* %14, align 8
  %101 = load i64*, i64** %8, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %79
  %103 = load i8*, i8** %15, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %107 = call i32 @table_copy_string(i8* %103, i64 %104, %struct.TYPE_10__* %105, %struct.TYPE_11__* %106)
  %108 = load i8*, i8** %15, align 8
  store i8* %108, i8** %5, align 8
  br label %114

109:                                              ; preds = %73
  br label %110

110:                                              ; preds = %109, %72
  br label %111

111:                                              ; preds = %110, %4
  %112 = load i32*, i32** %9, align 8
  %113 = call i8* @apr_pstrmemdup(i32* %112, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 0)
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %111, %102, %55
  %115 = load i8*, i8** %5, align 8
  ret i8* %115
}

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i64) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32 @table_copy_string(i8*, i64, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
