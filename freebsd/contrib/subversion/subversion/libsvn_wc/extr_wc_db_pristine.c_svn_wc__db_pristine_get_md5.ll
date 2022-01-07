; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_get_md5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_get_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@STMT_SELECT_PRISTINE = common dso_local global i32 0, align 4
@SVN_ERR_WC_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"The pristine text with checksum '%s' was not found\00", align 1
@svn_checksum_md5 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_pristine_get_md5(%struct.TYPE_11__** %0, i32* %1, i8* %2, %struct.TYPE_11__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @svn_dirent_is_absolute(i8* %18)
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @svn_checksum_sha1, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @SVN_ERR_ASSERT(i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__** %14, i8** %15, i32* %32, i8* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %39 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @STMT_SELECT_PRISTINE, align 4
  %44 = call i32 @svn_sqlite__get_statement(i32** %16, i32 %42, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %16, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @svn_sqlite__bind_checksum(i32* %46, i32 1, %struct.TYPE_11__* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @svn_sqlite__step(i32* %17, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %6
  %57 = load i32, i32* @SVN_ERR_WC_DB_ERROR, align 4
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @svn_sqlite__reset(i32* %58)
  %60 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @svn_checksum_to_cstring_display(%struct.TYPE_11__* %61, i32* %62)
  %64 = call i32* @svn_error_createf(i32 %57, i32 %59, i32 %60, i32 %63)
  store i32* %64, i32** %7, align 8
  br label %82

65:                                               ; preds = %6
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @svn_sqlite__column_checksum(%struct.TYPE_11__** %66, i32* %67, i32 0, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @svn_checksum_md5, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @SVN_ERR_ASSERT(i32 %77)
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @svn_sqlite__reset(i32* %79)
  %81 = call i32* @svn_error_trace(i32 %80)
  store i32* %81, i32** %7, align 8
  br label %82

82:                                               ; preds = %65, %56
  %83 = load i32*, i32** %7, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_checksum_to_cstring_display(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_sqlite__column_checksum(%struct.TYPE_11__**, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
