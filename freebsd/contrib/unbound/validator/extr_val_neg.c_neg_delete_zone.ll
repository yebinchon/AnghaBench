; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_delete_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_delete_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i32, i32 }
%struct.val_neg_zone = type { i32, i64, %struct.val_neg_zone*, %struct.val_neg_zone*, i64, i32, %struct.val_neg_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.val_neg_cache*, %struct.val_neg_zone*)* @neg_delete_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neg_delete_zone(%struct.val_neg_cache* %0, %struct.val_neg_zone* %1) #0 {
  %3 = alloca %struct.val_neg_cache*, align 8
  %4 = alloca %struct.val_neg_zone*, align 8
  %5 = alloca %struct.val_neg_zone*, align 8
  %6 = alloca %struct.val_neg_zone*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %3, align 8
  store %struct.val_neg_zone* %1, %struct.val_neg_zone** %4, align 8
  %7 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %8 = icmp ne %struct.val_neg_zone* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %83

10:                                               ; preds = %2
  %11 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %12 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @log_assert(i32 %13)
  %15 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %16 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @log_assert(i32 %19)
  %21 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  %22 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  store %struct.val_neg_zone* %23, %struct.val_neg_zone** %5, align 8
  br label %24

24:                                               ; preds = %27, %10
  %25 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %26 = icmp ne %struct.val_neg_zone* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %29 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @log_assert(i32 %32)
  %34 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %35 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %39 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %38, i32 0, i32 6
  %40 = load %struct.val_neg_zone*, %struct.val_neg_zone** %39, align 8
  store %struct.val_neg_zone* %40, %struct.val_neg_zone** %5, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.val_neg_zone*, %struct.val_neg_zone** %4, align 8
  store %struct.val_neg_zone* %42, %struct.val_neg_zone** %5, align 8
  br label %43

43:                                               ; preds = %53, %41
  %44 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %45 = icmp ne %struct.val_neg_zone* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %48 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %53, label %83

53:                                               ; preds = %51
  %54 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %55 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %54, i32 0, i32 6
  %56 = load %struct.val_neg_zone*, %struct.val_neg_zone** %55, align 8
  store %struct.val_neg_zone* %56, %struct.val_neg_zone** %6, align 8
  %57 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %58 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %57, i32 0, i32 1
  %59 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %60 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %59, i32 0, i32 5
  %61 = call i32 @rbtree_delete(i32* %58, i32* %60)
  %62 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %63 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 56
  %66 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %67 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %73 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %72, i32 0, i32 3
  %74 = load %struct.val_neg_zone*, %struct.val_neg_zone** %73, align 8
  %75 = call i32 @free(%struct.val_neg_zone* %74)
  %76 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %77 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %76, i32 0, i32 2
  %78 = load %struct.val_neg_zone*, %struct.val_neg_zone** %77, align 8
  %79 = call i32 @free(%struct.val_neg_zone* %78)
  %80 = load %struct.val_neg_zone*, %struct.val_neg_zone** %5, align 8
  %81 = call i32 @free(%struct.val_neg_zone* %80)
  %82 = load %struct.val_neg_zone*, %struct.val_neg_zone** %6, align 8
  store %struct.val_neg_zone* %82, %struct.val_neg_zone** %5, align 8
  br label %43

83:                                               ; preds = %9, %51
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @rbtree_delete(i32*, i32*) #1

declare dso_local i32 @free(%struct.val_neg_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
