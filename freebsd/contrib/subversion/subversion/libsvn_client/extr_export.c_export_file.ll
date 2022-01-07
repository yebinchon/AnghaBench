; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i8*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file_baton = type { i8*, i32, i32*, i32, i32, i32, %struct.edit_baton* }

@TRUE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Destination file '%s' exists, and will not be overwritten unless forced\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Destination '%s' exists. Cannot overwrite directory with non-directory\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.edit_baton*, %struct.TYPE_3__*, i32*, i32, i32*)* @export_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @export_file(i8* %0, i8* %1, %struct.edit_baton* %2, %struct.TYPE_3__* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.file_baton*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %11, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = call %struct.file_baton* @apr_pcalloc(i32* %22, i32 48)
  store %struct.file_baton* %23, %struct.file_baton** %18, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @svn_path_is_url(i8* %24)
  %26 = call i32 @SVN_ERR_ASSERT(i32 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @svn_path_is_empty(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %7
  %31 = load i8*, i8** %9, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i8* @svn_uri_basename(i8* %31, i32* %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %36 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %46

37:                                               ; preds = %7
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @append_basename_if_dir(i8** %10, i8* %38, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %45 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @svn_io_check_path(i8* %47, i64* %19, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* @svn_node_file, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* @svn_node_unknown, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54, %46
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %63 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %64 = load i8*, i8** %10, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @svn_dirent_local_style(i8* %64, i32* %65)
  %67 = call i32* @svn_error_createf(i32 %62, i32* null, i32 %63, i32 %66)
  store i32* %67, i32** %8, align 8
  br label %156

68:                                               ; preds = %58, %54
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* @svn_node_dir, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i8*, i8** %10, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @svn_dirent_local_style(i8* %75, i32* %76)
  %78 = call i32* @svn_error_createf(i32 %73, i32* null, i32 %74, i32 %77)
  store i32* %78, i32** %8, align 8
  br label %156

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %82 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %83 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %82, i32 0, i32 6
  store %struct.edit_baton* %81, %struct.edit_baton** %83, align 8
  %84 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %85 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %88 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %90 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %93 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %96 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  %97 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %98 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %101 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %103 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %102, i32 0, i32 1
  %104 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %105 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %104, i32 0, i32 3
  %106 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %107 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @svn_dirent_dirname(i8* %108, i32* %109)
  %111 = load i32, i32* @svn_io_file_del_none, align 4
  %112 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %113 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %116 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @svn_stream_open_unique(i32* %103, i32* %105, i32 %110, i32 %111, i32* %114, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %125 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = call i32 @svn_ra_get_file(i32* %120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %126, i32* null, i32** %16, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i32*, i32** %15, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = call i32* @apr_hash_first(i32* %130, i32* %131)
  store i32* %132, i32** %17, align 8
  br label %133

133:                                              ; preds = %147, %80
  %134 = load i32*, i32** %17, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %150

136:                                              ; preds = %133
  %137 = load i32*, i32** %17, align 8
  %138 = call i8* @apr_hash_this_key(i32* %137)
  store i8* %138, i8** %20, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i32* @apr_hash_this_val(i32* %139)
  store i32* %140, i32** %21, align 8
  %141 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %142 = load i8*, i8** %20, align 8
  %143 = load i32*, i32** %21, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = call i32 @change_file_prop(%struct.file_baton* %141, i8* %142, i32* %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %136
  %148 = load i32*, i32** %17, align 8
  %149 = call i32* @apr_hash_next(i32* %148)
  store i32* %149, i32** %17, align 8
  br label %133

150:                                              ; preds = %133
  %151 = load %struct.file_baton*, %struct.file_baton** %18, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 @close_file(%struct.file_baton* %151, i32* null, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %155, i32** %8, align 8
  br label %156

156:                                              ; preds = %150, %72, %61
  %157 = load i32*, i32** %8, align 8
  ret i32* %157
}

declare dso_local %struct.file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i8* @svn_uri_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @append_basename_if_dir(i8**, i8*, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_ra_get_file(i32*, i8*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @change_file_prop(%struct.file_baton*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @close_file(%struct.file_baton*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
