; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_svn_ra__get_deleted_rev_from_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_svn_ra__get_deleted_rev_from_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid peg revision %ld\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid end revision %ld\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Peg revision must precede end revision\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@log_path_del_receiver = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra__get_deleted_rev_from_log(i32* %0, i8* %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i32 @get_fs_path(i8** %14, i32* %16, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @SVN_IS_VALID_REVNUM(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %10, align 8
  %28 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i64 %27)
  store i32* %28, i32** %7, align 8
  br label %67

29:                                               ; preds = %6
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @SVN_IS_VALID_REVNUM(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %11, align 8
  %37 = call i32* @svn_error_createf(i32 %34, i32* null, i32 %35, i64 %36)
  store i32* %37, i32** %7, align 8
  br label %67

38:                                               ; preds = %29
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32* @svn_error_create(i32 %43, i32* null, i32 %44)
  store i32* %45, i32** %7, align 8
  br label %67

46:                                               ; preds = %38
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @apr_array_make(i32* %57, i32 0, i32 8)
  %59 = load i32, i32* @log_path_del_receiver, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @svn_ra_get_log2(i32* %51, i32* null, i64 %52, i64 %53, i32 0, i32 %54, i32 %55, i32 %56, i32 %58, i32 %59, %struct.TYPE_3__* %15, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %7, align 8
  br label %67

67:                                               ; preds = %46, %42, %33, %24
  %68 = load i32*, i32** %7, align 8
  ret i32* %68
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_fs_path(i8**, i32*, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_ra_get_log2(i32*, i32*, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
