; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_incoming_add_ignore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_incoming_add_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 (i32, i32, i32*)* }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @resolve_incoming_add_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_incoming_add_ignore(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_10__* %13)
  store i8* %14, i8** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_10__* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %10, i32 %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @svn_wc_operation_update, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @verify_local_state_for_incoming_add_upon_update(%struct.TYPE_10__* %29, i32* %30, %struct.TYPE_9__* %31, i32* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %63

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @svn_wc__del_tree_conflict(i32 %41, i8* %42, i32* %43)
  store i32* %44, i32** %12, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %46, align 8
  %48 = icmp ne i32 (i32, i32, i32*)* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %38
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @svn_wc_create_notify(i8* %56, i32 %57, i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 %52(i32 %55, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %49, %38
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32*, i32** %12, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @svn_wc__release_write_lock(i32 %67, i8* %68, i32* %69)
  %71 = call i32* @svn_error_compose_create(i32* %64, i32 %70)
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @SVN_ERR(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @svn_client_conflict_option_get_id(i32* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_10__*) #1

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_10__*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @verify_local_state_for_incoming_add_upon_update(%struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
