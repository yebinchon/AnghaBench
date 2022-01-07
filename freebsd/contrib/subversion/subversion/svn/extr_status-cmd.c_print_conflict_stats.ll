; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status-cmd.c_print_conflict_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status-cmd.c_print_conflict_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_baton = type { i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Summary of conflicts:\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  Text conflicts: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  Property conflicts: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  Tree conflicts: %u\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.status_baton*, i32*)* @print_conflict_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_conflict_stats(%struct.status_baton* %0, i32* %1) #0 {
  %3 = alloca %struct.status_baton*, align 8
  %4 = alloca i32*, align 8
  store %struct.status_baton* %0, %struct.status_baton** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %6 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %11 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %16 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %9, %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @svn_cmdline_printf(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %26 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %33 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @svn_cmdline_printf(i32* %30, i8* %31, i8* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %40 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %47 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @svn_cmdline_printf(i32* %44, i8* %45, i8* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %54 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.status_baton*, %struct.status_baton** %3, align 8
  %61 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @svn_cmdline_printf(i32* %58, i8* %59, i8* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %57, %52
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
