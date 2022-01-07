; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_get_default_file_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_get_default_file_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@get_default_file_perms.default_perms = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"svn-%08x\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@APR_FINFO_PROT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i8*, i32*)* @get_default_file_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_default_file_perms(i64* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i64, i64* @get_default_file_perms.default_perms, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = sext i32 %17 to i64
  %19 = load i32*, i32** %6, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = sdiv i32 %20, 4096
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = call i64 (...) @apr_time_now()
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i8* @apr_psprintf(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @svn_io_file_del_none, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @svn_io_open_uniquely_named(i32** %8, i8** %10, i8* %29, i8* %30, i32* null, i32 %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32* %34)
  %36 = load i32, i32* @APR_FINFO_PROT, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @svn_io_file_info_get(%struct.TYPE_3__* %7, i32 %36, i32* %37, i32* %38)
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @svn_io_file_close(i32* %41, i32* %42)
  %44 = call i32* @svn_error_compose_create(i32* %40, i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @svn_io_remove_file2(i8* %46, i32 %47, i32* %48)
  %50 = call i32* @svn_error_compose_create(i32* %45, i32 %49)
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @SVN_ERR(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %4, align 8
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* @get_default_file_perms.default_perms, align 8
  br label %61

58:                                               ; preds = %3
  %59 = load i64, i64* @get_default_file_perms.default_perms, align 8
  %60 = load i64*, i64** %4, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %15
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local i64 @apr_time_now(...) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i64) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_io_open_uniquely_named(i32**, i8**, i8*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_io_file_info_get(%struct.TYPE_3__*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
