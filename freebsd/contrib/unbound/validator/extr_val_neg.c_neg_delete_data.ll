; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_delete_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_delete_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i32, %struct.val_neg_data*, %struct.val_neg_data* }
%struct.val_neg_data = type { i32, i64, %struct.val_neg_data*, i64, i32, %struct.val_neg_data*, %struct.val_neg_zone* }
%struct.val_neg_zone = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @neg_delete_data(%struct.val_neg_cache* %0, %struct.val_neg_data* %1) #0 {
  %3 = alloca %struct.val_neg_cache*, align 8
  %4 = alloca %struct.val_neg_data*, align 8
  %5 = alloca %struct.val_neg_zone*, align 8
  %6 = alloca %struct.val_neg_data*, align 8
  %7 = alloca %struct.val_neg_data*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %3, align 8
  store %struct.val_neg_data* %1, %struct.val_neg_data** %4, align 8
  %8 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %9 = icmp ne %struct.val_neg_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %111

11:                                               ; preds = %2
  %12 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %13 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %12, i32 0, i32 6
  %14 = load %struct.val_neg_zone*, %struct.val_neg_zone** %13, align 8
  store %struct.val_neg_zone* %14, %struct.val_neg_zone** %5, align 8
  %15 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %16 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @log_assert(i32 %17)
  %19 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %20 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @log_assert(i32 %23)
  %25 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %26 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %28 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %29 = call i32 @neg_lru_remove(%struct.val_neg_cache* %27, %struct.val_neg_data* %28)
  %30 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %31 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %30, i32 0, i32 2
  %32 = load %struct.val_neg_data*, %struct.val_neg_data** %31, align 8
  %33 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %34 = icmp ne %struct.val_neg_data* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %11
  %36 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %37 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %36, i32 0, i32 1
  %38 = load %struct.val_neg_data*, %struct.val_neg_data** %37, align 8
  %39 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  %40 = icmp ne %struct.val_neg_data* %38, %39
  br label %41

41:                                               ; preds = %35, %11
  %42 = phi i1 [ false, %11 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @log_assert(i32 %43)
  %45 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  store %struct.val_neg_data* %45, %struct.val_neg_data** %6, align 8
  br label %46

46:                                               ; preds = %49, %41
  %47 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %48 = icmp ne %struct.val_neg_data* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %51 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @log_assert(i32 %54)
  %56 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %57 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %61 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %60, i32 0, i32 5
  %62 = load %struct.val_neg_data*, %struct.val_neg_data** %61, align 8
  store %struct.val_neg_data* %62, %struct.val_neg_data** %6, align 8
  br label %46

63:                                               ; preds = %46
  %64 = load %struct.val_neg_data*, %struct.val_neg_data** %4, align 8
  store %struct.val_neg_data* %64, %struct.val_neg_data** %6, align 8
  br label %65

65:                                               ; preds = %75, %63
  %66 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %67 = icmp ne %struct.val_neg_data* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %70 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br label %73

73:                                               ; preds = %68, %65
  %74 = phi i1 [ false, %65 ], [ %72, %68 ]
  br i1 %74, label %75, label %101

75:                                               ; preds = %73
  %76 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %77 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %76, i32 0, i32 5
  %78 = load %struct.val_neg_data*, %struct.val_neg_data** %77, align 8
  store %struct.val_neg_data* %78, %struct.val_neg_data** %7, align 8
  %79 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %80 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %79, i32 0, i32 0
  %81 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %82 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %81, i32 0, i32 4
  %83 = call i32 @rbtree_delete(%struct.TYPE_2__* %80, i32* %82)
  %84 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %85 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 56
  %88 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %89 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  %94 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %95 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %94, i32 0, i32 2
  %96 = load %struct.val_neg_data*, %struct.val_neg_data** %95, align 8
  %97 = call i32 @free(%struct.val_neg_data* %96)
  %98 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %99 = call i32 @free(%struct.val_neg_data* %98)
  %100 = load %struct.val_neg_data*, %struct.val_neg_data** %7, align 8
  store %struct.val_neg_data* %100, %struct.val_neg_data** %6, align 8
  br label %65

101:                                              ; preds = %73
  %102 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %103 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %109 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %110 = call i32 @neg_delete_zone(%struct.val_neg_cache* %108, %struct.val_neg_zone* %109)
  br label %111

111:                                              ; preds = %10, %107, %101
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @neg_lru_remove(%struct.val_neg_cache*, %struct.val_neg_data*) #1

declare dso_local i32 @rbtree_delete(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @free(%struct.val_neg_data*) #1

declare dso_local i32 @neg_delete_zone(%struct.val_neg_cache*, %struct.val_neg_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
