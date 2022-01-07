; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_util.c_svn_ra__assert_capable_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_util.c_svn_ra__assert_capable_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_RA_CAPABILITY_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"The '%s' feature is not supported by '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra__assert_capable_server(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @SVN_RA_CAPABILITY_MERGEINFO, align 4
  %13 = call i32 @strcmp(i8* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32* @svn_ra__assert_mergeinfo_capable_server(i32* %16, i8* %17, i32* %18)
  store i32* %19, i32** %5, align 8
  br label %51

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_ra_has_capability(i32* %21, i32* %10, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i8* @get_path(i8* %29, i32* %30, i32* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @svn_path_is_url(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i8*, i8** %8, align 8
  br label %45

41:                                               ; preds = %28
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i8* @svn_dirent_local_style(i8* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i8* [ %40, %39 ], [ %44, %41 ]
  %47 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i8* %35, i8* %46)
  store i32* %47, i32** %5, align 8
  br label %51

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %49, %45, %15
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_ra__assert_mergeinfo_capable_server(i32*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i32*, i8*, i32*) #1

declare dso_local i8* @get_path(i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
