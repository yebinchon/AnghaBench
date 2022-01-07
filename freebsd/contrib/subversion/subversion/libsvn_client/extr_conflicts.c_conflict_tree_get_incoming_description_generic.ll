; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_incoming_description_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_incoming_description_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@svn_wc_conflict_action_add = common dso_local global i64 0, align 8
@svn_wc_conflict_action_replace = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"incoming %s %s\00", align 1
@map_conflict_action = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i32*, i32*)* @conflict_tree_get_incoming_description_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_tree_get_incoming_description_generic(i8** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @svn_client_conflict_get_incoming_change(i32* %15)
  store i64 %16, i64* %13, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @svn_client_conflict_get_operation(i32* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @svn_node_unknown, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i32* null, i32* null, i32* %12, i32* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  br label %48

33:                                               ; preds = %23
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @svn_wc_conflict_action_add, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @svn_wc_conflict_action_replace, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %33
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i32* null, i32* null, i32* %12, i32* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* %12, align 4
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i8* @describe_incoming_change(i32 %49, i64 %50, i32 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @apr_pstrdup(i32* %56, i8* %57)
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  br label %70

60:                                               ; preds = %48
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @svn_node_kind_to_word(i32 %63)
  %65 = load i32, i32* @map_conflict_action, align 4
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @svn_token__to_word(i32 %65, i64 %66)
  %68 = call i8* @apr_psprintf(i32* %61, i32 %62, i32 %64, i32 %67)
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %60, %55
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i64 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i32 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @describe_incoming_change(i32, i64, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_node_kind_to_word(i32) #1

declare dso_local i32 @svn_token__to_word(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
