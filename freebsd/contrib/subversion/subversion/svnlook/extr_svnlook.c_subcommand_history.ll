; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnlook_opt_state = type { i8*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Too many arguments given\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_history(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svnlook_opt_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.svnlook_opt_state*
  store %struct.svnlook_opt_state* %12, %struct.svnlook_opt_state** %8, align 8
  %13 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %14 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %19 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i8* [ %20, %17 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %21 ]
  store i8* %23, i8** %10, align 8
  %24 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %25 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32* @svn_error_create(i32 %29, i32* null, i32 %30)
  store i32* %31, i32** %4, align 8
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @get_ctxt_baton(i32** %9, %struct.svnlook_opt_state* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @do_history(i32* %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %32, %28
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_ctxt_baton(i32**, %struct.svnlook_opt_state*, i32*) #1

declare dso_local i32 @do_history(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
