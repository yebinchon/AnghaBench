; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_accept_current_wc_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_accept_current_wc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_replaced = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@resolve_update_break_moved_away = common dso_local global i32 0, align 4
@resolve_accept_current_wc_state = common dso_local global i32 0, align 4
@svn_client_conflict_option_accept_current_wc_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Mark as resolved\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"accept current working copy state\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @configure_option_accept_current_wc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_accept_current_wc_state(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @svn_client_conflict_get_operation(i32* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @svn_client_conflict_get_incoming_change(i32* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @svn_client_conflict_get_local_change(i32* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @svn_wc_operation_update, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @svn_wc_operation_switch, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %26, %22
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @resolve_update_break_moved_away, align 4
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %34, %30, %18
  %41 = load i32, i32* @resolve_accept_current_wc_state, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @svn_client_conflict_option_accept_current_wc_state, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @add_resolution_option(i32* %43, i32* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %50
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
