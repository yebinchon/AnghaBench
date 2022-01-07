; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_todo_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_todo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.trust_anchor = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.module_env = type { i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@RBTREE_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.module_env*, i64*)* @todo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @todo_probe(%struct.module_env* %0, i64* %1) #0 {
  %3 = alloca %struct.trust_anchor*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.trust_anchor*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.module_env*, %struct.module_env** %4, align 8
  %9 = getelementptr inbounds %struct.module_env, %struct.module_env* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = call i32 @lock_basic_lock(i32* %11)
  %13 = load %struct.module_env*, %struct.module_env** %4, align 8
  %14 = getelementptr inbounds %struct.module_env, %struct.module_env* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call %struct.TYPE_10__* @rbtree_first(i32* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RBTREE_NULL, align 8
  %21 = icmp eq %struct.TYPE_10__* %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.module_env*, %struct.module_env** %4, align 8
  %24 = getelementptr inbounds %struct.module_env, %struct.module_env* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @lock_basic_unlock(i32* %26)
  %28 = load i64*, i64** %5, align 8
  store i64 0, i64* %28, align 8
  store %struct.trust_anchor* null, %struct.trust_anchor** %3, align 8
  br label %104

29:                                               ; preds = %2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.trust_anchor*
  store %struct.trust_anchor* %33, %struct.trust_anchor** %6, align 8
  %34 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %35 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %34, i32 0, i32 1
  %36 = call i32 @lock_basic_lock(i32* %35)
  %37 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %38 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.module_env*, %struct.module_env** %4, align 8
  %43 = getelementptr inbounds %struct.module_env, %struct.module_env* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %29
  %48 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %49 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.module_env*, %struct.module_env** %4, align 8
  %54 = getelementptr inbounds %struct.module_env, %struct.module_env* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %52, %56
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  %59 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %60 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %59, i32 0, i32 1
  %61 = call i32 @lock_basic_unlock(i32* %60)
  %62 = load %struct.module_env*, %struct.module_env** %4, align 8
  %63 = getelementptr inbounds %struct.module_env, %struct.module_env* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = call i32 @lock_basic_unlock(i32* %65)
  store %struct.trust_anchor* null, %struct.trust_anchor** %3, align 8
  br label %104

67:                                               ; preds = %29
  %68 = load %struct.module_env*, %struct.module_env** %4, align 8
  %69 = getelementptr inbounds %struct.module_env, %struct.module_env* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %75 = call i32 @rbtree_delete(i32* %73, %struct.trust_anchor* %74)
  %76 = load %struct.module_env*, %struct.module_env** %4, align 8
  %77 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %78 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @calc_next_probe(%struct.module_env* %76, i32 %81)
  %83 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %84 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i64 %82, i64* %86, align 8
  %87 = load %struct.module_env*, %struct.module_env** %4, align 8
  %88 = getelementptr inbounds %struct.module_env, %struct.module_env* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %94 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @rbtree_insert(i32* %92, i32* %96)
  %98 = load %struct.module_env*, %struct.module_env** %4, align 8
  %99 = getelementptr inbounds %struct.module_env, %struct.module_env* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = call i32 @lock_basic_unlock(i32* %101)
  %103 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  store %struct.trust_anchor* %103, %struct.trust_anchor** %3, align 8
  br label %104

104:                                              ; preds = %67, %47, %22
  %105 = load %struct.trust_anchor*, %struct.trust_anchor** %3, align 8
  ret %struct.trust_anchor* %105
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @rbtree_first(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @rbtree_delete(i32*, %struct.trust_anchor*) #1

declare dso_local i64 @calc_next_probe(%struct.module_env*, i32) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
