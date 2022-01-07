; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_delete_ignore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_delete_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_incoming_delete_details* }
%struct.conflict_tree_local_missing_details = type { i32* }
%struct.conflict_tree_incoming_delete_details = type { i32* }

@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_edited = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_missing = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ignore the deletion of '^/%s@%ld'\00", align 1
@svn_client_conflict_option_incoming_delete_ignore = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Ignore incoming deletion\00", align 1
@resolve_incoming_delete_ignore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32*, i32*, i32*)* @configure_option_incoming_delete_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_incoming_delete_ignore(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.conflict_tree_local_missing_details*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_8__* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = call i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_8__* %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i64 @svn_client_conflict_get_local_change(%struct.TYPE_8__* %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %13, i32* %14, i32* null, %struct.TYPE_8__* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %36, align 8
  store %struct.conflict_tree_incoming_delete_details* %37, %struct.conflict_tree_incoming_delete_details** %16, align 8
  %38 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %16, align 8
  %39 = icmp ne %struct.conflict_tree_incoming_delete_details* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %16, align 8
  %42 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i1 [ false, %34 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %17, align 4
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @svn_wc_conflict_reason_edited, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51, %45
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %5, align 8
  br label %118

60:                                               ; preds = %55
  br label %103

61:                                               ; preds = %51
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %5, align 8
  br label %118

70:                                               ; preds = %65
  br label %102

71:                                               ; preds = %61
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @svn_wc_conflict_reason_missing, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @svn_wc_operation_merge, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %81, align 8
  store %struct.conflict_tree_local_missing_details* %82, %struct.conflict_tree_local_missing_details** %18, align 8
  %83 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %84 = icmp ne %struct.conflict_tree_local_missing_details* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %87 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br label %90

90:                                               ; preds = %85, %79
  %91 = phi i1 [ false, %79 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %5, align 8
  br label %118

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %75, %71
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102, %60
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %106 = load i8*, i8** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i8* @apr_psprintf(i32* %104, i32 %105, i8* %106, i32 %107)
  store i8* %108, i8** %15, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = load i32, i32* @svn_client_conflict_option_incoming_delete_ignore, align 4
  %112 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i8*, i8** %15, align 8
  %114 = load i32, i32* @resolve_incoming_delete_ignore, align 4
  %115 = call i32 @add_resolution_option(i32* %109, %struct.TYPE_8__* %110, i32 %111, i32 %112, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %103, %4
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %5, align 8
  br label %118

118:                                              ; preds = %116, %98, %68, %58
  %119 = load i32*, i32** %5, align 8
  ret i32* %119
}

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_8__*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_8__*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @add_resolution_option(i32*, %struct.TYPE_8__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
