; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_update_raise_moved_away_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_update_raise_moved_away_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_replaced = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_client_conflict_option_update_any_moved_away_children = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Update any moved-away children\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"prepare for updating moved-away children, if any\00", align 1
@resolve_update_raise_moved_away = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @configure_option_update_raise_moved_away_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_update_raise_moved_away_children(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
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
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @svn_client_conflict_tree_get_victim_node_kind(i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @svn_wc_operation_update, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @svn_wc_operation_switch, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20, %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @svn_node_dir, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @svn_client_conflict_option_update_any_moved_away_children, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @resolve_update_raise_moved_away, align 4
  %47 = call i32 @add_resolution_option(i32* %41, i32* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %36, %32, %24, %20
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i64 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i64 @svn_client_conflict_tree_get_victim_node_kind(i32*) #1

declare dso_local i32 @add_resolution_option(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
