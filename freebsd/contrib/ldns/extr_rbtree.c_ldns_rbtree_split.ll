; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ldns_rbtree_split(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_13__* @ldns_rbtree_create(i32 %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = call %struct.TYPE_14__* @ldns_rbtree_first(%struct.TYPE_13__* %13)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @LDNS_RBTREE_NULL, align 8
  %22 = icmp ne %struct.TYPE_14__* %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_14__* @ldns_rbtree_delete(%struct.TYPE_13__* %26, i32 %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %7, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = call i32 @ldns_rbtree_insert(%struct.TYPE_13__* %31, %struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = call %struct.TYPE_14__* @ldns_rbtree_first(%struct.TYPE_13__* %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %15

38:                                               ; preds = %23
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %39
}

declare dso_local %struct.TYPE_13__* @ldns_rbtree_create(i32) #1

declare dso_local %struct.TYPE_14__* @ldns_rbtree_first(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @ldns_rbtree_delete(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ldns_rbtree_insert(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
