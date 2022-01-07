; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_tree_get_details.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_tree_get_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)* }
%struct.TYPE_11__ = type { i32, i32 (i32, i32*, i32*)* }

@svn_wc_notify_begin_search_tree_conflict_details = common dso_local global i32 0, align 4
@svn_wc_notify_end_search_tree_conflict_details = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_tree_get_details(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @assert_tree_conflict(%struct.TYPE_12__* %9, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %14, align 8
  %16 = icmp ne i32 (i32, i32*, i32*)* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i32 @svn_client_conflict_get_local_abspath(%struct.TYPE_12__* %18)
  %20 = load i32, i32* @svn_wc_notify_begin_search_tree_conflict_details, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @svn_wc_create_notify(i32 %19, i32 %20, i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 %25(i32 %28, i32* %29, i32* %30)
  br label %32

32:                                               ; preds = %17, %3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 %40(%struct.TYPE_12__* %41, %struct.TYPE_11__* %42, i32* %43)
  %45 = call i32 @ignore_authz_failures(i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)** %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 %55(%struct.TYPE_12__* %56, %struct.TYPE_11__* %57, i32* %58)
  %60 = call i32 @ignore_authz_failures(i32 %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %52, %47
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %64, align 8
  %66 = icmp ne i32 (i32, i32*, i32*)* %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = call i32 @svn_client_conflict_get_local_abspath(%struct.TYPE_12__* %68)
  %70 = load i32, i32* @svn_wc_notify_end_search_tree_conflict_details, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i32* @svn_wc_create_notify(i32 %69, i32 %70, i32* %71)
  store i32* %72, i32** %8, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 %75(i32 %78, i32* %79, i32* %80)
  br label %82

82:                                               ; preds = %67, %62
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assert_tree_conflict(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_get_local_abspath(%struct.TYPE_12__*) #1

declare dso_local i32 @ignore_authz_failures(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
