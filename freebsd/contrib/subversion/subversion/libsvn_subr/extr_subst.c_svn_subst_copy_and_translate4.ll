; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_copy_and_translate4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_copy_and_translate4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@SVN_ERR_IO_INCONSISTENT_EOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"File '%s' has inconsistent newlines\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @svn_subst_copy_and_translate4(i8* %0, i8* %1, i8* %2, i64 %3, i32* %4, i64 %5, i64 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32*, i32** %21, align 8
  %30 = call i32 @svn_io_check_special_path(i8* %28, i32* %26, i64* %27, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* %18, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %10
  %35 = load i64, i64* %27, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %34, %10
  %38 = load i64, i64* %17, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i64, i64* %27, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %12, align 8
  %45 = load i32*, i32** %21, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = call i32 @svn_subst_read_specialfile(i32** %22, i8* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %55

49:                                               ; preds = %40
  %50 = load i8*, i8** %12, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = load i32*, i32** %21, align 8
  %53 = call i32 @svn_stream_open_readonly(i32** %22, i8* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32*, i32** %22, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i32*, i32** %21, align 8
  %59 = call i32 @create_special_file_from_stream(i32* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %22, align 8
  %62 = call i32 @svn_stream_close(i32* %61)
  %63 = call %struct.TYPE_10__* @svn_error_trace(i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %11, align 8
  br label %152

64:                                               ; preds = %37
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i8*, i8** %20, align 8
  %69 = load i32*, i32** %21, align 8
  %70 = call i32 @detranslate_special_file(i8* %65, i8* %66, i32 %67, i8* %68, i32* %69)
  %71 = call %struct.TYPE_10__* @svn_error_trace(i32 %70)
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %11, align 8
  br label %152

72:                                               ; preds = %34
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %16, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32*, i32** %16, align 8
  %80 = call i64 @apr_hash_count(i32* %79)
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78, %75
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32*, i32** %21, align 8
  %87 = call i32 @svn_io_copy_file(i8* %83, i8* %84, i32 %85, i32* %86)
  %88 = call %struct.TYPE_10__* @svn_error_trace(i32 %87)
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %11, align 8
  br label %152

89:                                               ; preds = %78, %72
  %90 = load i8*, i8** %12, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = call i32 @svn_stream_open_readonly(i32** %22, i8* %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i8*, i8** %13, align 8
  %96 = load i32*, i32** %21, align 8
  %97 = call i32 @svn_dirent_dirname(i8* %95, i32* %96)
  %98 = load i32, i32* @svn_io_file_del_none, align 4
  %99 = load i32*, i32** %21, align 8
  %100 = load i32*, i32** %21, align 8
  %101 = call i32 @svn_stream_open_unique(i32** %23, i8** %24, i32 %97, i32 %98, i32* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %23, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = call i32* @svn_subst_stream_translated(i32* %103, i8* %104, i64 %105, i32* %106, i64 %107, i32* %108)
  store i32* %109, i32** %23, align 8
  %110 = load i32*, i32** %22, align 8
  %111 = load i32*, i32** %23, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i8*, i8** %20, align 8
  %114 = load i32*, i32** %21, align 8
  %115 = call %struct.TYPE_10__* @svn_stream_copy3(i32* %110, i32* %111, i32 %112, i8* %113, i32* %114)
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %25, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %139

118:                                              ; preds = %89
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SVN_ERR_IO_INCONSISTENT_EOL, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load i64, i64* @SVN_ERR_IO_INCONSISTENT_EOL, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %127 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %128 = load i8*, i8** %12, align 8
  %129 = load i32*, i32** %21, align 8
  %130 = call i32 @svn_dirent_local_style(i8* %128, i32* %129)
  %131 = call %struct.TYPE_10__* @svn_error_createf(i64 %125, %struct.TYPE_10__* %126, i32 %127, i32 %130)
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %25, align 8
  br label %132

132:                                              ; preds = %124, %118
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %134 = load i8*, i8** %24, align 8
  %135 = load i32, i32* @FALSE, align 4
  %136 = load i32*, i32** %21, align 8
  %137 = call i32 @svn_io_remove_file2(i8* %134, i32 %135, i32* %136)
  %138 = call %struct.TYPE_10__* @svn_error_compose_create(%struct.TYPE_10__* %133, i32 %137)
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %11, align 8
  br label %152

139:                                              ; preds = %89
  %140 = load i8*, i8** %24, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = load i32*, i32** %21, align 8
  %144 = call i32 @svn_io_file_rename2(i8* %140, i8* %141, i32 %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  %146 = load i8*, i8** %12, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = call i32 @svn_io_copy_perms(i8* %146, i8* %147, i32* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %11, align 8
  br label %152

152:                                              ; preds = %139, %132, %82, %64, %55
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  ret %struct.TYPE_10__* %153
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i32*, i64*, i32*) #1

declare dso_local i32 @svn_subst_read_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @create_special_file_from_stream(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @detranslate_special_file(i8*, i8*, i32, i8*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i64, i32*, i64, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_stream_copy3(i32*, i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_error_createf(i64, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_error_compose_create(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
