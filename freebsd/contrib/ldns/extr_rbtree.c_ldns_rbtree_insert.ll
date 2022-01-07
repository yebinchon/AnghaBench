; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32 (i32, i32)*, %struct.TYPE_10__*, i32 }

@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@RED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ldns_rbtree_insert(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @LDNS_RBTREE_NULL, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @LDNS_RBTREE_NULL, align 8
  %16 = icmp ne %struct.TYPE_10__* %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %20(i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %83

30:                                               ; preds = %17
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %7, align 8
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %7, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @LDNS_RBTREE_NULL, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %51, align 8
  %52 = load i32, i32* @RED, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @LDNS_RBTREE_NULL, align 8
  %61 = icmp ne %struct.TYPE_10__* %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %43
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %68, align 8
  br label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  br label %78

74:                                               ; preds = %43
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = call i32 @ldns_rbtree_insert_fixup(%struct.TYPE_9__* %79, %struct.TYPE_10__* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %3, align 8
  br label %83

83:                                               ; preds = %78, %29
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %84
}

declare dso_local i32 @ldns_rbtree_insert_fixup(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
