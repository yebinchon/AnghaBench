; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_type_specific_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_type_specific_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@conflict_tree_get_incoming_description_generic = common dso_local global i32 0, align 4
@conflict_tree_get_local_description_generic = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@svn_wc_conflict_action_replace = common dso_local global i64 0, align 8
@conflict_tree_get_description_incoming_delete = common dso_local global i32 0, align 4
@conflict_tree_get_details_incoming_delete = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i64 0, align 8
@conflict_tree_get_description_incoming_add = common dso_local global i32 0, align 4
@conflict_tree_get_details_incoming_add = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@conflict_tree_get_description_incoming_edit = common dso_local global i32 0, align 4
@conflict_tree_get_details_incoming_edit = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_missing = common dso_local global i64 0, align 8
@conflict_tree_get_description_local_missing = common dso_local global i32 0, align 4
@conflict_tree_get_details_local_missing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*)* @conflict_type_specific_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_type_specific_setup(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @svn_client_conflict_get_conflicted(i32* null, i32* null, i32* %6, %struct.TYPE_6__* %9, i32* %10, i32* %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load i32, i32* @conflict_tree_get_incoming_description_generic, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @conflict_tree_get_local_description_generic, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_6__* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i64 @svn_client_conflict_get_local_change(%struct.TYPE_6__* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %18
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @svn_wc_conflict_action_replace, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32, %18
  %37 = load i32, i32* @conflict_tree_get_description_incoming_delete, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @conflict_tree_get_details_incoming_delete, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %67

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @svn_wc_conflict_action_add, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @conflict_tree_get_description_incoming_add, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @conflict_tree_get_details_incoming_add, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %66

54:                                               ; preds = %43
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* @conflict_tree_get_description_incoming_edit, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @conflict_tree_get_details_incoming_edit, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %54
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @svn_wc_conflict_reason_missing, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* @conflict_tree_get_description_local_missing, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @conflict_tree_get_details_local_missing, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %67
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %3, align 8
  br label %80

80:                                               ; preds = %78, %16
  %81 = load i32*, i32** %3, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_conflicted(i32*, i32*, i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_6__*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
