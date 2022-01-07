; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_zone_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_zone_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_zone = type { i32, %struct.val_neg_zone*, %struct.val_neg_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_neg_zone* (i32*, i64, i32, i32, %struct.val_neg_zone*)* @neg_zone_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_neg_zone* @neg_zone_chain(i32* %0, i64 %1, i32 %2, i32 %3, %struct.val_neg_zone* %4) #0 {
  %6 = alloca %struct.val_neg_zone*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.val_neg_zone*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.val_neg_zone*, align 8
  %15 = alloca %struct.val_neg_zone*, align 8
  %16 = alloca %struct.val_neg_zone*, align 8
  %17 = alloca %struct.val_neg_zone*, align 8
  %18 = alloca %struct.val_neg_zone*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.val_neg_zone* %4, %struct.val_neg_zone** %11, align 8
  %19 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %20 = icmp ne %struct.val_neg_zone* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %23 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  store i32 %27, i32* %13, align 4
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %15, align 8
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %16, align 8
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %71, %26
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.val_neg_zone* @neg_setup_zone_node(i32* %34, i64 %35, i32 %36, i32 %37)
  store %struct.val_neg_zone* %38, %struct.val_neg_zone** %14, align 8
  %39 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %40 = icmp ne %struct.val_neg_zone* %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %33
  %42 = load %struct.val_neg_zone*, %struct.val_neg_zone** %16, align 8
  store %struct.val_neg_zone* %42, %struct.val_neg_zone** %17, align 8
  br label %43

43:                                               ; preds = %46, %41
  %44 = load %struct.val_neg_zone*, %struct.val_neg_zone** %17, align 8
  %45 = icmp ne %struct.val_neg_zone* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.val_neg_zone*, %struct.val_neg_zone** %17, align 8
  %48 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %47, i32 0, i32 1
  %49 = load %struct.val_neg_zone*, %struct.val_neg_zone** %48, align 8
  store %struct.val_neg_zone* %49, %struct.val_neg_zone** %18, align 8
  %50 = load %struct.val_neg_zone*, %struct.val_neg_zone** %17, align 8
  %51 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %50, i32 0, i32 2
  %52 = load %struct.val_neg_zone*, %struct.val_neg_zone** %51, align 8
  %53 = call i32 @free(%struct.val_neg_zone* %52)
  %54 = load %struct.val_neg_zone*, %struct.val_neg_zone** %17, align 8
  %55 = call i32 @free(%struct.val_neg_zone* %54)
  %56 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  store %struct.val_neg_zone* %56, %struct.val_neg_zone** %17, align 8
  br label %43

57:                                               ; preds = %43
  store %struct.val_neg_zone* null, %struct.val_neg_zone** %6, align 8
  br label %76

58:                                               ; preds = %33
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  store %struct.val_neg_zone* %63, %struct.val_neg_zone** %16, align 8
  br label %68

64:                                               ; preds = %58
  %65 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  %66 = load %struct.val_neg_zone*, %struct.val_neg_zone** %15, align 8
  %67 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %66, i32 0, i32 1
  store %struct.val_neg_zone* %65, %struct.val_neg_zone** %67, align 8
  br label %68

68:                                               ; preds = %64, %62
  %69 = load %struct.val_neg_zone*, %struct.val_neg_zone** %14, align 8
  store %struct.val_neg_zone* %69, %struct.val_neg_zone** %15, align 8
  %70 = call i32 @dname_remove_label(i32** %7, i64* %8)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %12, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load %struct.val_neg_zone*, %struct.val_neg_zone** %16, align 8
  store %struct.val_neg_zone* %75, %struct.val_neg_zone** %6, align 8
  br label %76

76:                                               ; preds = %74, %57
  %77 = load %struct.val_neg_zone*, %struct.val_neg_zone** %6, align 8
  ret %struct.val_neg_zone* %77
}

declare dso_local %struct.val_neg_zone* @neg_setup_zone_node(i32*, i64, i32, i32) #1

declare dso_local i32 @free(%struct.val_neg_zone*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
