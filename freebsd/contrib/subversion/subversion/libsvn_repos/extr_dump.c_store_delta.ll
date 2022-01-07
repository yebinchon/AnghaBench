; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_store_delta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_store_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@APR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i64*, i32*, i8*, i32*, i8*, i32*)* @store_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @store_delta(i32** %0, i64* %1, i32* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %22 = load i32*, i32** %14, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i32 @svn_io_open_unique_file3(i32** %20, i32* null, i32* null, i32 %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32**, i32*** %8, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = call i32* @svn_stream_from_aprfile2(i32* %27, i32 %28, i32* %29)
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @svn_fs_get_file_delta_stream(i32** %17, i32* %31, i8* %32, i32* %33, i8* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @svn_txdelta_to_svndiff3(i32* %18, i8** %19, i32* %38, i32 0, i32 %39, i32* %40)
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %18, align 4
  %44 = load i8*, i8** %19, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @svn_txdelta_send_txstream(i32* %42, i32 %43, i8* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32**, i32*** %8, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @svn_io_file_get_offset(i64* %16, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i64, i64* %16, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  store i64 0, i64* %16, align 8
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @APR_SET, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = call i32* @svn_io_file_seek(i32* %56, i32 %57, i64* %16, i32* %58)
  ret i32* %59
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_get_file_delta_stream(i32**, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_txdelta_to_svndiff3(i32*, i8**, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_txdelta_send_txstream(i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_io_file_get_offset(i64*, i32*, i32*) #1

declare dso_local i32* @svn_io_file_seek(i32*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
