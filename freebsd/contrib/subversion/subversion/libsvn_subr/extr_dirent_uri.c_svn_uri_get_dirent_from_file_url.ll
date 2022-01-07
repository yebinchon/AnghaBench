; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_uri_get_dirent_from_file_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_uri_get_dirent_from_file_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Local URL '%s' does not contain 'file://' prefix\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Local URL '%s' contains unsupported hostname\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_VA_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_uri_get_dirent_from_file_url(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @svn_uri_is_canonical(i8* %10, i32* %11)
  %13 = call i32 @SVN_ERR_ASSERT(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %19 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = call i32* @svn_error_createf(i32 %18, i32* null, i32 %19, i8* %20)
  store i32* %21, i32** %4, align 8
  br label %69

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 7
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 47)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @apr_pstrmemdup(i32* %30, i8* %31, i32 %37)
  store i8* %38, i8** %8, align 8
  br label %40

39:                                               ; preds = %22
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i8* null, i8** %8, align 8
  br label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i8* @svn_path_uri_decode(i8* %47, i32* %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i8* null, i8** %8, align 8
  br label %54

54:                                               ; preds = %53, %46
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i8*, i8** %6, align 8
  %62 = call i32* @svn_error_createf(i32 %59, i32* null, i32 %60, i8* %61)
  store i32* %62, i32** %4, align 8
  br label %69

63:                                               ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i8* @svn_path_uri_decode(i8* %64, i32* %65)
  %67 = load i8**, i8*** %5, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %4, align 8
  br label %69

69:                                               ; preds = %63, %58, %17
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_uri_is_canonical(i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i8* @svn_path_uri_decode(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
