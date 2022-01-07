; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@svn_node_unknown = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_base_deleted = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@kind_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_read_kind(i8** %0, i32* %1, i8* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i8** %0, i8*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @svn_dirent_is_absolute(i8* %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__** %16, i8** %17, i32* %26, i8* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %33 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %38 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %36, i32 %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %18, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %17, align 8
  %45 = call i32 @svn_sqlite__bindf(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %18, align 8
  %48 = call i32 @svn_sqlite__step(i64* %19, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i64, i64* %19, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %7
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i8*, i8** @svn_node_unknown, align 8
  %57 = load i8**, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = call i32 @svn_sqlite__reset(i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %8, align 8
  br label %155

62:                                               ; preds = %52
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @svn_sqlite__reset(i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @path_for_error_message(%struct.TYPE_5__* %68, i8* %69, i32* %70)
  %72 = call i32* @svn_error_createf(i32 %66, i32* null, i32 %67, i32 %71)
  store i32* %72, i32** %8, align 8
  br label %155

73:                                               ; preds = %7
  %74 = load i32*, i32** %18, align 8
  %75 = load i32, i32* @presence_map, align 4
  %76 = call i8* @svn_sqlite__column_token(i32* %74, i32 3, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %20, align 4
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* @svn_wc__db_status_base_deleted, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @svn_sqlite__step(i64* %19, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i64, i64* %19, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load i8*, i8** @svn_node_none, align 8
  %92 = load i8**, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = call i32 @svn_sqlite__reset(i32* %93)
  %95 = call i32* @svn_error_trace(i32 %94)
  store i32* %95, i32** %8, align 8
  br label %155

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %80, %73
  %98 = load i64, i64* %13, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %14, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %147, label %103

103:                                              ; preds = %100, %97
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @svn_sqlite__column_int(i32* %104, i32 0)
  store i32 %105, i32* %21, align 4
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %22, align 8
  %107 = load i32, i32* %21, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @convert_to_working_status(i32* %20, i32 %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %20, align 4
  switch i32 %114, label %136 [
    i32 129, label %115
    i32 130, label %124
    i32 128, label %124
    i32 131, label %130
  ]

115:                                              ; preds = %113
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118, %115
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %22, align 8
  br label %123

123:                                              ; preds = %121, %118
  br label %137

124:                                              ; preds = %113, %113
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* @TRUE, align 8
  store i64 %128, i64* %22, align 8
  br label %129

129:                                              ; preds = %127, %124
  br label %137

130:                                              ; preds = %113
  %131 = load i64, i64* %13, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load i64, i64* @TRUE, align 8
  store i64 %134, i64* %22, align 8
  br label %135

135:                                              ; preds = %133, %130
  br label %137

136:                                              ; preds = %113
  br label %137

137:                                              ; preds = %136, %135, %129, %123
  %138 = load i64, i64* %22, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i8*, i8** @svn_node_none, align 8
  %142 = load i8**, i8*** %9, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = call i32 @svn_sqlite__reset(i32* %143)
  %145 = call i32* @svn_error_trace(i32 %144)
  store i32* %145, i32** %8, align 8
  br label %155

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %100
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* @kind_map, align 4
  %150 = call i8* @svn_sqlite__column_token(i32* %148, i32 4, i32 %149)
  %151 = load i8**, i8*** %9, align 8
  store i8* %150, i8** %151, align 8
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @svn_sqlite__reset(i32* %152)
  %154 = call i32* @svn_error_trace(i32 %153)
  store i32* %154, i32** %8, align 8
  br label %155

155:                                              ; preds = %147, %140, %90, %62, %55
  %156 = load i32*, i32** %8, align 8
  ret i32* %156
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i8* @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @convert_to_working_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
