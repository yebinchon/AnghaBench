; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnlook_opt_state = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [446 x i8] c"general usage: svnlook SUBCOMMAND REPOS_PATH [ARGS & OPTIONS ...]\0ASubversion repository inspection tool.\0AType 'svnlook help <subcommand>' for help on a specific subcommand.\0AType 'svnlook --version' to see the program version and FS modules.\0ANote: any subcommand which takes the '--revision' and '--transaction'\0A      options will, if invoked without one of those options, act on\0A      the repository's youngest revision.\0A\0AAvailable subcommands:\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"The following repository back-end (FS) modules are available:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"svnlook\00", align 1
@FALSE = common dso_local global i32 0, align 4
@cmd_table = common dso_local global i32 0, align 4
@options_table = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_help(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svnlook_opt_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.svnlook_opt_state*
  store %struct.svnlook_opt_state* %12, %struct.svnlook_opt_state** %7, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([446 x i8], [446 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %8, align 8
  %14 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.TYPE_4__* @svn_stringbuf_create(i8* %15, i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @svn_fs_print_modules(%struct.TYPE_4__* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %24 = icmp ne %struct.svnlook_opt_state* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %27 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @FALSE, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %33 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %34 = icmp ne %struct.svnlook_opt_state* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %37 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @FALSE, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %38, %35 ], [ %40, %39 ]
  %43 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %44 = icmp ne %struct.svnlook_opt_state* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %47 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @FALSE, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %48, %45 ], [ %50, %49 ]
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @cmd_table, align 4
  %58 = load i32, i32* @options_table, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @svn_opt_print_help4(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %42, i32 %52, i32 %55, i8* %56, i32 %57, i32 %58, i32* null, i32* null, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_print_modules(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @svn_opt_print_help4(i32*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
