; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_bump_mark_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_bump_mark_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_operation_update = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_away = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i8*, i8*, i32*, i32*)* @bump_mark_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bump_mark_tree_conflict(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @verify_write_lock(i32* %28, i8* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* %23, i32* %21, i8** %19, i32* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %33, i8* %34, i32 %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @svn_wc__db_fetch_repos_info(i8** %16, i8** %17, i32* %40, i32 %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @relpath_depth(i8* %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* %22, i32* %20, i8** %18, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %45, i8* %46, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %7
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @svn_relpath_skip_ancestor(i8* %58, i8* %59)
  store i8* %60, i8** %27, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = load i8*, i8** %27, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i8* @svn_relpath_join(i8* %61, i8* %62, i32* %63)
  store i8* %64, i8** %18, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = load i8*, i8** %27, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i8* @svn_relpath_join(i8* %65, i8* %66, i32* %67)
  store i8* %68, i8** %19, align 8
  br label %69

69:                                               ; preds = %57, %7
  %70 = load i8*, i8** %16, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = call i32* @svn_wc_conflict_version_create2(i8* %70, i8* %71, i8* %72, i32 %73, i32 %74, i32* %75)
  store i32* %76, i32** %24, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = call i32* @svn_wc_conflict_version_create2(i8* %77, i8* %78, i8* %79, i32 %80, i32 %81, i32* %82)
  store i32* %83, i32** %25, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %24, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = load i32, i32* @svn_wc_operation_update, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i8*, i8** %18, align 8
  %94 = load i32, i32* @svn_wc_conflict_reason_moved_away, align 4
  %95 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @create_tree_conflict(i32** %26, i32* %84, i8* %85, i8* %86, i32* %87, i32* %88, i32* %89, i32 %90, i32 %91, i32 %92, i8* %93, i32 %94, i32 %95, i8* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %107 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %108 = load i32*, i32** %26, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @update_move_list_add(i32* %101, i8* %102, i32* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32* %108, i32* null, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %112
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @verify_write_lock(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_depth_get_info(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i8**, i32*, i32, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_wc_conflict_version_create2(i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @create_tree_conflict(i32**, i32*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32, i8*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(i32*, i8*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
