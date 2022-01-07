; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_upgrade.c_svn_client_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_upgrade.c_svn_client_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32, %struct.TYPE_8__*, i32*)*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.repos_info_baton = type { i32*, i32*, %struct.TYPE_9__*, i32* }

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1
@fetch_repos_info = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc_notify_failed_external = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_upgrade(i8* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.repos_info_baton, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %10, i32 0, i32 3
  store i32* %17, i32** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %10, i32 0, i32 2
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %20, align 8
  %21 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %10, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %10, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @svn_path_is_url(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %28 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %5, align 8
  %30 = call i32* @svn_error_createf(i32 %27, i32* null, i32 %28, i8* %29)
  store i32* %30, i32** %4, align 8
  br label %136

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @svn_dirent_get_absolute(i8** %8, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @fetch_repos_info, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @svn_wc_upgrade(i32 %38, i8* %39, i32 %40, %struct.repos_info_baton* %10, i32 %43, i32 %46, i32 (i32, %struct.TYPE_8__*, i32*)* %49, i32 %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @svn_wc__externals_defined_below(i32** %9, i32 %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @apr_hash_count(i32* %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %128

67:                                               ; preds = %31
  %68 = load i32*, i32** %7, align 8
  %69 = call i32* @svn_pool_create(i32* %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32* @apr_hash_first(i32* %70, i32* %71)
  store i32* %72, i32** %12, align 8
  br label %73

73:                                               ; preds = %122, %67
  %74 = load i32*, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %125

76:                                               ; preds = %73
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @svn_pool_clear(i32* %77)
  %79 = load i32*, i32** %12, align 8
  %80 = call i8* @apr_hash_this_key(i32* %79)
  store i8* %80, i8** %13, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @svn_wc__read_external_info(i64* %14, i32* null, i32* null, i32* null, i32* null, i32 %83, i8* %84, i8* %85, i32 %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @svn_node_dir, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %76
  %95 = load i8*, i8** %13, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32* @svn_client_upgrade(i8* %95, %struct.TYPE_9__* %96, i32* %97)
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %94
  %102 = load i8*, i8** %13, align 8
  %103 = load i32, i32* @svn_wc_notify_failed_external, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = call %struct.TYPE_8__* @svn_wc_create_notify(i8* %102, i32 %103, i32* %104)
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %16, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 %111(i32 %114, %struct.TYPE_8__* %115, i32* %116)
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @svn_error_clear(i32* %118)
  br label %120

120:                                              ; preds = %101, %94
  br label %121

121:                                              ; preds = %120, %76
  br label %122

122:                                              ; preds = %121
  %123 = load i32*, i32** %12, align 8
  %124 = call i32* @apr_hash_next(i32* %123)
  store i32* %124, i32** %12, align 8
  br label %73

125:                                              ; preds = %73
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @svn_pool_destroy(i32* %126)
  br label %134

128:                                              ; preds = %31
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @upgrade_externals_from_properties(%struct.TYPE_9__* %129, i8* %130, %struct.repos_info_baton* %10, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %135, i32** %4, align 8
  br label %136

136:                                              ; preds = %134, %26
  %137 = load i32*, i32** %4, align 8
  ret i32* %137
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_upgrade(i32, i8*, i32, %struct.repos_info_baton*, i32, i32, i32 (i32, %struct.TYPE_8__*, i32*)*, i32, i32*) #1

declare dso_local i32 @svn_wc__externals_defined_below(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_wc__read_external_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @upgrade_externals_from_properties(%struct.TYPE_9__*, i8*, %struct.repos_info_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
