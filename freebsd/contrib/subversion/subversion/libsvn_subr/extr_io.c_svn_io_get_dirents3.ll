; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_get_dirents3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_get_dirents3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_FINFO_NAME = common dso_local global i32 0, align 4
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@APR_FINFO_MTIME = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Can't read directory '%s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error closing directory '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_get_dirents3(i32** %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* @APR_FINFO_TYPE, align 4
  %19 = load i32, i32* @APR_FINFO_NAME, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @APR_FINFO_SIZE, align 4
  %25 = load i32, i32* @APR_FINFO_MTIME, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %15, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %23, %5
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @apr_hash_make(i32* %30)
  %32 = load i32**, i32*** %7, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @svn_io_dir_open(i32** %13, i8* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i64 @apr_dir_read(%struct.TYPE_8__* %14, i32 %37, i32* %38)
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %105, %29
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @APR_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %109

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %51
  br label %105

73:                                               ; preds = %65, %58, %44
  %74 = load i32*, i32** %10, align 8
  %75 = call %struct.TYPE_7__* @svn_io_dirent2_create(i32* %74)
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @entry_name_to_utf8(i8** %16, i8* %77, i8* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = call i32 @map_apr_finfo_to_node_kind(i32* %83, i32* %85, %struct.TYPE_8__* %14)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %73
  %99 = load i32**, i32*** %7, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %103 = call i32 @svn_hash_sets(i32* %100, i8* %101, %struct.TYPE_7__* %102)
  br label %104

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %72
  %106 = load i32, i32* %15, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = call i64 @apr_dir_read(%struct.TYPE_8__* %14, i32 %106, i32* %107)
  store i64 %108, i64* %12, align 8
  br label %40

109:                                              ; preds = %40
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @APR_STATUS_IS_ENOENT(i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %116 = load i8*, i8** %8, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @svn_dirent_local_style(i8* %116, i32* %117)
  %119 = call i32* @svn_error_wrap_apr(i64 %114, i32 %115, i32 %118)
  store i32* %119, i32** %6, align 8
  br label %134

120:                                              ; preds = %109
  %121 = load i32*, i32** %13, align 8
  %122 = call i64 @apr_dir_close(i32* %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i8*, i8** %8, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @svn_dirent_local_style(i8* %128, i32* %129)
  %131 = call i32* @svn_error_wrap_apr(i64 %126, i32 %127, i32 %130)
  store i32* %131, i32** %6, align 8
  br label %134

132:                                              ; preds = %120
  %133 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %133, i32** %6, align 8
  br label %134

134:                                              ; preds = %132, %125, %113
  %135 = load i32*, i32** %6, align 8
  ret i32* %135
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_dir_open(i32**, i8*, i32*) #1

declare dso_local i64 @apr_dir_read(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_io_dirent2_create(i32*) #1

declare dso_local i32 @entry_name_to_utf8(i8**, i8*, i8*, i32*) #1

declare dso_local i32 @map_apr_finfo_to_node_kind(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i64 @apr_dir_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
