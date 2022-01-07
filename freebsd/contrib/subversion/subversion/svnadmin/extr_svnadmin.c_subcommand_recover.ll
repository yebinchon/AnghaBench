; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_recover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.svnadmin_opt_state = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@repos_notify_handler = common dso_local global i32 0, align 4
@check_cancel = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"Failed to get exclusive repository access; perhaps another process\0Asuch as httpd, svnserve or svn has it open?\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Waiting on repository lock; perhaps another process has it open?\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"\0ARecovery completed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"The latest repos revision is %ld.\0A\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, i8*, i32*)* @subcommand_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @subcommand_recover(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.svnadmin_opt_state*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %14, %struct.svnadmin_opt_state** %11, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_14__* @parse_args(i32* null, i32* %15, i32 0, i32 0, i32* %16)
  %18 = call i32 @SVN_ERR(%struct.TYPE_14__* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_14__* @svn_stream_for_stdout(i32** %12, i32* %19)
  %21 = call i32 @SVN_ERR(%struct.TYPE_14__* %20)
  %22 = call i32 (...) @svn_cmdline__disable_cancellation_handler()
  %23 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %11, align 8
  %24 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @repos_notify_handler, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* @check_cancel, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.TYPE_14__* @svn_repos_recover4(i32 %25, i32 %26, i32 %27, i32* %28, i32 %29, i32* null, i32* %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %10, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %71

34:                                               ; preds = %3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @APR_STATUS_IS_EAGAIN(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %4, align 8
  br label %94

42:                                               ; preds = %34
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = call i32 @svn_error_clear(%struct.TYPE_14__* %43)
  %45 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %11, align 8
  %46 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @SVN_ERR_REPOS_LOCKED, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0))
  %52 = call %struct.TYPE_14__* @svn_error_create(i32 %50, i32* null, i32 %51)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %4, align 8
  br label %94

53:                                               ; preds = %42
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %56 = call %struct.TYPE_14__* (i32*, i32, ...) @svn_cmdline_printf(i32* %54, i32 %55)
  %57 = call i32 @SVN_ERR(%struct.TYPE_14__* %56)
  %58 = load i32, i32* @stdout, align 4
  %59 = call %struct.TYPE_14__* @svn_cmdline_fflush(i32 %58)
  %60 = call i32 @SVN_ERR(%struct.TYPE_14__* %59)
  %61 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %11, align 8
  %62 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @repos_notify_handler, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @check_cancel, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call %struct.TYPE_14__* @svn_repos_recover4(i32 %63, i32 %64, i32 %65, i32* %66, i32 %67, i32* null, i32* %68)
  %70 = call i32 @SVN_ERR(%struct.TYPE_14__* %69)
  br label %71

71:                                               ; preds = %53, %3
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %74 = call %struct.TYPE_14__* (i32*, i32, ...) @svn_cmdline_printf(i32* %72, i32 %73)
  %75 = call i32 @SVN_ERR(%struct.TYPE_14__* %74)
  %76 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %11, align 8
  %77 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %11, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call %struct.TYPE_14__* @open_repos(i32** %9, i32 %78, %struct.svnadmin_opt_state* %79, i32* %80)
  %82 = call i32 @SVN_ERR(%struct.TYPE_14__* %81)
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @svn_repos_fs(i32* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = call %struct.TYPE_14__* @svn_fs_youngest_rev(i32* %8, i32 %84, i32* %85)
  %87 = call i32 @SVN_ERR(%struct.TYPE_14__* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.TYPE_14__* (i32*, i32, ...) @svn_cmdline_printf(i32* %88, i32 %89, i32 %90)
  %92 = call i32 @SVN_ERR(%struct.TYPE_14__* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %4, align 8
  br label %94

94:                                               ; preds = %71, %49, %40
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %95
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @parse_args(i32*, i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32 @svn_cmdline__disable_cancellation_handler(...) #1

declare dso_local %struct.TYPE_14__* @svn_repos_recover4(i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EAGAIN(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_14__* @svn_cmdline_printf(i32*, i32, ...) #1

declare dso_local %struct.TYPE_14__* @svn_cmdline_fflush(i32) #1

declare dso_local %struct.TYPE_14__* @open_repos(i32**, i32, %struct.svnadmin_opt_state*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i32 @svn_repos_fs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
