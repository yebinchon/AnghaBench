; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@STMT_SELECT_EXTERNAL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@presence_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"The node '%s' is not an external.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_external_read(i8** %0, i8** %1, i8** %2, i8** %3, i8** %4, i8** %5, i32* %6, i32* %7, i32* %8, i8* %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_5__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  store i8** %0, i8*** %14, align 8
  store i8** %1, i8*** %15, align 8
  store i8** %2, i8*** %16, align 8
  store i8** %3, i8*** %17, align 8
  store i8** %4, i8*** %18, align 8
  store i8** %5, i8*** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  store i32* null, i32** %31, align 8
  %34 = load i8*, i8** %23, align 8
  %35 = call i32 @svn_dirent_is_absolute(i8* %34)
  %36 = call i32 @SVN_ERR_ASSERT(i32 %35)
  %37 = load i8*, i8** %24, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %13
  %40 = load i8*, i8** %23, align 8
  %41 = load i32*, i32** %26, align 8
  %42 = call i8* @svn_dirent_dirname(i8* %40, i32* %41)
  store i8* %42, i8** %24, align 8
  br label %43

43:                                               ; preds = %39, %13
  %44 = load i32*, i32** %22, align 8
  %45 = load i8*, i8** %24, align 8
  %46 = load i32*, i32** %26, align 8
  %47 = load i32*, i32** %26, align 8
  %48 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__** %27, i8** %28, i32* %44, i8* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %51 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %23, align 8
  %56 = call i32 @svn_dirent_is_ancestor(i32 %54, i8* %55)
  %57 = call i32 @SVN_ERR_ASSERT(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %23, align 8
  %62 = call i8* @svn_dirent_skip_ancestor(i32 %60, i8* %61)
  store i8* %62, i8** %28, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @STMT_SELECT_EXTERNAL_INFO, align 4
  %67 = call i32 @svn_sqlite__get_statement(i32** %29, i32 %65, i32 %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %29, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %28, align 8
  %74 = call i32 @svn_sqlite__bindf(i32* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %72, i8* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %29, align 8
  %77 = call i32 @svn_sqlite__step(i64* %30, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i64, i64* %30, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %150

81:                                               ; preds = %43
  %82 = load i8**, i8*** %14, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32*, i32** %29, align 8
  %86 = load i32, i32* @presence_map, align 4
  %87 = call i8* @svn_sqlite__column_token(i32* %85, i32 0, i32 %86)
  %88 = load i8**, i8*** %14, align 8
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i8**, i8*** %15, align 8
  %91 = icmp ne i8** %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32*, i32** %29, align 8
  %94 = load i32, i32* @kind_map, align 4
  %95 = call i8* @svn_sqlite__column_token(i32* %93, i32 1, i32 %94)
  %96 = load i8**, i8*** %15, align 8
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i8**, i8*** %16, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32*, i32** %29, align 8
  %102 = call i8* @svn_sqlite__column_text(i32* %101, i32 2, i32* null)
  store i8* %102, i8** %32, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %32, align 8
  %107 = load i32*, i32** %25, align 8
  %108 = call i8* @svn_dirent_join(i32 %105, i8* %106, i32* %107)
  %109 = load i8**, i8*** %16, align 8
  store i8* %108, i8** %109, align 8
  br label %110

110:                                              ; preds = %100, %97
  %111 = load i8**, i8*** %17, align 8
  %112 = icmp ne i8** %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i8**, i8*** %18, align 8
  %115 = icmp ne i8** %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113, %110
  %117 = load i32*, i32** %29, align 8
  %118 = call i32 @svn_sqlite__column_int64(i32* %117, i32 3)
  store i32 %118, i32* %33, align 4
  %119 = load i32*, i32** %31, align 8
  %120 = load i8**, i8*** %17, align 8
  %121 = load i8**, i8*** %18, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %123 = load i32, i32* %33, align 4
  %124 = load i32*, i32** %25, align 8
  %125 = call i32 @svn_wc__db_fetch_repos_info(i8** %120, i8** %121, %struct.TYPE_5__* %122, i32 %123, i32* %124)
  %126 = call i32* @svn_error_compose_create(i32* %119, i32 %125)
  store i32* %126, i32** %31, align 8
  br label %127

127:                                              ; preds = %116, %113
  %128 = load i8**, i8*** %19, align 8
  %129 = icmp ne i8** %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32*, i32** %29, align 8
  %132 = load i32*, i32** %25, align 8
  %133 = call i8* @svn_sqlite__column_text(i32* %131, i32 4, i32* %132)
  %134 = load i8**, i8*** %19, align 8
  store i8* %133, i8** %134, align 8
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32*, i32** %20, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32*, i32** %29, align 8
  %140 = call i32 @svn_sqlite__column_revnum(i32* %139, i32 5)
  %141 = load i32*, i32** %20, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %135
  %143 = load i32*, i32** %21, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32*, i32** %29, align 8
  %147 = call i32 @svn_sqlite__column_revnum(i32* %146, i32 6)
  %148 = load i32*, i32** %21, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %142
  br label %157

150:                                              ; preds = %43
  %151 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %152 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i8*, i8** %23, align 8
  %154 = load i32*, i32** %26, align 8
  %155 = call i32 @svn_dirent_local_style(i8* %153, i32* %154)
  %156 = call i32* @svn_error_createf(i32 %151, i32* null, i32 %152, i32 %155)
  store i32* %156, i32** %31, align 8
  br label %157

157:                                              ; preds = %150, %149
  %158 = load i32*, i32** %31, align 8
  %159 = load i32*, i32** %29, align 8
  %160 = call i32 @svn_sqlite__reset(i32* %159)
  %161 = call i32* @svn_error_compose_create(i32* %158, i32 %160)
  %162 = call i32* @svn_error_trace(i32* %161)
  ret i32* %162
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__*) #1

declare dso_local i32 @svn_dirent_is_ancestor(i32, i8*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i8* @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i8**, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
