; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.iter_forwards = type { i32 }
%struct.iter_forward_zone = type { i64, i32, %struct.delegpt*, %struct.iter_forward_zone*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iter_forward_zone* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt* @forwards_lookup(%struct.iter_forwards* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca %struct.iter_forwards*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.iter_forward_zone*, align 8
  %10 = alloca %struct.iter_forward_zone, align 8
  %11 = alloca i32, align 4
  store %struct.iter_forwards* %0, %struct.iter_forwards** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %12 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %10, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.iter_forward_zone* %10, %struct.iter_forward_zone** %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %10, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %10, i32 0, i32 4
  store i32* %16, i32** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %10, i32 0, i32 5
  %20 = call i32 @dname_count_size_labels(i32* %18, i32* %19)
  %21 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.iter_forwards*, %struct.iter_forwards** %5, align 8
  %23 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @rbtree_find_less_equal(i32 %24, %struct.iter_forward_zone* %10, i32** %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32*, i32** %8, align 8
  %29 = bitcast i32* %28 to %struct.iter_forward_zone*
  store %struct.iter_forward_zone* %29, %struct.iter_forward_zone** %9, align 8
  br label %69

30:                                               ; preds = %3
  %31 = load i32*, i32** %8, align 8
  %32 = bitcast i32* %31 to %struct.iter_forward_zone*
  store %struct.iter_forward_zone* %32, %struct.iter_forward_zone** %9, align 8
  %33 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %34 = icmp ne %struct.iter_forward_zone* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %37 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30
  store %struct.delegpt* null, %struct.delegpt** %4, align 8
  br label %77

42:                                               ; preds = %35
  %43 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %44 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %47 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %10, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %10, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dname_lab_cmp(i32* %45, i32 %48, i32* %50, i32 %52, i32* %11)
  br label %54

54:                                               ; preds = %64, %42
  %55 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %56 = icmp ne %struct.iter_forward_zone* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %59 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57
  %65 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %66 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %65, i32 0, i32 3
  %67 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %66, align 8
  store %struct.iter_forward_zone* %67, %struct.iter_forward_zone** %9, align 8
  br label %54

68:                                               ; preds = %63, %54
  br label %69

69:                                               ; preds = %68, %27
  %70 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %71 = icmp ne %struct.iter_forward_zone* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %9, align 8
  %74 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %73, i32 0, i32 2
  %75 = load %struct.delegpt*, %struct.delegpt** %74, align 8
  store %struct.delegpt* %75, %struct.delegpt** %4, align 8
  br label %77

76:                                               ; preds = %69
  store %struct.delegpt* null, %struct.delegpt** %4, align 8
  br label %77

77:                                               ; preds = %76, %72, %41
  %78 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  ret %struct.delegpt* %78
}

declare dso_local i32 @dname_count_size_labels(i32*, i32*) #1

declare dso_local i64 @rbtree_find_less_equal(i32, %struct.iter_forward_zone*, i32**) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
