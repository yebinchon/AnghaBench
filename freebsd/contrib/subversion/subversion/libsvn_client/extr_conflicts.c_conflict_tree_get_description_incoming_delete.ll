; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_description_incoming_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_description_incoming_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.conflict_tree_incoming_delete_details* }
%struct.conflict_tree_incoming_delete_details = type { i64 }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_8__*, i32*, i32*, i32*)* @conflict_tree_get_description_incoming_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_tree_get_description_incoming_delete(i8** %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %21, align 8
  %23 = icmp eq %struct.conflict_tree_incoming_delete_details* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load i8**, i8*** %7, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @conflict_tree_get_incoming_description_generic(i8** %25, %struct.TYPE_8__* %26, i32* %27, i32* %28, i32* %29)
  %31 = call i32* @svn_error_trace(i32 %30)
  store i32* %31, i32** %6, align 8
  br label %143

32:                                               ; preds = %5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_8__* %33)
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = call i32 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_8__* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %15, i32* %16, i32* null, %struct.TYPE_8__* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %17, i32* %18, i32* null, %struct.TYPE_8__* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %48, align 8
  store %struct.conflict_tree_incoming_delete_details* %49, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @svn_wc_operation_update, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %32
  %54 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %55 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i8* @describe_incoming_deletion_upon_update(%struct.conflict_tree_incoming_delete_details* %60, i32 %61, i32 %62, i32 %63, i32* %64, i32* %65)
  store i8* %66, i8** %12, align 8
  br label %74

67:                                               ; preds = %53
  %68 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i8* @describe_incoming_reverse_addition_upon_update(%struct.conflict_tree_incoming_delete_details* %68, i32 %69, i32 %70, i32 %71, i32* %72)
  store i8* %73, i8** %12, align 8
  br label %74

74:                                               ; preds = %67, %59
  br label %137

75:                                               ; preds = %32
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @svn_wc_operation_switch, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %81 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i8* @describe_incoming_deletion_upon_switch(%struct.conflict_tree_incoming_delete_details* %86, i32 %87, i8* %88, i32 %89, i8* %90, i32 %91, i32* %92, i32* %93)
  store i8* %94, i8** %12, align 8
  br label %104

95:                                               ; preds = %79
  %96 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i8*, i8** %15, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load i8*, i8** %17, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = call i8* @describe_incoming_reverse_addition_upon_switch(%struct.conflict_tree_incoming_delete_details* %96, i32 %97, i8* %98, i32 %99, i8* %100, i32 %101, i32* %102)
  store i8* %103, i8** %12, align 8
  br label %104

104:                                              ; preds = %95, %85
  br label %136

105:                                              ; preds = %75
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* @svn_wc_operation_merge, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %111 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i8* @describe_incoming_deletion_upon_merge(%struct.conflict_tree_incoming_delete_details* %116, i32 %117, i8* %118, i32 %119, i8* %120, i32 %121, i32* %122, i32* %123)
  store i8* %124, i8** %12, align 8
  br label %134

125:                                              ; preds = %109
  %126 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i8*, i8** %15, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i8*, i8** %17, align 8
  %131 = load i32, i32* %18, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = call i8* @describe_incoming_reverse_addition_upon_merge(%struct.conflict_tree_incoming_delete_details* %126, i32 %127, i8* %128, i32 %129, i8* %130, i32 %131, i32* %132)
  store i8* %133, i8** %12, align 8
  br label %134

134:                                              ; preds = %125, %115
  br label %135

135:                                              ; preds = %134, %105
  br label %136

136:                                              ; preds = %135, %104
  br label %137

137:                                              ; preds = %136, %74
  %138 = load i32*, i32** %10, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = call i8* @apr_pstrdup(i32* %138, i8* %139)
  %141 = load i8**, i8*** %7, align 8
  store i8* %140, i8** %141, align 8
  %142 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %142, i32** %6, align 8
  br label %143

143:                                              ; preds = %137, %24
  %144 = load i32*, i32** %6, align 8
  ret i32* %144
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @conflict_tree_get_incoming_description_generic(i8**, %struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i32*, i32*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i8* @describe_incoming_deletion_upon_update(%struct.conflict_tree_incoming_delete_details*, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @describe_incoming_reverse_addition_upon_update(%struct.conflict_tree_incoming_delete_details*, i32, i32, i32, i32*) #1

declare dso_local i8* @describe_incoming_deletion_upon_switch(%struct.conflict_tree_incoming_delete_details*, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @describe_incoming_reverse_addition_upon_switch(%struct.conflict_tree_incoming_delete_details*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i8* @describe_incoming_deletion_upon_merge(%struct.conflict_tree_incoming_delete_details*, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @describe_incoming_reverse_addition_upon_merge(%struct.conflict_tree_incoming_delete_details*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
