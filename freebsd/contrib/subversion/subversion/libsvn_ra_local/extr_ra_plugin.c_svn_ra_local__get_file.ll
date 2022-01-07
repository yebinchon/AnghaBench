; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"'%s' path not found\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"'%s' is not a file\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i8*, i32, i32*, i32*, i32**, i32*)* @svn_ra_local__get_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_ra_local__get_file(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %19, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i8* @svn_fspath__join(i32 %29, i8* %30, i32* %31)
  store i8* %32, i8** %20, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @SVN_IS_VALID_REVNUM(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %7
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @svn_fs_youngest_rev(i32* %18, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @svn_fs_revision_root(i32** %16, i32 %45, i32 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i32, i32* %18, align 4
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %36
  br label %64

56:                                               ; preds = %7
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @svn_fs_revision_root(i32** %16, i32 %59, i32 %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %56, %55
  %65 = load i32*, i32** %16, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @svn_fs_check_path(i64* %21, i32* %65, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i64, i64* %21, align 8
  %71 = load i64, i64* @svn_node_none, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %75 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %76 = load i8*, i8** %20, align 8
  %77 = call i32* @svn_error_createf(i32 %74, i32* null, i32 %75, i8* %76)
  store i32* %77, i32** %8, align 8
  br label %136

78:                                               ; preds = %64
  %79 = load i64, i64* %21, align 8
  %80 = load i64, i64* @svn_node_file, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %84 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i8*, i8** %20, align 8
  %86 = call i32* @svn_error_createf(i32 %83, i32* null, i32 %84, i8* %85)
  store i32* %86, i32** %8, align 8
  br label %136

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32*, i32** %12, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %120

91:                                               ; preds = %88
  %92 = load i32*, i32** %16, align 8
  %93 = load i8*, i8** %20, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @svn_fs_file_contents(i32** %17, i32* %92, i8* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** %17, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @svn_stream_disown(i32* %98, i32* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %91
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  br label %112

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111, %105
  %113 = phi i32* [ %110, %105 ], [ null, %111 ]
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @svn_stream_copy3(i32* %97, i32 %100, i32* %113, i32 %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  br label %120

120:                                              ; preds = %112, %88
  %121 = load i32**, i32*** %14, align 8
  %122 = icmp ne i32** %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32**, i32*** %14, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i8*, i8** %20, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @get_node_props(i32** %124, i32* %125, i8* %126, i32 %129, i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %123, %120
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %135, i32** %8, align 8
  br label %136

136:                                              ; preds = %134, %82, %73
  %137 = load i32*, i32** %8, align 8
  ret i32* %137
}

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_file_contents(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_disown(i32*, i32*) #1

declare dso_local i32 @get_node_props(i32**, i32*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
