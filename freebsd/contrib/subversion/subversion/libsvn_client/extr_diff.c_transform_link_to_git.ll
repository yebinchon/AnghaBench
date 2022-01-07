; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_transform_link_to_git.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_transform_link_to_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@APR_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"link \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"blob %u\00", align 1
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, i32*)* @transform_link_to_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transform_link_to_git(i8** %0, i8** %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i8**, i8*** %7, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @APR_READ, align 4
  %19 = load i32, i32* @APR_OS_DEFAULT, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @svn_io_file_open(i32** %11, i8* %17, i32 %18, i32 %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @svn_io_open_unique_file3(i32** %12, i8** %23, i32* null, i32 %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @APR_PATH_MAX, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 2
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @svn_io_file_readline(i32* %29, %struct.TYPE_5__** %13, i32* null, i32* null, i32 %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 5
  br i1 %40, label %41, label %85

41:                                               ; preds = %5
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strncmp(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = call i32 @svn_stringbuf_remove(%struct.TYPE_5__* %48, i32 0, i32 5)
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @svn_io_file_write_full(i32* %50, i32 %53, i32 %56, i32* null, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @apr_psprintf(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i8* %64, i8** %14, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 1
  %70 = call i32 @svn_stringbuf_insert(%struct.TYPE_5__* %65, i32 0, i8* %66, i64 %69)
  %71 = load i32, i32* @svn_checksum_sha1, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @svn_checksum(i32** %15, i32 %71, i32 %74, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i8* @svn_checksum_to_cstring(i32* %81, i32* %82)
  %84 = load i8**, i8*** %7, align 8
  store i8* %83, i8** %84, align 8
  br label %90

85:                                               ; preds = %41, %5
  %86 = load i32*, i32** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @apr_pstrdup(i32* %86, i8* %87)
  %89 = load i8**, i8*** %6, align 8
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %47
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @svn_io_file_close(i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @svn_io_file_close(i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %99
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_readline(i32*, %struct.TYPE_5__**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_remove(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i32, i32, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_insert(%struct.TYPE_5__*, i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @svn_checksum(i32**, i32, i32, i32, i32*) #1

declare dso_local i8* @svn_checksum_to_cstring(i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
