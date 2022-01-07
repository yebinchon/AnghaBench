; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_do_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.print_history_baton = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"REVISION   PATH <ID>\0A--------   ---------\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"REVISION   PATH\0A--------   ----\0A\00", align 1
@print_history = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*)* @do_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_history(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.print_history_baton, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @svn_cmdline_printf(i32* %13, i32 %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  br label %22

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @svn_cmdline_printf(i32* %18, i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %7, i32 0, i32 2
  store i64 %29, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %7, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @print_history, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @svn_repos_history2(i32 %38, i8* %39, i32 %40, %struct.print_history_baton* %7, i32* null, i32* null, i32 0, i32 %43, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %48
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_repos_history2(i32, i8*, i32, %struct.print_history_baton*, i32*, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
