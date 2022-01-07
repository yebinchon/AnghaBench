; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_check_repos_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_check_repos_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SVN_REPOS__FORMAT = common dso_local global i32 0, align 4
@SVN_REPOS__FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_REPOS__FORMAT_NUMBER_LEGACY = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Expected repository format '%d' or '%d'; found format '%d'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @check_repos_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_repos_format(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SVN_REPOS__FORMAT, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @svn_dirent_join(i32 %10, i32 %11, i32* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @svn_io_read_version_file(i32* %6, i8* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SVN_REPOS__FORMAT_NUMBER, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SVN_REPOS__FORMAT_NUMBER_LEGACY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @SVN_ERR_REPOS_UNSUPPORTED_VERSION, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @SVN_REPOS__FORMAT_NUMBER_LEGACY, align 4
  %29 = load i32, i32* @SVN_REPOS__FORMAT_NUMBER, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32* @svn_error_createf(i32 %26, i32* null, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32* %31, i32** %3, align 8
  br label %37

32:                                               ; preds = %21, %2
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_read_version_file(i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
