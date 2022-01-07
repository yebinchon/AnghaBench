; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_read_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_read_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_depth_exclude = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i32 0, align 4
@svn_depth_immediates = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_BAD_REVISION_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid depth (%c) for path '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*)* @read_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_depth(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = call i32 @svn_spillbuf__reader_getc(i8* %10, i32* %11, i32* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load i8, i8* %10, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %29 [
    i32 88, label %17
    i32 69, label %20
    i32 70, label %23
    i32 77, label %26
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @svn_depth_exclude, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  br label %35

20:                                               ; preds = %4
  %21 = load i32, i32* @svn_depth_empty, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %35

23:                                               ; preds = %4
  %24 = load i32, i32* @svn_depth_files, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %35

26:                                               ; preds = %4
  %27 = load i32, i32* @svn_depth_immediates, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load i32, i32* @SVN_ERR_REPOS_BAD_REVISION_REPORT, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load i8, i8* %10, align 1
  %33 = load i8*, i8** %8, align 8
  %34 = call i32* @svn_error_createf(i32 %30, i32* null, i32 %31, i8 signext %32, i8* %33)
  store i32* %34, i32** %5, align 8
  br label %37

35:                                               ; preds = %26, %23, %20, %17
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %5, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32*, i32** %5, align 8
  ret i32* %38
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_spillbuf__reader_getc(i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8 signext, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
