; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_find_create_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_find_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32, i32, i32 }
%struct.local_data = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.local_data* }

@.str = private unnamed_addr constant [32 x i8] c"out of memory adding local data\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zone*, i32*, i64, i32, %struct.local_data**)* @lz_find_create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_find_create_node(%struct.local_zone* %0, i32* %1, i64 %2, i32 %3, %struct.local_data** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_zone*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_data**, align 8
  %12 = alloca %struct.local_data*, align 8
  store %struct.local_zone* %0, %struct.local_zone** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.local_data** %4, %struct.local_data*** %11, align 8
  %13 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.local_data* @lz_find_node(%struct.local_zone* %13, i32* %14, i64 %15, i32 %16)
  store %struct.local_data* %17, %struct.local_data** %12, align 8
  %18 = load %struct.local_data*, %struct.local_data** %12, align 8
  %19 = icmp ne %struct.local_data* %18, null
  br i1 %19, label %83, label %20

20:                                               ; preds = %5
  %21 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %22 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @regional_alloc_zero(i32 %23, i32 32)
  %25 = inttoptr i64 %24 to %struct.local_data*
  store %struct.local_data* %25, %struct.local_data** %12, align 8
  %26 = load %struct.local_data*, %struct.local_data** %12, align 8
  %27 = icmp ne %struct.local_data* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %86

30:                                               ; preds = %20
  %31 = load %struct.local_data*, %struct.local_data** %12, align 8
  %32 = load %struct.local_data*, %struct.local_data** %12, align 8
  %33 = getelementptr inbounds %struct.local_data, %struct.local_data* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.local_data* %31, %struct.local_data** %34, align 8
  %35 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %36 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @regional_alloc_init(i32 %37, i32* %38, i64 %39)
  %41 = load %struct.local_data*, %struct.local_data** %12, align 8
  %42 = getelementptr inbounds %struct.local_data, %struct.local_data* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.local_data*, %struct.local_data** %12, align 8
  %44 = getelementptr inbounds %struct.local_data, %struct.local_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %30
  %48 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %86

49:                                               ; preds = %30
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.local_data*, %struct.local_data** %12, align 8
  %52 = getelementptr inbounds %struct.local_data, %struct.local_data* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.local_data*, %struct.local_data** %12, align 8
  %55 = getelementptr inbounds %struct.local_data, %struct.local_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %57 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %56, i32 0, i32 1
  %58 = load %struct.local_data*, %struct.local_data** %12, align 8
  %59 = getelementptr inbounds %struct.local_data, %struct.local_data* %58, i32 0, i32 2
  %60 = call i32 @rbtree_insert(i32* %57, %struct.TYPE_2__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %49
  %63 = call i32 @log_assert(i32 0)
  br label %64

64:                                               ; preds = %62, %49
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %67 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = call i32 @dname_remove_label(i32** %8, i64* %9)
  %72 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.local_data**, %struct.local_data*** %11, align 8
  %78 = call i32 @lz_find_create_node(%struct.local_zone* %72, i32* %73, i64 %74, i32 %76, %struct.local_data** %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %86

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %5
  %84 = load %struct.local_data*, %struct.local_data** %12, align 8
  %85 = load %struct.local_data**, %struct.local_data*** %11, align 8
  store %struct.local_data* %84, %struct.local_data** %85, align 8
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %80, %47, %28
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.local_data* @lz_find_node(%struct.local_zone*, i32*, i64, i32) #1

declare dso_local i64 @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @regional_alloc_init(i32, i32*, i64) #1

declare dso_local i32 @rbtree_insert(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
