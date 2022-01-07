; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_revision_status_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_revision_status_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i32, i32*)* @revision_status_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @revision_status_txn(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, i32* %7, i8* %8, i32 %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_9__*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = load i8*, i8** %19, align 8
  %28 = call i32 @does_node_exist(i32* %25, i32* %26, i8* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32, i32* %25, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %11
  %33 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %34 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %18, align 8
  %36 = load i8*, i8** %19, align 8
  %37 = load i32*, i32** %23, align 8
  %38 = call i32 @path_for_error_message(i32* %35, i8* %36, i32* %37)
  %39 = call %struct.TYPE_9__* @svn_error_createf(i64 %33, i32* null, i32 %34, i32 %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %12, align 8
  br label %85

40:                                               ; preds = %11
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = load i32, i32* %22, align 4
  %46 = load i32*, i32** %23, align 8
  %47 = call i32 @get_min_max_revisions(i32* %41, i32* %42, i32* %43, i8* %44, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = load i32*, i32** %23, align 8
  %53 = call i32 @is_sparse_checkout_internal(i32* %49, i32* %50, i8* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %17, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load i8*, i8** %21, align 8
  %59 = load i32*, i32** %23, align 8
  %60 = call %struct.TYPE_9__* @has_switched_subtrees(i32* %55, i32* %56, i8* %57, i8* %58, i32* %59)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %24, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %40
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %71 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %70)
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %12, align 8
  br label %85

72:                                               ; preds = %63
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %74 = call i32 @svn_error_clear(%struct.TYPE_9__* %73)
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32*, i32** %17, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %40
  %78 = load i32*, i32** %16, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = load i8*, i8** %19, align 8
  %81 = load i32*, i32** %23, align 8
  %82 = call i32 @has_db_mods(i32* %78, i32* %79, i8* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %12, align 8
  br label %85

85:                                               ; preds = %77, %69, %32
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  ret %struct.TYPE_9__* %86
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @does_node_exist(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @svn_error_createf(i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(i32*, i8*, i32*) #1

declare dso_local i32 @get_min_max_revisions(i32*, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @is_sparse_checkout_internal(i32*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @has_switched_subtrees(i32*, i32*, i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @has_db_mods(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
