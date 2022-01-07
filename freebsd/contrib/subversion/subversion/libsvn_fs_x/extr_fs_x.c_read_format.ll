; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_read_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_read_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_ERR_BAD_VERSION_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't read first line of format file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"layout sharded \00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"'%s' contains invalid filesystem format option '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*)* @read_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_format(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @svn_stringbuf_from_file2(%struct.TYPE_5__** %11, i8* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_5__* %19, i32* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_stream_readline(i32* %22, %struct.TYPE_5__** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %13, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @SVN_ERR_BAD_VERSION_FILE_FORMAT, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @svn_dirent_local_style(i8* %36, i32* %37)
  %39 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %34, i32* null, i32 %35, i32 %38)
  store i32* %39, i32** %5, align 8
  br label %97

40:                                               ; preds = %30, %4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @check_format_file_buffer_numeric(i64 %43, i32 0, i8* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @svn_cstring_atoi(i32* %48, i64 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @check_format(i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @svn_stream_readline(i32* %58, %struct.TYPE_5__** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %13, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %40
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @strncmp(i64 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @check_format_file_buffer_numeric(i64 %73, i32 15, i8* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 15
  %83 = call i32 @svn_cstring_atoi(i32* %78, i64 %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %95

85:                                               ; preds = %64, %40
  %86 = load i32, i32* @SVN_ERR_BAD_VERSION_FILE_FORMAT, align 4
  %87 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i8*, i8** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @svn_dirent_local_style(i8* %88, i32* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %86, i32* null, i32 %87, i32 %90, i64 %93)
  store i32* %94, i32** %5, align 8
  br label %97

95:                                               ; preds = %70
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %5, align 8
  br label %97

97:                                               ; preds = %95, %85, %33
  %98 = load i32*, i32** %5, align 8
  ret i32* %98
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stringbuf_from_file2(%struct.TYPE_5__**, i8*, i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_5__**, i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @check_format_file_buffer_numeric(i64, i32, i8*, i32*) #1

declare dso_local i32 @svn_cstring_atoi(i32*, i64) #1

declare dso_local i32 @check_format(i32) #1

declare dso_local i64 @strncmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
