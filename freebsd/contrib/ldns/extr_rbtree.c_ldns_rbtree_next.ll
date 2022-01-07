; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ldns_rbtree_next(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LDNS_RBTREE_NULL, align 8
  %8 = icmp ne %struct.TYPE_5__* %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %2, align 8
  br label %13

13:                                               ; preds = %20, %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LDNS_RBTREE_NULL, align 8
  %18 = icmp ne %struct.TYPE_5__* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %2, align 8
  br label %13

24:                                               ; preds = %13
  br label %48

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %3, align 8
  br label %29

29:                                               ; preds = %41, %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LDNS_RBTREE_NULL, align 8
  %32 = icmp ne %struct.TYPE_5__* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp eq %struct.TYPE_5__* %34, %37
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ false, %29 ], [ %38, %33 ]
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %2, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %3, align 8
  br label %29

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %2, align 8
  br label %48

48:                                               ; preds = %46, %24
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
