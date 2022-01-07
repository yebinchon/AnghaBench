; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_data_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_data_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_data = type { i32, %struct.val_neg_data*, %struct.val_neg_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_neg_data* (i32*, i64, i32, %struct.val_neg_data*)* @neg_data_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_neg_data* @neg_data_chain(i32* %0, i64 %1, i32 %2, %struct.val_neg_data* %3) #0 {
  %5 = alloca %struct.val_neg_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.val_neg_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.val_neg_data*, align 8
  %13 = alloca %struct.val_neg_data*, align 8
  %14 = alloca %struct.val_neg_data*, align 8
  %15 = alloca %struct.val_neg_data*, align 8
  %16 = alloca %struct.val_neg_data*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.val_neg_data* %3, %struct.val_neg_data** %9, align 8
  %17 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %18 = icmp ne %struct.val_neg_data* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.val_neg_data*, %struct.val_neg_data** %9, align 8
  %21 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  store i32 %25, i32* %11, align 4
  store %struct.val_neg_data* null, %struct.val_neg_data** %13, align 8
  store %struct.val_neg_data* null, %struct.val_neg_data** %14, align 8
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %68, %24
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.val_neg_data* @neg_setup_data_node(i32* %32, i64 %33, i32 %34)
  store %struct.val_neg_data* %35, %struct.val_neg_data** %12, align 8
  %36 = load %struct.val_neg_data*, %struct.val_neg_data** %12, align 8
  %37 = icmp ne %struct.val_neg_data* %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %31
  %39 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  store %struct.val_neg_data* %39, %struct.val_neg_data** %15, align 8
  br label %40

40:                                               ; preds = %43, %38
  %41 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %42 = icmp ne %struct.val_neg_data* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %45 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %44, i32 0, i32 1
  %46 = load %struct.val_neg_data*, %struct.val_neg_data** %45, align 8
  store %struct.val_neg_data* %46, %struct.val_neg_data** %16, align 8
  %47 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %48 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %47, i32 0, i32 2
  %49 = load %struct.val_neg_data*, %struct.val_neg_data** %48, align 8
  %50 = call i32 @free(%struct.val_neg_data* %49)
  %51 = load %struct.val_neg_data*, %struct.val_neg_data** %15, align 8
  %52 = call i32 @free(%struct.val_neg_data* %51)
  %53 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  store %struct.val_neg_data* %53, %struct.val_neg_data** %15, align 8
  br label %40

54:                                               ; preds = %40
  store %struct.val_neg_data* null, %struct.val_neg_data** %5, align 8
  br label %73

55:                                               ; preds = %31
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load %struct.val_neg_data*, %struct.val_neg_data** %12, align 8
  store %struct.val_neg_data* %60, %struct.val_neg_data** %13, align 8
  br label %65

61:                                               ; preds = %55
  %62 = load %struct.val_neg_data*, %struct.val_neg_data** %12, align 8
  %63 = load %struct.val_neg_data*, %struct.val_neg_data** %14, align 8
  %64 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %63, i32 0, i32 1
  store %struct.val_neg_data* %62, %struct.val_neg_data** %64, align 8
  br label %65

65:                                               ; preds = %61, %59
  %66 = load %struct.val_neg_data*, %struct.val_neg_data** %12, align 8
  store %struct.val_neg_data* %66, %struct.val_neg_data** %14, align 8
  %67 = call i32 @dname_remove_label(i32** %6, i64* %7)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load %struct.val_neg_data*, %struct.val_neg_data** %13, align 8
  store %struct.val_neg_data* %72, %struct.val_neg_data** %5, align 8
  br label %73

73:                                               ; preds = %71, %54
  %74 = load %struct.val_neg_data*, %struct.val_neg_data** %5, align 8
  ret %struct.val_neg_data* %74
}

declare dso_local %struct.val_neg_data* @neg_setup_data_node(i32*, i64, i32) #1

declare dso_local i32 @free(%struct.val_neg_data*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
