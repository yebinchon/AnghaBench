; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_hotcopy3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_hotcopy3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32*, i8*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32)* }

@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Hotcopy source and destination are equal\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"'%s' already exists and is a file\00", align 1
@svn_node_unknown = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"'%s' already exists and has an unknown node kind\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@FS_TYPE_FILENAME = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [118 x i8] c"The filesystem type of the hotcopy source ('%s') does not match the filesystem type of the hotcopy destination ('%s')\00", align 1
@common_pool_lock = common dso_local global i32 0, align 4
@common_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_hotcopy3(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @strcmp(i8* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %9
  %32 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = call i32* @svn_error_create(i32 %32, i32* null, i32 %33)
  store i32* %34, i32** %10, align 8
  br label %133

35:                                               ; preds = %9
  %36 = load i8*, i8** %11, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = call i32 @svn_fs_type(i8** %21, i8* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i8*, i8** %21, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @get_library_vtable(%struct.TYPE_3__** %20, i8* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %19, align 8
  %45 = call i32* @fs_new(i32* null, i32* %44)
  store i32* %45, i32** %22, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = call i32* @fs_new(i32* null, i32* %46)
  store i32* %47, i32** %23, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = call i32 @svn_io_check_path(i8* %48, i64* %25, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* %25, align 8
  %53 = load i64, i64* @svn_node_file, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %35
  %56 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %57 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %12, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = call i32 @svn_dirent_local_style(i8* %58, i32* %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %56, i32* null, i32 %57, i8* %62)
  store i32* %63, i32** %10, align 8
  br label %133

64:                                               ; preds = %35
  %65 = load i64, i64* %25, align 8
  %66 = load i64, i64* @svn_node_unknown, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i8*, i8** %12, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @svn_dirent_local_style(i8* %71, i32* %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %69, i32* null, i32 %70, i8* %75)
  store i32* %76, i32** %10, align 8
  br label %133

77:                                               ; preds = %64
  %78 = load i64, i64* %25, align 8
  %79 = load i64, i64* @svn_node_dir, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %77
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* @FS_TYPE_FILENAME, align 4
  %84 = load i32*, i32** %19, align 8
  %85 = call i8* @svn_dirent_join(i8* %82, i32 %83, i32* %84)
  %86 = load i32*, i32** %19, align 8
  %87 = call i32 @svn_io_check_path(i8* %85, i64* %26, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i64, i64* %26, align 8
  %90 = load i64, i64* @svn_node_none, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load i8*, i8** %12, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @svn_fs_type(i8** %24, i8* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i8*, i8** %21, align 8
  %98 = load i8*, i8** %24, align 8
  %99 = call i64 @strcmp(i8* %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %103 = call i32 @_(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i8*, i8** %21, align 8
  %105 = load i8*, i8** %24, align 8
  %106 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %102, i32* null, i32 %103, i8* %104, i8* %105)
  store i32* %106, i32** %10, align 8
  br label %133

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %81
  br label %109

109:                                              ; preds = %108, %77
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32 (i32*, i32*, i8*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32)*, i32 (i32*, i32*, i8*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32)** %111, align 8
  %113 = load i32*, i32** %22, align 8
  %114 = load i32*, i32** %23, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i8*, i8** %18, align 8
  %123 = load i32, i32* @common_pool_lock, align 4
  %124 = load i32*, i32** %19, align 8
  %125 = load i32, i32* @common_pool, align 4
  %126 = call i32 %112(i32* %113, i32* %114, i8* %115, i8* %116, i32 %117, i32 %118, i32 %119, i8* %120, i32 %121, i8* %122, i32 %123, i32* %124, i32 %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** %21, align 8
  %130 = load i32*, i32** %19, align 8
  %131 = call i32 @write_fs_type(i8* %128, i8* %129, i32* %130)
  %132 = call i32* @svn_error_trace(i32 %131)
  store i32* %132, i32** %10, align 8
  br label %133

133:                                              ; preds = %109, %101, %68, %55, %31
  %134 = load i32*, i32** %10, align 8
  ret i32* %134
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_type(i8**, i8*, i32*) #1

declare dso_local i32 @get_library_vtable(%struct.TYPE_3__**, i8*, i32*) #1

declare dso_local i32* @fs_new(i32*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @write_fs_type(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
