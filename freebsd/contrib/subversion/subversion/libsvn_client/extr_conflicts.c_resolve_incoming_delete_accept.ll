; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_incoming_delete_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_incoming_delete_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 (i32, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (i32*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*)* @resolve_incoming_delete_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @resolve_incoming_delete_accept(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @svn_client_conflict_option_get_id(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_21__* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i8* @svn_dirent_dirname(i8* %18, i32* %19)
  store i8* %20, i8** %11, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.TYPE_19__* @svn_wc__acquire_write_lock_for_resolve(i8** %12, i32 %23, i8* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(%struct.TYPE_19__* %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call %struct.TYPE_19__* @verify_local_state_for_incoming_delete(%struct.TYPE_21__* %29, i32* %30, %struct.TYPE_20__* %31, i32* %32)
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %13, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %35 = icmp ne %struct.TYPE_19__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %93

37:                                               ; preds = %4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call %struct.TYPE_19__* @svn_wc_delete4(i32 %40, i8* %41, i32 %42, i32 %43, i32* null, i32* null, i32 (i32, i32, i32*)* %46, i32 %49, i32* %50)
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %13, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %53 = icmp ne %struct.TYPE_19__* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %37
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %62 = call i32 @svn_error_clear(%struct.TYPE_19__* %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call %struct.TYPE_19__* @svn_wc__del_tree_conflict(i32 %65, i8* %66, i32* %67)
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %13, align 8
  br label %69

69:                                               ; preds = %60, %54
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %71 = icmp ne %struct.TYPE_19__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %93

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %37
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %76, align 8
  %78 = icmp ne i32 (i32, i32, i32*)* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @svn_wc_create_notify(i8* %86, i32 %87, i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 %82(i32 %85, i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %79, %74
  br label %93

93:                                               ; preds = %92, %72, %36
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @svn_wc__release_write_lock(i32 %97, i8* %98, i32* %99)
  %101 = call %struct.TYPE_19__* @svn_error_compose_create(%struct.TYPE_19__* %94, i32 %100)
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %13, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %103 = call i32 @SVN_ERR(%struct.TYPE_19__* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_19__* %107
}

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_21__*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @verify_local_state_for_incoming_delete(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_wc_delete4(i32, i8*, i32, i32, i32*, i32*, i32 (i32, i32, i32*)*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_error_compose_create(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
