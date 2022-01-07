; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@SVN_CONFIG_SECTION_WORKING_COPY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE = common dso_local global i32 0, align 4
@SDB_FILE = common dso_local global i32 0, align 4
@FORMAT_FROM_SDB = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_init(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @svn_dirent_is_absolute(i8* %26)
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* @svn_depth_empty, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %8
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* @svn_depth_files, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @svn_depth_immediates, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @svn_depth_infinity, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %40, %36, %8
  %49 = phi i1 [ true, %40 ], [ true, %36 ], [ true, %8 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @SVN_ERR_ASSERT(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SVN_CONFIG_SECTION_WORKING_COPY, align 4
  %56 = load i32, i32* @SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @svn_config_get_bool(i32 %54, i32* %21, i32 %55, i32 %56, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* @SDB_FILE, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i64, i64* %15, align 8
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @create_db(i32** %17, i32* %18, i32* %19, i8* %60, i8* %61, i8* %62, i32 %63, i8* %64, i32 %65, i64 %66, i32 %67, i32 %68, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @apr_pstrdup(i32 %77, i8* %78)
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @FORMAT_FROM_SDB, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @svn_wc__db_pdh_create_wcroot(%struct.TYPE_6__** %20, i32 %79, i32* %80, i32 %81, i32 %82, i32 %83, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %16, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @apr_hash_first(i32* %90, i32 %93)
  store i32* %94, i32** %23, align 8
  br label %95

95:                                               ; preds = %114, %48
  %96 = load i32*, i32** %23, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load i32*, i32** %23, align 8
  %100 = call i8* @apr_hash_this_key(i32* %99)
  store i8* %100, i8** %24, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %24, align 8
  %105 = call i64 @svn_dirent_is_ancestor(i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %24, align 8
  %112 = call i32 @svn_hash_sets(i32 %110, i8* %111, %struct.TYPE_6__* null)
  br label %113

113:                                              ; preds = %107, %98
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %23, align 8
  %116 = call i32* @apr_hash_next(i32* %115)
  store i32* %116, i32** %23, align 8
  br label %95

117:                                              ; preds = %95
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %125 = call i32 @svn_hash_sets(i32 %120, i8* %123, %struct.TYPE_6__* %124)
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %126
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_get_bool(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @create_db(i32**, i32*, i32*, i8*, i8*, i8*, i32, i8*, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_pdh_create_wcroot(%struct.TYPE_6__**, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
