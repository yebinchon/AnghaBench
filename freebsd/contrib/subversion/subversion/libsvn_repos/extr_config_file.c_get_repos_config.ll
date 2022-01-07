; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_file.c_get_repos_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_file.c_get_repos_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@svn_node_file = common dso_local global i64 0, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, %struct.TYPE_4__*, i8*, i32, i32*)* @get_repos_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_repos_config(i32** %0, i32** %1, %struct.TYPE_4__* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @svn_uri_get_dirent_from_file_url(i8** %18, i8* %21, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %6
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i8* @svn_repos_path(i32* %34, i32* %35)
  store i8* %36, i8** %20, align 8
  %37 = load i8*, i8** %20, align 8
  %38 = call i32 @svn_dirent_is_absolute(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load i8*, i8** %20, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @svn_dirent_get_absolute(i8** %20, i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  br label %45

45:                                               ; preds = %40, %31
  %46 = load i8*, i8** %20, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = call i32 @svn_dirent_is_ancestor(i8* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %6
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %18, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i8* @svn_repos_find_root_path(i8* %60, i32* %61)
  store i8* %62, i8** %20, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %20, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @svn_repos_open3(i32** %64, i8* %65, i32* null, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %59, %54
  %73 = load i8*, i8** %18, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8* %76, i8** %19, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32* @svn_repos_fs(i32* %79)
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @svn_fs_youngest_rev(i32* %16, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @svn_fs_revision_root(i32** %15, i32* %85, i32 %86, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %15, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @svn_fs_check_path(i64* %17, i32* %92, i8* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* @svn_node_file, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %72
  %101 = load i32**, i32*** %8, align 8
  %102 = load i32**, i32*** %9, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i64, i64* %17, align 8
  %107 = call i32 @handle_missing_file(i32** %101, i32** %102, %struct.TYPE_4__* %103, i8* %104, i32 %105, i64 %106)
  %108 = call i32* @svn_error_trace(i32 %107)
  store i32* %108, i32** %7, align 8
  br label %128

109:                                              ; preds = %72
  %110 = load i32**, i32*** %9, align 8
  %111 = load i32, i32* @svn_checksum_md5, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @svn_fs_file_checksum(i32** %110, i32 %111, i32* %112, i8* %113, i32 %114, i32 %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32*, i32** %15, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32* @representation_stream(i32* %120, i8* %121, i32 %124)
  %126 = load i32**, i32*** %8, align 8
  store i32* %125, i32** %126, align 8
  %127 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %127, i32** %7, align 8
  br label %128

128:                                              ; preds = %109, %100
  %129 = load i32*, i32** %7, align 8
  ret i32* %129
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_uri_get_dirent_from_file_url(i8**, i8*, i32) #1

declare dso_local i8* @svn_repos_path(i32*, i32*) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_repos_find_root_path(i8*, i32*) #1

declare dso_local i32 @svn_repos_open3(i32**, i8*, i32*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @svn_repos_fs(i32*) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @handle_missing_file(i32**, i32**, %struct.TYPE_4__*, i8*, i32, i64) #1

declare dso_local i32 @svn_fs_file_checksum(i32**, i32, i32*, i8*, i32, i32) #1

declare dso_local i32* @representation_stream(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
