; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_description_incoming_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_description_incoming_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.conflict_tree_incoming_add_details* }
%struct.conflict_tree_incoming_add_details = type { i32 }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_8__*, i32*, i32*, i32*)* @conflict_tree_get_description_incoming_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_tree_get_description_incoming_add(i8** %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.conflict_tree_incoming_add_details*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %23, align 8
  %25 = icmp eq %struct.conflict_tree_incoming_add_details* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load i8**, i8*** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @conflict_tree_get_incoming_description_generic(i8** %27, %struct.TYPE_8__* %28, i32* %29, i32* %30, i32* %31)
  %33 = call i32* @svn_error_trace(i32 %32)
  store i32* %33, i32** %6, align 8
  br label %105

34:                                               ; preds = %5
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_8__* %35)
  store i64 %36, i64* %14, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = call i32 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_8__* %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %15, i64* %16, i32* %17, %struct.TYPE_8__* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %18, i64* %19, i32* %20, %struct.TYPE_8__* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %50, align 8
  store %struct.conflict_tree_incoming_add_details* %51, %struct.conflict_tree_incoming_add_details** %21, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @svn_wc_operation_update, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %34
  %56 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %21, align 8
  %57 = load i32, i32* %20, align 4
  %58 = load i64, i64* %19, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i8* @describe_incoming_add_upon_update(%struct.conflict_tree_incoming_add_details* %56, i32 %57, i64 %58, i32* %59)
  store i8* %60, i8** %12, align 8
  br label %99

61:                                               ; preds = %34
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @svn_wc_operation_switch, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %21, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i8*, i8** %18, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i8* @describe_incoming_add_upon_switch(%struct.conflict_tree_incoming_add_details* %66, i32 %67, i8* %68, i64 %69, i32* %70)
  store i8* %71, i8** %12, align 8
  br label %98

72:                                               ; preds = %61
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* @svn_wc_operation_merge, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %19, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %21, align 8
  %82 = load i32, i32* %20, align 4
  %83 = load i64, i64* %16, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i8* @describe_incoming_add_upon_merge(%struct.conflict_tree_incoming_add_details* %81, i32 %82, i64 %83, i8* %84, i64 %85, i32* %86)
  store i8* %87, i8** %12, align 8
  br label %96

88:                                               ; preds = %76
  %89 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %21, align 8
  %90 = load i32, i32* %20, align 4
  %91 = load i8*, i8** %15, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %19, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i8* @describe_incoming_reverse_deletion_upon_merge(%struct.conflict_tree_incoming_add_details* %89, i32 %90, i8* %91, i64 %92, i64 %93, i32* %94)
  store i8* %95, i8** %12, align 8
  br label %96

96:                                               ; preds = %88, %80
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %65
  br label %99

99:                                               ; preds = %98, %55
  %100 = load i32*, i32** %10, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i8* @apr_pstrdup(i32* %100, i8* %101)
  %103 = load i8**, i8*** %7, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %6, align 8
  br label %105

105:                                              ; preds = %99, %26
  %106 = load i32*, i32** %6, align 8
  ret i32* %106
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @conflict_tree_get_incoming_description_generic(i8**, %struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i64*, i32*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i64*, i32*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i8* @describe_incoming_add_upon_update(%struct.conflict_tree_incoming_add_details*, i32, i64, i32*) #1

declare dso_local i8* @describe_incoming_add_upon_switch(%struct.conflict_tree_incoming_add_details*, i32, i8*, i64, i32*) #1

declare dso_local i8* @describe_incoming_add_upon_merge(%struct.conflict_tree_incoming_add_details*, i32, i64, i8*, i64, i32*) #1

declare dso_local i8* @describe_incoming_reverse_deletion_upon_merge(%struct.conflict_tree_incoming_add_details*, i32, i8*, i64, i64, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
