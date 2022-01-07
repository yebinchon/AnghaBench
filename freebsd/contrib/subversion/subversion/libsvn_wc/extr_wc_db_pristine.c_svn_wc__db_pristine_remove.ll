; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@STMT_LOOK_FOR_WORK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_pristine_remove(i32* %0, i8* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @svn_dirent_is_absolute(i8* %14)
  %16 = call i32 @SVN_ERR_ASSERT(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @svn_checksum_sha1, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @svn_wc__db_pristine_get_sha1(%struct.TYPE_11__** %8, i32* %27, i8* %28, %struct.TYPE_11__* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %26, %4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @svn_checksum_sha1, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__** %10, i8** %11, i32* %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @STMT_LOOK_FOR_WORK, align 4
  %54 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %52, i32 %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @svn_sqlite__step(i64* %13, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @svn_sqlite__reset(i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %34
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %5, align 8
  br label %73

66:                                               ; preds = %34
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @pristine_remove_if_unreferenced(%struct.TYPE_10__* %67, %struct.TYPE_11__* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %5, align 8
  br label %73

73:                                               ; preds = %66, %64
  %74 = load i32*, i32** %5, align 8
  ret i32* %74
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_pristine_get_sha1(%struct.TYPE_11__**, i32*, i8*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @pristine_remove_if_unreferenced(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
