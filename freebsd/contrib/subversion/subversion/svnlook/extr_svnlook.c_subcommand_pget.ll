; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_pget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_pget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.svnlook_opt_state = type { i32, i32, i32*, i64, i32* }

@SVN_ERR_CL_INSUFFICIENT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Missing propname argument\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Missing propname and repository path arguments\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Missing propname or repository path argument\00", align 1
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Too many arguments given\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*)* @subcommand_pget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_pget(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svnlook_opt_state*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.svnlook_opt_state*
  store %struct.svnlook_opt_state* %11, %struct.svnlook_opt_state** %8, align 8
  %12 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %13 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %18 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %19 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %26

24:                                               ; preds = %16
  %25 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32* @svn_error_createf(i32 %17, i32* null, i32 %27)
  store i32* %28, i32** %4, align 8
  br label %96

29:                                               ; preds = %3
  %30 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %31 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %36 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32* @svn_error_create(i32 %40, i32* null, i32 %41)
  store i32* %42, i32** %4, align 8
  br label %96

43:                                               ; preds = %34, %29
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %46 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %51 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54, %49
  %63 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %64 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32* @svn_error_create(i32 %63, i32* null, i32 %64)
  store i32* %65, i32** %4, align 8
  br label %96

66:                                               ; preds = %54
  %67 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @get_ctxt_baton(i32** %9, %struct.svnlook_opt_state* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %73 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %76 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %84

80:                                               ; preds = %66
  %81 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %82 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  br label %84

84:                                               ; preds = %80, %79
  %85 = phi i32* [ null, %79 ], [ %83, %80 ]
  %86 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %87 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %8, align 8
  %90 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @do_pget(i32* %71, i32* %74, i32* %85, i32 %88, i32 %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %84, %62, %39, %26
  %97 = load i32*, i32** %4, align 8
  ret i32* %97
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_ctxt_baton(i32**, %struct.svnlook_opt_state*, i32*) #1

declare dso_local i32 @do_pget(i32*, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
