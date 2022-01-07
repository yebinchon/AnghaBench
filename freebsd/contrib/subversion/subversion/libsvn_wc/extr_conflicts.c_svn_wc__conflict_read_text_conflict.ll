; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_read_text_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_read_text_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@SVN_WC__CONFLICT_KIND_TEXT = common dso_local global i32 0, align 4
@SVN_ERR_WC_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Conflict not set\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_read_text_conflict(i8** %0, i8** %1, i8** %2, i32* %3, i8* %4, %struct.TYPE_9__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %24 = load i32, i32* @SVN_WC__CONFLICT_KIND_TEXT, align 4
  %25 = call i32 @conflict__get_conflict(%struct.TYPE_9__** %18, %struct.TYPE_9__* %23, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @SVN_ERR_WC_MISSING, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = call i32* @svn_error_create(i32 %30, i32* null, i32 %31)
  store i32* %32, i32** %9, align 8
  br label %132

33:                                               ; preds = %8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %19, align 8
  %41 = load i8**, i8*** %11, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %33
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load i32*, i32** %17, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @apr_pstrmemdup(i32* %49, i32 %52, i32 %55)
  store i8* %56, i8** %20, align 8
  %57 = load i8**, i8*** %11, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i8*, i8** %20, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @svn_wc__db_from_relpath(i8** %57, i32* %58, i8* %59, i8* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  br label %67

65:                                               ; preds = %43
  %66 = load i8**, i8*** %11, align 8
  store i8* null, i8** %66, align 8
  br label %67

67:                                               ; preds = %65, %48
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %19, align 8
  %72 = load i8**, i8*** %10, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @apr_pstrmemdup(i32* %80, i32 %83, i32 %86)
  store i8* %87, i8** %21, align 8
  %88 = load i8**, i8*** %10, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load i8*, i8** %21, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @svn_wc__db_from_relpath(i8** %88, i32* %89, i8* %90, i8* %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  br label %98

96:                                               ; preds = %74
  %97 = load i8**, i8*** %10, align 8
  store i8* null, i8** %97, align 8
  br label %98

98:                                               ; preds = %96, %79
  br label %99

99:                                               ; preds = %98, %68
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %19, align 8
  %103 = load i8**, i8*** %12, align 8
  %104 = icmp ne i8** %103, null
  br i1 %104, label %105, label %130

105:                                              ; preds = %99
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load i32*, i32** %17, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @apr_pstrmemdup(i32* %111, i32 %114, i32 %117)
  store i8* %118, i8** %22, align 8
  %119 = load i8**, i8*** %12, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @svn_wc__db_from_relpath(i8** %119, i32* %120, i8* %121, i8* %122, i32* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  br label %129

127:                                              ; preds = %105
  %128 = load i8**, i8*** %12, align 8
  store i8* null, i8** %128, align 8
  br label %129

129:                                              ; preds = %127, %110
  br label %130

130:                                              ; preds = %129, %99
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %131, i32** %9, align 8
  br label %132

132:                                              ; preds = %130, %29
  %133 = load i32*, i32** %9, align 8
  ret i32* %133
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_conflict(%struct.TYPE_9__**, %struct.TYPE_9__*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
