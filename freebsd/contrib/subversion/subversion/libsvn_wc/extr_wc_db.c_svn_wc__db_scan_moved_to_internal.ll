; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_moved_to_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_moved_to_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@STMT_SELECT_OP_DEPTH_MOVED_TO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Node '%s' is not shadowed\00", align 1
@STMT_SELECT_DEPTH_NODE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_scan_moved_to_internal(i8** %0, i8** %1, i8** %2, %struct.TYPE_4__* %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i8*, i8** %14, align 8
  store i8* %23, i8** %21, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @SVN_ERR_ASSERT(i8 signext %26)
  %28 = load i8**, i8*** %10, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i8**, i8*** %10, align 8
  store i8* null, i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %8
  %33 = load i8**, i8*** %11, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8**, i8*** %11, align 8
  store i8* null, i8** %36, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8**, i8*** %12, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8**, i8*** %12, align 8
  store i8* null, i8** %41, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @STMT_SELECT_OP_DEPTH_MOVED_TO, align 4
  %47 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %45, i32 %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %18, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %21, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @svn_sqlite__bindf(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %18, align 8
  %58 = call i32 @svn_sqlite__step(i64* %19, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* %19, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %42
  %63 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %64 = load i32*, i32** %18, align 8
  %65 = call i32 @svn_sqlite__reset(i32* %64)
  %66 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @path_for_error_message(%struct.TYPE_4__* %67, i8* %68, i32* %69)
  %71 = call i32* @svn_error_createf(i32 %63, i32 %65, i32 %66, i32 %70)
  store i32* %71, i32** %9, align 8
  br label %157

72:                                               ; preds = %42
  %73 = load i32*, i32** %18, align 8
  %74 = call i32 @svn_sqlite__column_int(i32* %73, i32 0)
  store i32 %74, i32* %20, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i8* @svn_sqlite__column_text(i32* %75, i32 1, i32* %76)
  store i8* %77, i8** %22, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @svn_sqlite__reset(i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %122, %72
  %82 = load i8*, i8** %22, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %19, align 8
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ false, %81 ], [ %86, %84 ]
  br i1 %88, label %89, label %126

89:                                               ; preds = %87
  %90 = load i8*, i8** %21, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = call i8* @svn_relpath_dirname(i8* %90, i32* %91)
  store i8* %92, i8** %21, align 8
  %93 = load i8*, i8** %21, align 8
  %94 = call i32 @relpath_depth(i8* %93)
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %126

98:                                               ; preds = %89
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @STMT_SELECT_DEPTH_NODE, align 4
  %103 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %101, i32 %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32*, i32** %18, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %21, align 8
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @svn_sqlite__bindf(i32* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %108, i8* %109, i32 %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** %18, align 8
  %114 = call i32 @svn_sqlite__step(i64* %19, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i64, i64* %19, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %98
  %119 = load i32*, i32** %18, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = call i8* @svn_sqlite__column_text(i32* %119, i32 13, i32* %120)
  store i8* %121, i8** %22, align 8
  br label %122

122:                                              ; preds = %118, %98
  %123 = load i32*, i32** %18, align 8
  %124 = call i32 @svn_sqlite__reset(i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %81

126:                                              ; preds = %97, %87
  %127 = load i8*, i8** %22, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %155

129:                                              ; preds = %126
  %130 = load i8**, i8*** %10, align 8
  %131 = icmp ne i8** %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32*, i32** %16, align 8
  %134 = load i8*, i8** %21, align 8
  %135 = call i8* @apr_pstrdup(i32* %133, i8* %134)
  %136 = load i8**, i8*** %10, align 8
  store i8* %135, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i8**, i8*** %11, align 8
  %139 = icmp ne i8** %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32*, i32** %16, align 8
  %142 = load i8*, i8** %22, align 8
  %143 = call i8* @apr_pstrdup(i32* %141, i8* %142)
  %144 = load i8**, i8*** %11, align 8
  store i8* %143, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i8**, i8*** %12, align 8
  %147 = icmp ne i8** %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i8*, i8** %14, align 8
  %150 = load i32, i32* %20, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = call i8* @svn_relpath_prefix(i8* %149, i32 %150, i32* %151)
  %153 = load i8**, i8*** %12, align 8
  store i8* %152, i8** %153, align 8
  br label %154

154:                                              ; preds = %148, %145
  br label %155

155:                                              ; preds = %154, %126
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %9, align 8
  br label %157

157:                                              ; preds = %155, %62
  %158 = load i32*, i32** %9, align 8
  ret i32* %158
}

declare dso_local i32 @SVN_ERR_ASSERT(i8 signext) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_relpath_prefix(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
