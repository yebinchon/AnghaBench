; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnfsfs/extr_svnfsfs.c_subcommand__help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnfsfs/extr_svnfsfs.c_subcommand__help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [259 x i8] c"general usage: svnfsfs SUBCOMMAND REPOS_PATH  [ARGS & OPTIONS ...]\0ASubversion FSFS repository manipulation tool.\0AType 'svnfsfs help <subcommand>' for help on a specific subcommand.\0AType 'svnfsfs --version' to see the program version.\0A\0AAvailable subcommands:\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"svnfsfs\00", align 1
@FALSE = common dso_local global i32 0, align 4
@cmd_table = common dso_local global i32 0, align 4
@options_table = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @subcommand__help(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = call i8* @_(i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @FALSE, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %18, %15 ], [ %20, %19 ]
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @FALSE, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @cmd_table, align 4
  %36 = load i32, i32* @options_table, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @svn_opt_print_help4(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %32, i32 %33, i32* null, i8* %34, i32 %35, i32 %36, i32* null, i32* null, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %40
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_opt_print_help4(i32*, i8*, i32, i32, i32, i32*, i8*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
