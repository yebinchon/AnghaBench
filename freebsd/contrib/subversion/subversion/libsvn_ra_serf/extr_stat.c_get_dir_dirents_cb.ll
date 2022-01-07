; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_get_dir_dirents_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_get_dir_dirents_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.get_dir_baton_t = type { i64, i32, i32, i32, i32 }
%struct.fill_dirent_baton_t = type { i32*, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"resourcetype\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Can't get properties of non-directory\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, %struct.TYPE_4__*, i32*)* @get_dir_dirents_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dir_dirents_cb(i8* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_4__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.get_dir_baton_t*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.fill_dirent_baton_t, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.get_dir_baton_t*
  store %struct.get_dir_baton_t* %18, %struct.get_dir_baton_t** %14, align 8
  %19 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %20 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @svn_fspath__skip_ancestor(i32 %21, i8* %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %77

26:                                               ; preds = %6
  %27 = load i8*, i8** %15, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load i8*, i8** %15, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i8* @svn_path_uri_decode(i8* %33, i32* %34)
  store i8* %35, i8** %15, align 8
  %36 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %37 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = call i64 @svn_hash_gets(i32 %38, i8* %39)
  %41 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %16, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %16, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %32
  %46 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %47 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @svn_dirent_create(i32 %48)
  %50 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %16, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  %51 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %52 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %55 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @apr_pstrdup(i32 %56, i8* %57)
  %59 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %16, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @svn_hash_sets(i32 %53, i32 %58, i64 %60)
  br label %62

62:                                               ; preds = %45, %32
  %63 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %64 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %16, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %68 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %16, i32 0, i32 0
  store i32* %68, i32** %69, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @fill_dirent_propfunc(%struct.fill_dirent_baton_t* %16, i8* %70, i8* %71, i8* %72, %struct.TYPE_4__* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %110

77:                                               ; preds = %26, %6
  %78 = load i8*, i8** %15, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %82 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %10, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %102 = call i32* @svn_error_create(i32 %100, i32* null, i32 %101)
  store i32* %102, i32** %7, align 8
  br label %112

103:                                              ; preds = %93
  %104 = load i64, i64* @TRUE, align 8
  %105 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %106 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %89, %85
  br label %109

109:                                              ; preds = %108, %80, %77
  br label %110

110:                                              ; preds = %109, %62
  %111 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %111, i32** %7, align 8
  br label %112

112:                                              ; preds = %110, %99
  %113 = load i32*, i32** %7, align 8
  ret i32* %113
}

declare dso_local i8* @svn_fspath__skip_ancestor(i32, i8*) #1

declare dso_local i8* @svn_path_uri_decode(i8*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32, i8*) #1

declare dso_local i64 @svn_dirent_create(i32) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i64) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @fill_dirent_propfunc(%struct.fill_dirent_baton_t*, i8*, i8*, i8*, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
