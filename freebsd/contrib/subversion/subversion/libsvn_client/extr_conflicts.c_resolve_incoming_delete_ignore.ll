; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_incoming_delete_ignore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_incoming_delete_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 (i32, i32, i32*)* }

@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32*)* @resolve_incoming_delete_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_incoming_delete_ignore(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @svn_client_conflict_option_get_id(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_9__* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %11, i32 %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @verify_local_state_for_incoming_delete(%struct.TYPE_9__* %25, i32* %26, %struct.TYPE_8__* %27, i32* %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %58

33:                                               ; preds = %4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @svn_wc__del_tree_conflict(i32 %36, i8* %37, i32* %38)
  store i32* %39, i32** %12, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %41, align 8
  %43 = icmp ne i32 (i32, i32, i32*)* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @svn_wc_create_notify(i8* %51, i32 %52, i32* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 %47(i32 %50, i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %44, %33
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @svn_wc__release_write_lock(i32 %62, i8* %63, i32* %64)
  %66 = call i32* @svn_error_compose_create(i32* %59, i32 %65)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @SVN_ERR(i32* %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %72
}

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_9__*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @verify_local_state_for_incoming_delete(%struct.TYPE_9__*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
