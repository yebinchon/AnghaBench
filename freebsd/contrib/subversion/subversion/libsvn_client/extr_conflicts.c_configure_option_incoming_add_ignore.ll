; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_add_ignore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_add_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc_conflict_action_add = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_obstructed = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ignore and do not add '^/%s@%ld' here\00", align 1
@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"replace '^/%s@%ld' with the locally added file\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"replace '^/%s@%ld' with the locally added directory\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"replace '^/%s@%ld' with the locally added item\00", align 1
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unexpected operation code '%d'\00", align 1
@svn_client_conflict_option_incoming_add_ignore = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Ignore incoming addition\00", align 1
@resolve_incoming_add_ignore = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*)* @configure_option_incoming_add_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_incoming_add_ignore(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_12__* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_12__* %20)
  store i64 %21, i64* %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call i64 @svn_client_conflict_get_local_change(%struct.TYPE_12__* %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = call i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_12__* %24)
  store i64 %25, i64* %15, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %13, i32* %14, i32* null, %struct.TYPE_12__* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @svn_node_dir, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %4
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @svn_wc_conflict_action_add, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %116

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @svn_wc_conflict_reason_obstructed, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @svn_wc_conflict_reason_added, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %116

46:                                               ; preds = %42, %38
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @svn_wc__get_wcroot(i8** %17, i32 %49, i32 %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @svn_wc_operation_merge, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i8* @apr_psprintf(i32* %61, i32 %62, i8* %63, i32 %64)
  store i8* %65, i8** %16, align 8
  br label %108

66:                                               ; preds = %46
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @svn_wc_operation_update, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @svn_wc_operation_switch, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70, %66
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @svn_node_file, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i8* @apr_psprintf(i32* %79, i32 %80, i8* %81, i32 %82)
  store i8* %83, i8** %16, align 8
  br label %101

84:                                               ; preds = %74
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* @svn_node_dir, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i8* @apr_psprintf(i32* %89, i32 %90, i8* %91, i32 %92)
  store i8* %93, i8** %16, align 8
  br label %100

94:                                               ; preds = %84
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i8* @apr_psprintf(i32* %95, i32 %96, i8* %97, i32 %98)
  store i8* %99, i8** %16, align 8
  br label %100

100:                                              ; preds = %94, %88
  br label %101

101:                                              ; preds = %100, %78
  br label %107

102:                                              ; preds = %70
  %103 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %104 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i64, i64* %10, align 8
  %106 = call i32* @svn_error_createf(i32 %103, i32* null, i32 %104, i64 %105)
  store i32* %106, i32** %5, align 8
  br label %118

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %60
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = load i32, i32* @svn_client_conflict_option_incoming_add_ignore, align 4
  %112 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i8*, i8** %16, align 8
  %114 = load i32, i32* @resolve_incoming_add_ignore, align 4
  %115 = call i32 @add_resolution_option(i32* %109, %struct.TYPE_12__* %110, i32 %111, i32 %112, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %108, %42, %34, %4
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %5, align 8
  br label %118

118:                                              ; preds = %116, %102
  %119 = load i32*, i32** %5, align 8
  ret i32* %119
}

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_12__*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_12__*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(%struct.TYPE_12__*) #1

declare dso_local i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32, i32, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @add_resolution_option(i32*, %struct.TYPE_12__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
