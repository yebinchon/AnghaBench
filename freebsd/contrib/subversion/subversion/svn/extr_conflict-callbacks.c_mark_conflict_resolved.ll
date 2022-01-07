; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_mark_conflict_resolved.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_mark_conflict_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_conflict_kind_text = common dso_local global i32 0, align 4
@svn_wc_conflict_kind_property = common dso_local global i32 0, align 4
@svn_wc_conflict_kind_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i64, i8*, i64, i8*, i32*, i32*, i32*)* @mark_conflict_resolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mark_conflict_resolved(i32* %0, i32 %1, i64 %2, i8* %3, i64 %4, i8* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @svn_client_conflict_get_local_abspath(i32* %21)
  %23 = load i32*, i32** %18, align 8
  %24 = call i8* @svn_cl__local_style_skip_ancestor(i8* %20, i32 %22, i32* %23)
  store i8* %24, i8** %19, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %9
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %17, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = call i32 @svn_client_conflict_text_resolve_by_id(i32* %28, i32 %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %16, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = load i32, i32* @svn_wc_conflict_kind_text, align 4
  %37 = call i32 @svn_cl__conflict_stats_resolved(i32* %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %27, %9
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %17, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @svn_client_conflict_prop_resolve_by_id(i32* %42, i8* %43, i32 %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %16, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load i32, i32* @svn_wc_conflict_kind_property, align 4
  %52 = call i32 @svn_cl__conflict_stats_resolved(i32* %49, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @svn_client_conflict_tree_resolve_by_id(i32* %57, i32 %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %16, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = load i32, i32* @svn_wc_conflict_kind_tree, align 4
  %66 = call i32 @svn_cl__conflict_stats_resolved(i32* %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local i8* @svn_cl__local_style_skip_ancestor(i8*, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_text_resolve_by_id(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_cl__conflict_stats_resolved(i32*, i8*, i32) #1

declare dso_local i32 @svn_client_conflict_prop_resolve_by_id(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_tree_resolve_by_id(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
