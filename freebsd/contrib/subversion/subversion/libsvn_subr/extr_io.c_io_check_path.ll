; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_io_check_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_io_check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@APR_FINFO_MIN = common dso_local global i32 0, align 4
@APR_FINFO_LINK = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't check path '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64*, i32*, i32*)* @io_check_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @io_check_path(i8* %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @cstring_from_utf8(i8** %15, i8* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @APR_FINFO_MIN, align 4
  br label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @APR_FINFO_MIN, align 4
  %35 = load i32, i32* @APR_FINFO_LINK, align 4
  %36 = or i32 %34, %35
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @apr_stat(i32* %13, i8* %39, i32 %40, i32* %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i64 @APR_STATUS_IS_ENOENT(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @svn_node_none, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  br label %71

49:                                               ; preds = %37
  %50 = load i64, i64* %14, align 8
  %51 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @svn_node_none, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %70

56:                                               ; preds = %49
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %7, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @svn_dirent_local_style(i8* %62, i32* %63)
  %65 = call i32* @svn_error_wrap_apr(i64 %60, i32 %61, i32 %64)
  store i32* %65, i32** %6, align 8
  br label %75

66:                                               ; preds = %56
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @map_apr_finfo_to_node_kind(i32* %67, i64* %16, i32* %13)
  br label %69

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i64, i64* %16, align 8
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %6, align 8
  br label %75

75:                                               ; preds = %71, %59
  %76 = load i32*, i32** %6, align 8
  ret i32* %76
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @apr_stat(i32*, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i64) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @map_apr_finfo_to_node_kind(i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
