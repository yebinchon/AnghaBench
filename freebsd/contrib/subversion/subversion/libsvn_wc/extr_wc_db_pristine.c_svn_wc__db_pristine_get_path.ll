; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_get_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_svn_wc__db_pristine_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@SVN_ERR_WC_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"The pristine text with checksum '%s' was not found\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_pristine_get_path(i8** %0, i32* %1, i8* %2, %struct.TYPE_12__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @svn_dirent_is_absolute(i8* %21)
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @SVN_ERR_ASSERT(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @svn_checksum_sha1, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %6
  %34 = load i32*, i32** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @svn_wc__db_pristine_get_sha1(%struct.TYPE_12__** %11, i32* %34, i8* %35, %struct.TYPE_12__* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %33, %6
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @svn_checksum_sha1, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @SVN_ERR_ASSERT(i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_11__** %14, i8** %15, i32* %49, i8* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %56 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_11__* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @svn_wc__db_pristine_check(i32* %16, i32* %57, i8* %58, %struct.TYPE_12__* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %41
  %66 = load i32, i32* @SVN_ERR_WC_DB_ERROR, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @svn_checksum_to_cstring_display(%struct.TYPE_12__* %68, i32* %69)
  %71 = call i32* @svn_error_createf(i32 %66, i32* null, i32 %67, i32 %70)
  store i32* %71, i32** %7, align 8
  br label %83

72:                                               ; preds = %41
  %73 = load i8**, i8*** %8, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @get_pristine_fname(i8** %73, i32 %76, %struct.TYPE_12__* %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %72, %65
  %84 = load i32*, i32** %7, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_pristine_get_sha1(%struct.TYPE_12__**, i32*, i8*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_11__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_wc__db_pristine_check(i32*, i32*, i8*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_checksum_to_cstring_display(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @get_pristine_fname(i8**, i32, %struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
