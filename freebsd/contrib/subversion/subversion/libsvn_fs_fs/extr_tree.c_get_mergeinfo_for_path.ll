; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_mergeinfo_for_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_mergeinfo_for_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__**, %struct.TYPE_15__*, i8*, i32, i64, i32*, i32*)* @get_mergeinfo_for_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_mergeinfo_for_path(%struct.TYPE_14__** %0, %struct.TYPE_15__* %1, i8* %2, i32 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %15, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %17, align 8
  %25 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i64, i64* %12, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i8* @mergeinfo_cache_key(i8* %26, %struct.TYPE_15__* %27, i32 %28, i64 %29, i32* %30)
  store i8* %31, i8** %16, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %7
  %37 = bitcast %struct.TYPE_14__** %18 to i8**
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @svn_cache__get(i8** %37, i64* %17, i64 %40, i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* %17, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %36
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 49
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %57 = bitcast %struct.TYPE_14__** %56 to i8**
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @svn_cache__get(i8** %57, i64* %17, i64 %60, i8* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  br label %65

65:                                               ; preds = %55, %47, %36
  br label %66

66:                                               ; preds = %65, %7
  %67 = load i64, i64* %17, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %114, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i64, i64* %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @get_mergeinfo_for_path_internal(%struct.TYPE_14__** %70, %struct.TYPE_15__* %71, i8* %72, i32 %73, i64 %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %69
  %84 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = icmp ne %struct.TYPE_14__* %85, null
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %89 = load i32*, i32** %14, align 8
  %90 = call %struct.TYPE_14__* @svn_stringbuf_create(i8* %88, i32* %89)
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %18, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @svn_cache__set(i64 %93, i8* %94, %struct.TYPE_14__* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %83
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @svn_cache__set(i64 %105, i8* %106, %struct.TYPE_14__* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %112

112:                                              ; preds = %102, %83
  br label %113

113:                                              ; preds = %112, %69
  br label %114

114:                                              ; preds = %113, %66
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %115
}

declare dso_local i8* @mergeinfo_cache_key(i8*, %struct.TYPE_15__*, i32, i64, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i64, i8*, i32*) #1

declare dso_local i32 @get_mergeinfo_for_path_internal(%struct.TYPE_14__**, %struct.TYPE_15__*, i8*, i32, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_cache__set(i64, i8*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
