; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_tp_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_tp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i64, %struct.trust_anchor*, i32, %struct.trust_anchor*, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.trust_anchor* }
%struct.val_anchors = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.autr_point_data = type { i64, %struct.autr_point_data*, i32, %struct.autr_point_data*, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"trust anchor presented twice\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"trust anchor in probetree twice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.val_anchors*, i32*, i64, i32)* @autr_tp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @autr_tp_create(%struct.val_anchors* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trust_anchor*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i64 @calloc(i32 1, i32 56)
  %12 = inttoptr i64 %11 to %struct.trust_anchor*
  store %struct.trust_anchor* %12, %struct.trust_anchor** %10, align 8
  %13 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %14 = icmp ne %struct.trust_anchor* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %143

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.trust_anchor* @memdup(i32* %17, i64 %18)
  %20 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %21 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %20, i32 0, i32 3
  store %struct.trust_anchor* %19, %struct.trust_anchor** %21, align 8
  %22 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %23 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %22, i32 0, i32 3
  %24 = load %struct.trust_anchor*, %struct.trust_anchor** %23, align 8
  %25 = icmp ne %struct.trust_anchor* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %28 = call i32 @free(%struct.trust_anchor* %27)
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %143

29:                                               ; preds = %16
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %32 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %34 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %33, i32 0, i32 3
  %35 = load %struct.trust_anchor*, %struct.trust_anchor** %34, align 8
  %36 = call i32 @dname_count_labels(%struct.trust_anchor* %35)
  %37 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %38 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %40 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %41 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.trust_anchor* %39, %struct.trust_anchor** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %45 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = call i64 @calloc(i32 1, i32 56)
  %47 = inttoptr i64 %46 to %struct.autr_point_data*
  %48 = bitcast %struct.autr_point_data* %47 to %struct.trust_anchor*
  %49 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %50 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %49, i32 0, i32 1
  store %struct.trust_anchor* %48, %struct.trust_anchor** %50, align 8
  %51 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %52 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %51, i32 0, i32 1
  %53 = load %struct.trust_anchor*, %struct.trust_anchor** %52, align 8
  %54 = icmp ne %struct.trust_anchor* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %29
  %56 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %57 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %56, i32 0, i32 3
  %58 = load %struct.trust_anchor*, %struct.trust_anchor** %57, align 8
  %59 = call i32 @free(%struct.trust_anchor* %58)
  %60 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %61 = call i32 @free(%struct.trust_anchor* %60)
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %143

62:                                               ; preds = %29
  %63 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %64 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %65 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %64, i32 0, i32 1
  %66 = load %struct.trust_anchor*, %struct.trust_anchor** %65, align 8
  %67 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store %struct.trust_anchor* %63, %struct.trust_anchor** %68, align 8
  %69 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %70 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %69, i32 0, i32 0
  %71 = call i32 @lock_basic_lock(i32* %70)
  %72 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %73 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %76 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %75, i32 0, i32 5
  %77 = call i32 @rbtree_insert(i32* %74, %struct.TYPE_4__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %62
  %80 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %81 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %80, i32 0, i32 0
  %82 = call i32 @lock_basic_unlock(i32* %81)
  %83 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %85 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %84, i32 0, i32 3
  %86 = load %struct.trust_anchor*, %struct.trust_anchor** %85, align 8
  %87 = call i32 @free(%struct.trust_anchor* %86)
  %88 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %89 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %88, i32 0, i32 1
  %90 = load %struct.trust_anchor*, %struct.trust_anchor** %89, align 8
  %91 = call i32 @free(%struct.trust_anchor* %90)
  %92 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %93 = call i32 @free(%struct.trust_anchor* %92)
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %143

94:                                               ; preds = %62
  %95 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %96 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %100 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %99, i32 0, i32 1
  %101 = load %struct.trust_anchor*, %struct.trust_anchor** %100, align 8
  %102 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %101, i32 0, i32 4
  %103 = call i32 @rbtree_insert(i32* %98, %struct.TYPE_4__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %94
  %106 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %107 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %110 = call i32 @rbtree_delete(i32* %108, %struct.trust_anchor* %109)
  %111 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %112 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %111, i32 0, i32 0
  %113 = call i32 @lock_basic_unlock(i32* %112)
  %114 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %116 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %115, i32 0, i32 3
  %117 = load %struct.trust_anchor*, %struct.trust_anchor** %116, align 8
  %118 = call i32 @free(%struct.trust_anchor* %117)
  %119 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %120 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %119, i32 0, i32 1
  %121 = load %struct.trust_anchor*, %struct.trust_anchor** %120, align 8
  %122 = call i32 @free(%struct.trust_anchor* %121)
  %123 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %124 = call i32 @free(%struct.trust_anchor* %123)
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %143

125:                                              ; preds = %94
  %126 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %127 = getelementptr inbounds %struct.val_anchors, %struct.val_anchors* %126, i32 0, i32 0
  %128 = call i32 @lock_basic_unlock(i32* %127)
  %129 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %130 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %129, i32 0, i32 2
  %131 = call i32 @lock_basic_init(i32* %130)
  %132 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %133 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %132, i32 0, i32 2
  %134 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %135 = call i32 @lock_protect(i32* %133, %struct.trust_anchor* %134, i32 56)
  %136 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %137 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %136, i32 0, i32 2
  %138 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %139 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %138, i32 0, i32 1
  %140 = load %struct.trust_anchor*, %struct.trust_anchor** %139, align 8
  %141 = call i32 @lock_protect(i32* %137, %struct.trust_anchor* %140, i32 56)
  %142 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  store %struct.trust_anchor* %142, %struct.trust_anchor** %5, align 8
  br label %143

143:                                              ; preds = %125, %105, %79, %55, %26, %15
  %144 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  ret %struct.trust_anchor* %144
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.trust_anchor* @memdup(i32*, i64) #1

declare dso_local i32 @free(%struct.trust_anchor*) #1

declare dso_local i32 @dname_count_labels(%struct.trust_anchor*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @rbtree_insert(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @rbtree_delete(i32*, %struct.trust_anchor*) #1

declare dso_local i32 @lock_basic_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, %struct.trust_anchor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
