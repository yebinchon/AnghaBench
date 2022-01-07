; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_handle_tree_conflict_resolution_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_handle_tree_conflict_resolution_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i64 0, align 8
@SVN_ERR_WC_FOUND_CONFLICT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, %struct.TYPE_8__*, i32*)* @handle_tree_conflict_resolution_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @handle_tree_conflict_resolution_failure(i8* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SVN_ERR_WC_FOUND_CONFLICT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %4, align 8
  br label %38

26:                                               ; preds = %17, %11
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = call i32 @svn_error_clear(%struct.TYPE_8__* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @apr_hash_pool_get(i32* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @apr_pstrdup(i32 %30, i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @svn_hash_sets(i32* %33, i8* %34, i8* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %4, align 8
  br label %38

38:                                               ; preds = %26, %23
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %39
}

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @apr_hash_pool_get(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
