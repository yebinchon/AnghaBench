; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_branch_finalize_eids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_branch_finalize_eids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32, i32*)* @branch_finalize_eids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @branch_finalize_eids(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @branch_state_pool_get(%struct.TYPE_11__* %15)
  %17 = call i32 @branch_finalize_bid(i32 %13, i32 %14, i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, -1
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %29, %36
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %28, %3
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @apr_hash_first(i32* %45, i32 %52)
  store i32* %53, i32** %7, align 8
  br label %54

54:                                               ; preds = %97, %44
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %100

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @svn_eid__hash_this_key(i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call %struct.TYPE_10__* @apr_hash_this_val(i32* %60)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, -1
  br i1 %63, label %64, label %83

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @svn_element__tree_set(%struct.TYPE_12__* %72, i32 %73, %struct.TYPE_10__* null)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = call i32 @svn_element__tree_set(%struct.TYPE_12__* %79, i32 %80, %struct.TYPE_10__* %81)
  br label %83

83:                                               ; preds = %64, %57
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, -1
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %7, align 8
  %99 = call i32* @apr_hash_next(i32* %98)
  store i32* %99, i32** %7, align 8
  br label %54

100:                                              ; preds = %54
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %101
}

declare dso_local i32 @branch_finalize_bid(i32, i32, i32) #1

declare dso_local i32 @branch_state_pool_get(%struct.TYPE_11__*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32 @svn_eid__hash_this_key(i32*) #1

declare dso_local %struct.TYPE_10__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_element__tree_set(%struct.TYPE_12__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
