; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_node_install_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_node_install_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"The node '%s' is not in working copy '%s'\00", align 1
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"The node '%s' is not installable\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_read_node_install_info(i8** %0, i32** %1, i32** %2, i32* %3, i32* %4, i8* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  store i8** %0, i8*** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i32** %2, i32*** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* null, i32** %23, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = call i32 @svn_dirent_is_absolute(i8* %25)
  %27 = call i32 @SVN_ERR_ASSERT(i32 %26)
  %28 = load i8*, i8** %17, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %9
  %31 = load i8*, i8** %16, align 8
  store i8* %31, i8** %17, align 8
  br label %32

32:                                               ; preds = %30, %9
  %33 = load i32*, i32** %15, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__** %20, i8** %21, i32* %33, i8* %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %40 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__* %39)
  %41 = load i8*, i8** %16, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %32
  %45 = load i8*, i8** %16, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @svn_dirent_is_ancestor(i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %16, align 8
  %60 = load i32*, i32** %19, align 8
  %61 = call i32 @svn_dirent_local_style(i8* %59, i32* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 @svn_dirent_local_style(i8* %64, i32* %65)
  %67 = call i32* (i32, i32, i32, i32, ...) @svn_error_createf(i32 %57, i32 0, i32 %58, i32 %61, i32 %66)
  store i32* %67, i32** %10, align 8
  br label %155

68:                                               ; preds = %49
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = call i8* @svn_dirent_skip_ancestor(i8* %71, i8* %72)
  store i8* %73, i8** %21, align 8
  br label %74

74:                                               ; preds = %68, %44, %32
  %75 = load i8**, i8*** %11, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32*, i32** %18, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @apr_pstrdup(i32* %78, i8* %81)
  %83 = load i8**, i8*** %11, align 8
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %77, %74
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %89 = call i32 @svn_sqlite__get_statement(i32** %22, i32 %87, i32 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %22, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = call i32 @svn_sqlite__bindf(i32* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %94, i8* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %22, align 8
  %99 = call i32 @svn_sqlite__step(i64* %24, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i64, i64* %24, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %84
  %104 = load i32**, i32*** %12, align 8
  %105 = icmp ne i32** %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32**, i32*** %12, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = call i32* @svn_sqlite__column_checksum(i32** %107, i32* %108, i32 6, i32* %109)
  store i32* %110, i32** %23, align 8
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32*, i32** %23, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %131, label %114

114:                                              ; preds = %111
  %115 = load i32**, i32*** %13, align 8
  %116 = icmp ne i32** %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load i32**, i32*** %13, align 8
  %119 = load i32*, i32** %22, align 8
  %120 = load i32*, i32** %18, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = call i32* @svn_sqlite__column_properties(i32** %118, i32* %119, i32 14, i32* %120, i32* %121)
  store i32* %122, i32** %23, align 8
  %123 = load i32**, i32*** %13, align 8
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i32*, i32** %18, align 8
  %128 = call i32* @apr_hash_make(i32* %127)
  %129 = load i32**, i32*** %13, align 8
  store i32* %128, i32** %129, align 8
  br label %130

130:                                              ; preds = %126, %117
  br label %131

131:                                              ; preds = %130, %114, %111
  %132 = load i32*, i32** %14, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32*, i32** %22, align 8
  %136 = call i32 @svn_sqlite__column_int64(i32* %135, i32 9)
  %137 = load i32*, i32** %14, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %131
  br label %148

139:                                              ; preds = %84
  %140 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %141 = load i32*, i32** %22, align 8
  %142 = call i32 @svn_sqlite__reset(i32* %141)
  %143 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i8*, i8** %16, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = call i32 @svn_dirent_local_style(i8* %144, i32* %145)
  %147 = call i32* (i32, i32, i32, i32, ...) @svn_error_createf(i32 %140, i32 %142, i32 %143, i32 %146)
  store i32* %147, i32** %10, align 8
  br label %155

148:                                              ; preds = %138
  %149 = load i32*, i32** %23, align 8
  %150 = load i32*, i32** %22, align 8
  %151 = call i32 @svn_sqlite__reset(i32* %150)
  %152 = call i32 @svn_error_compose_create(i32* %149, i32 %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %154, i32** %10, align 8
  br label %155

155:                                              ; preds = %148, %139, %56
  %156 = load i32*, i32** %10, align 8
  ret i32* %156
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_sqlite__column_checksum(i32**, i32*, i32, i32*) #1

declare dso_local i32* @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
