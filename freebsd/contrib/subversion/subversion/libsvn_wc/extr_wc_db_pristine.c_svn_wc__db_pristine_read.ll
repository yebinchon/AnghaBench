; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Can't read '%s' from pristine store because no checksum supplied\00", align 1
@svn_checksum_sha1 = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_pristine_read(i32** %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_11__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @svn_dirent_is_absolute(i8* %19)
  %21 = call i32 @SVN_ERR_ASSERT(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %12, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @svn_dirent_local_style(i8* %27, i32* %28)
  %30 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i32 %29)
  store i32* %30, i32** %8, align 8
  br label %66

31:                                               ; preds = %7
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @svn_checksum_sha1, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__** %16, i8** %17, i32* %39, i8* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %46 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @get_pristine_fname(i8** %18, i32 %49, %struct.TYPE_11__* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32**, i32*** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @pristine_read_txn(i32** %55, i32* %56, %struct.TYPE_10__* %57, %struct.TYPE_11__* %58, i8* %59, i32* %60, i32* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %64 = call i32 @SVN_WC__DB_WITH_TXN(i32 %62, %struct.TYPE_10__* %63)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %8, align 8
  br label %66

66:                                               ; preds = %31, %24
  %67 = load i32*, i32** %8, align 8
  ret i32* %67
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__*) #1

declare dso_local i32 @get_pristine_fname(i8**, i32, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pristine_read_txn(i32**, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
