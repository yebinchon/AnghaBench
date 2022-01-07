; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_prepare_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_prepare_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@.str = private unnamed_addr constant [41 x i8] c"Unable to create pristine install stream\00", align 1
@svn_checksum_md5 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_pristine_prepare_install(i32** %0, %struct.TYPE_4__** %1, i32** %2, i32** %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_4__**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = call i32 @svn_dirent_is_absolute(i8* %20)
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load i32*, i32** %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %17, i8** %18, i32* %23, i8* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %17, align 8
  %30 = call i32 @VERIFY_USABLE_WCROOT(i32* %29)
  %31 = load i32*, i32** %17, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i8* @pristine_get_tempdir(i32* %31, i32* %32, i32* %33)
  store i8* %34, i8** %19, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = call %struct.TYPE_4__* @apr_pcalloc(i32* %35, i32 16)
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %37, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* %38, i32** %41, align 8
  %42 = load i32**, i32*** %9, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @svn_stream__create_for_install(i32** %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @SVN_ERR_W(i32 %46, i32 %47)
  %49 = load i32**, i32*** %9, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* %50, i32** %53, align 8
  %54 = load i32**, i32*** %12, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %8
  %57 = load i32**, i32*** %9, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** %12, align 8
  %60 = load i32, i32* @svn_checksum_md5, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = call i32* @svn_stream_checksummed2(i32* %58, i32* null, i32** %59, i32 %60, i32 %61, i32* %62)
  %64 = load i32**, i32*** %9, align 8
  store i32* %63, i32** %64, align 8
  br label %65

65:                                               ; preds = %56, %8
  %66 = load i32**, i32*** %11, align 8
  %67 = icmp ne i32** %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32**, i32*** %9, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %11, align 8
  %72 = load i32, i32* @svn_checksum_sha1, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = call i32* @svn_stream_checksummed2(i32* %70, i32* null, i32** %71, i32 %72, i32 %73, i32* %74)
  %76 = load i32**, i32*** %9, align 8
  store i32* %75, i32** %76, align 8
  br label %77

77:                                               ; preds = %68, %65
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i8* @pristine_get_tempdir(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_stream__create_for_install(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_stream_checksummed2(i32*, i32*, i32**, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
