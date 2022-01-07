; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_file_rev_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_file_rev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"cr(!\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"!)(!\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"!)b\00", align 1
@svndiff_handler = common dso_local global i32 0, align 4
@svndiff_close_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i32, i32*, i8**, i32*, i32*)* @file_rev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_rev_handler(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32* %5, i8** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_2__*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %19, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 (i32, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32 %25, i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @svn_ra_svn__write_proplist(i32 %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = call i32 (i32, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32 %40, i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @write_prop_diffs(i32 %46, i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 (i32, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32 %53, i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %18, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %9
  %64 = load i8*, i8** %10, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = call i32* @svn_stream_create(i8* %64, i32* %65)
  store i32* %66, i32** %20, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = load i32, i32* @svndiff_handler, align 4
  %69 = call i32 @svn_stream_set_write(i32* %67, i32 %68)
  %70 = load i32*, i32** %20, align 8
  %71 = load i32, i32* @svndiff_close_handler, align 4
  %72 = call i32 @svn_stream_set_close(i32* %70, i32 %71)
  %73 = load i32*, i32** %15, align 8
  %74 = load i8**, i8*** %16, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @svn_ra_svn__svndiff_version(i32 %78)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @svn_ra_svn_compression_level(i32 %82)
  %84 = load i32*, i32** %18, align 8
  %85 = call i32 @svn_txdelta_to_svndiff3(i32* %73, i8** %74, i32* %75, i32 %79, i32 %83, i32* %84)
  br label %93

86:                                               ; preds = %9
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = call i32 @svn_ra_svn__write_cstring(i32 %89, i32* %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32 @SVN_ERR(i32 %91)
  br label %93

93:                                               ; preds = %86, %63
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %94
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32, i32*, i8*, ...) #1

declare dso_local i32 @svn_ra_svn__write_proplist(i32, i32*, i32*) #1

declare dso_local i32 @write_prop_diffs(i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_create(i8*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

declare dso_local i32 @svn_txdelta_to_svndiff3(i32*, i8**, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_ra_svn__svndiff_version(i32) #1

declare dso_local i32 @svn_ra_svn_compression_level(i32) #1

declare dso_local i32 @svn_ra_svn__write_cstring(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
