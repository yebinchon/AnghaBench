; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.svnadmin_opt_state = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@repos_notify_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@SVN_ERR_REPOS_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"Failed to get exclusive repository access; perhaps another process\0Asuch as httpd, svnserve or svn has it open?\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Waiting on repository lock; perhaps another process has it open?\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_UNSUPPORTED_UPGRADE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [127 x i8] c"Upgrade of this repository's underlying versioned filesystem is not supported; consider dumping and loading the data elsewhere\00", align 1
@SVN_ERR_REPOS_UNSUPPORTED_UPGRADE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [93 x i8] c"Upgrade of this repository is not supported; consider dumping and loading the data elsewhere\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\0AUpgrade completed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, i8*, i32*)* @subcommand_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @subcommand_upgrade(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.svnadmin_opt_state*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %12, %struct.svnadmin_opt_state** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.TYPE_14__* @parse_args(i32* null, i32* %13, i32 0, i32 0, i32* %14)
  %16 = call i32 @SVN_ERR(%struct.TYPE_14__* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_14__* @svn_stream_for_stdout(i32** %10, i32* %17)
  %19 = call i32 @SVN_ERR(%struct.TYPE_14__* %18)
  %20 = call i32 (...) @svn_cmdline__disable_cancellation_handler()
  %21 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %22 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* @repos_notify_handler, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.TYPE_14__* @svn_repos_upgrade2(i32 %23, i32 %24, i32 %25, i32* %26, i32* %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %8, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %89

31:                                               ; preds = %3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @APR_STATUS_IS_EAGAIN(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = call i32 @svn_error_clear(%struct.TYPE_14__* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %8, align 8
  %41 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %42 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @SVN_ERR_REPOS_LOCKED, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0))
  %48 = call %struct.TYPE_14__* @svn_error_create(i32 %46, i32* null, i32 %47)
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %4, align 8
  br label %97

49:                                               ; preds = %37
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %52 = call %struct.TYPE_14__* @svn_cmdline_printf(i32* %50, i32 %51)
  %53 = call i32 @SVN_ERR(%struct.TYPE_14__* %52)
  %54 = load i32, i32* @stdout, align 4
  %55 = call %struct.TYPE_14__* @svn_cmdline_fflush(i32 %54)
  %56 = call i32 @SVN_ERR(%struct.TYPE_14__* %55)
  %57 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %58 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32, i32* @repos_notify_handler, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call %struct.TYPE_14__* @svn_repos_upgrade2(i32 %59, i32 %60, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(%struct.TYPE_14__* %64)
  br label %88

66:                                               ; preds = %31
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SVN_ERR_FS_UNSUPPORTED_UPGRADE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = call i32 @_(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.2, i64 0, i64 0))
  %75 = call %struct.TYPE_14__* @svn_error_quick_wrap(%struct.TYPE_14__* %73, i32 %74)
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %4, align 8
  br label %97

76:                                               ; preds = %66
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SVN_ERR_REPOS_UNSUPPORTED_UPGRADE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0))
  %85 = call %struct.TYPE_14__* @svn_error_quick_wrap(%struct.TYPE_14__* %83, i32 %84)
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %4, align 8
  br label %97

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %49
  br label %89

89:                                               ; preds = %88, %3
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = call i32 @SVN_ERR(%struct.TYPE_14__* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %94 = call %struct.TYPE_14__* @svn_cmdline_printf(i32* %92, i32 %93)
  %95 = call i32 @SVN_ERR(%struct.TYPE_14__* %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %4, align 8
  br label %97

97:                                               ; preds = %89, %82, %72, %45
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %98
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @parse_args(i32*, i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32 @svn_cmdline__disable_cancellation_handler(...) #1

declare dso_local %struct.TYPE_14__* @svn_repos_upgrade2(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i64) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_14__* @svn_cmdline_printf(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @svn_cmdline_fflush(i32) #1

declare dso_local %struct.TYPE_14__* @svn_error_quick_wrap(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
