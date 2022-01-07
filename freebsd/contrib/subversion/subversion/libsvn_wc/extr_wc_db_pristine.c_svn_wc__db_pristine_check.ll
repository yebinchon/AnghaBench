; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@STMT_SELECT_PRISTINE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @svn_wc__db_pristine_check(i32* %0, i32* %1, i8* %2, %struct.TYPE_17__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @svn_dirent_is_absolute(i8* %19)
  %21 = call i32 @SVN_ERR_ASSERT(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @svn_checksum_sha1, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %6, align 8
  br label %90

35:                                               ; preds = %5
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_15__** %12, i8** %13, i32* %36, i8* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %43 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_15__* %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @get_pristine_fname(i8** %16, i32 %46, %struct.TYPE_17__* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i8*, i8** %16, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call %struct.TYPE_16__* @svn_io_check_path(i8* %52, i64* %17, i32* %53)
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %18, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %59 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %58)
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %6, align 8
  br label %90

60:                                               ; preds = %35
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* @svn_node_file, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %6, align 8
  br label %90

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STMT_SELECT_PRISTINE, align 4
  %74 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %72, i32 %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @svn_sqlite__bind_checksum(i32* %76, i32 1, %struct.TYPE_17__* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @svn_sqlite__step(i32* %15, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @svn_sqlite__reset(i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %6, align 8
  br label %90

90:                                               ; preds = %69, %64, %57, %31
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %91
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_15__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_15__*) #1

declare dso_local i32 @get_pristine_fname(i8**, i32, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
