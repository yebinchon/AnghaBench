; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_check_if_session_is_at_repos_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_check_if_session_is_at_repos_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Session is rooted at '%s' but the repos root is '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @check_if_session_is_at_repos_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_if_session_is_at_repos_root(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @svn_ra_get_repos_root2(i32* %9, i8** %8, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strcmp(i8* %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %4, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @APR_EINVAL, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32* @svn_error_createf(i32 %20, i32* null, i32 %21, i8* %22, i8* %23)
  store i32* %24, i32** %4, align 8
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32*, i32** %4, align 8
  ret i32* %26
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
