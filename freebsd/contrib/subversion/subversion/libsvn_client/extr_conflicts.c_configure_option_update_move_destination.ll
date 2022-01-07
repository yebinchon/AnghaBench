; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_update_move_destination.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_update_move_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_client_conflict_option_update_move_destination = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Update move destination\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"apply incoming changes to move destination\00", align 1
@resolve_update_moved_away_node = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @configure_option_update_move_destination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_update_move_destination(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @svn_client_conflict_get_operation(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @svn_client_conflict_get_incoming_change(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @svn_client_conflict_get_local_change(i32* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @svn_wc_operation_update, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @svn_wc_operation_switch, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17, %2
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @svn_client_conflict_option_update_move_destination, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @resolve_update_moved_away_node, align 4
  %36 = call i32 @add_resolution_option(i32* %30, i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %25, %21, %17
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %38
}

declare dso_local i64 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i32 @add_resolution_option(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
