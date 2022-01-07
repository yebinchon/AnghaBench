; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnlook_opt_state = type { i8*, i32, i32, i32, i32* }

@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Too many arguments given\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_tree(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svnlook_opt_state*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.svnlook_opt_state*
  store %struct.svnlook_opt_state* %11, %struct.svnlook_opt_state** %8, align 8
  %12 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %13 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %18 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = call i32* @svn_error_create(i32 %17, i32* null, i32 %18)
  store i32* %19, i32** %4, align 8
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @get_ctxt_baton(i32** %9, %struct.svnlook_opt_state* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %27 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %32 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %38 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %41 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %44 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @do_tree(i32* %25, i8* %36, i32 %39, i32 %42, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %35, %16
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_ctxt_baton(i32**, %struct.svnlook_opt_state*, i32*) #1

declare dso_local i32 @do_tree(i32*, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
