; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_accept_current_wc_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_accept_current_wc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 (i32, i32, i32*)* }

@svn_client_conflict_option_accept_current_wc_state = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Tree conflict on '%s' can only be resolved to the current working copy state\00", align 1
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32*)* @resolve_accept_current_wc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_accept_current_wc_state(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @svn_client_conflict_option_get_id(i32* %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_7__* %16)
  store i8* %17, i8** %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @svn_client_conflict_option_accept_current_wc_state, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @svn_dirent_local_style(i8* %24, i32* %25)
  %27 = call i32* @svn_error_createf(i32 %22, i32* null, i32 %23, i32 %26)
  store i32* %27, i32** %5, align 8
  br label %75

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %12, i32 %31, i8* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @svn_wc__del_tree_conflict(i32 %39, i8* %40, i32* %41)
  store i32* %42, i32** %13, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %44, align 8
  %46 = icmp ne i32 (i32, i32, i32*)* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %28
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @svn_wc_create_notify(i8* %54, i32 %55, i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 %50(i32 %53, i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %47, %28
  %61 = load i32*, i32** %13, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @svn_wc__release_write_lock(i32 %64, i8* %65, i32* %66)
  %68 = call i32* @svn_error_compose_create(i32* %61, i32 %67)
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @SVN_ERR(i32* %69)
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %5, align 8
  br label %75

75:                                               ; preds = %60, %21
  %76 = load i32*, i32** %5, align 8
  ret i32* %76
}

declare dso_local i64 @svn_client_conflict_option_get_id(i32*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_7__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
