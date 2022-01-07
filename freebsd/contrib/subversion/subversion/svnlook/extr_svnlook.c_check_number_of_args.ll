; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_check_number_of_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_check_number_of_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnlook_opt_state = type { i32*, i32* }

@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Too many arguments given\00", align 1
@SVN_ERR_CL_INSUFFICIENT_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Missing repository path argument\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svnlook_opt_state*, i32)* @check_number_of_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_number_of_args(%struct.svnlook_opt_state* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.svnlook_opt_state*, align 8
  %5 = alloca i32, align 4
  store %struct.svnlook_opt_state* %0, %struct.svnlook_opt_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %4, align 8
  %10 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %4, align 8
  %18 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %8
  %22 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = call i32* @svn_error_create(i32 %22, i32* null, i32 %23)
  store i32* %24, i32** %3, align 8
  br label %39

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %4, align 8
  %30 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32* @svn_error_create(i32 %34, i32* null, i32 %35)
  store i32* %36, i32** %3, align 8
  br label %39

37:                                               ; preds = %28, %25
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %37, %33, %21
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
