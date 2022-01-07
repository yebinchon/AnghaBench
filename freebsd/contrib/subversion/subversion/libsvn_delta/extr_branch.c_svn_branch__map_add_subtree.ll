; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_svn_branch__map_add_subtree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_svn_branch__map_add_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i8*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32, i32, i8*, %struct.TYPE_13__*, i32*)* @svn_branch__map_add_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_branch__map_add_subtree(%struct.TYPE_15__* %0, i32 %1, i32 %2, i8* %3, %struct.TYPE_13__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = call i32* @svn_branch__txn_new_eid(i32 %23, i32* %8, i32* %24)
  %26 = call i32 @SVN_ERR(i32* %25)
  br label %27

27:                                               ; preds = %20, %6
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.TYPE_14__* @svn_element__tree_get(%struct.TYPE_13__* %28, i64 %31)
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call %struct.TYPE_14__* @svn_element__content_create(i32 %33, i8* %34, i32 %37, i32* %38)
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %14, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32* @branch_state_set_element(%struct.TYPE_15__* %40, i32 %41, %struct.TYPE_14__* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32* %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @apr_hash_first(i32* %46, i32 %49)
  store i32* %50, i32** %13, align 8
  br label %51

51:                                               ; preds = %83, %27
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_eid__hash_this_key(i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = call %struct.TYPE_14__* @apr_hash_this_val(i32* %57)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %16, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %54
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = call %struct.TYPE_13__* @svn_element__tree_create(i32 %69, i32 %70, i32* %71)
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %17, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32* @svn_branch__map_add_subtree(%struct.TYPE_15__* %73, i32 -1, i32 %74, i8* %77, %struct.TYPE_13__* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32* %80)
  br label %82

82:                                               ; preds = %66, %54
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %13, align 8
  %85 = call i32* @apr_hash_next(i32* %84)
  store i32* %85, i32** %13, align 8
  br label %51

86:                                               ; preds = %51
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_branch__txn_new_eid(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_element__tree_get(%struct.TYPE_13__*, i64) #1

declare dso_local %struct.TYPE_14__* @svn_element__content_create(i32, i8*, i32, i32*) #1

declare dso_local i32* @branch_state_set_element(%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32 @svn_eid__hash_this_key(i32*) #1

declare dso_local %struct.TYPE_14__* @apr_hash_this_val(i32*) #1

declare dso_local %struct.TYPE_13__* @svn_element__tree_create(i32, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
