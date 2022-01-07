; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_print_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_print_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_history_baton = type { i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%8ld   %s <%s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%8ld   %s\0A\00", align 1
@SVN_ERR_CEASE_INVOCATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"History item limit reached\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*)* @print_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_history(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.print_history_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.print_history_baton*
  store %struct.print_history_baton* %15, %struct.print_history_baton** %10, align 8
  %16 = call i32 @check_cancel(i32* null)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.print_history_baton*, %struct.print_history_baton** %10, align 8
  %19 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = load %struct.print_history_baton*, %struct.print_history_baton** %10, align 8
  %24 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @svn_fs_revision_root(i32** %12, i32 %25, i32 %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %12, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @svn_fs_node_id(i32** %11, i32* %30, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call %struct.TYPE_3__* @svn_fs_unparse_id(i32* %35, i32* %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %13, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32*, i8*, i32, i8*, ...) @svn_cmdline_printf(i32* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %40, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %52

46:                                               ; preds = %4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i32*, i8*, i32, i8*, ...) @svn_cmdline_printf(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %46, %22
  %53 = load %struct.print_history_baton*, %struct.print_history_baton** %10, align 8
  %54 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.print_history_baton*, %struct.print_history_baton** %10, align 8
  %59 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.print_history_baton*, %struct.print_history_baton** %10, align 8
  %63 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.print_history_baton*, %struct.print_history_baton** %10, align 8
  %66 = getelementptr inbounds %struct.print_history_baton, %struct.print_history_baton* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32, i32* @SVN_ERR_CEASE_INVOCATION, align 4
  %71 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32* @svn_error_create(i32 %70, i32* null, i32 %71)
  store i32* %72, i32** %5, align 8
  br label %76

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %5, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32*, i32** %5, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_cancel(i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_node_id(i32**, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_fs_unparse_id(i32*, i32*) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
