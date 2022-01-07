; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_next_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_next_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_forwards = type { i32 }
%struct.iter_forward_zone = type { i64, i32, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iter_forward_zone* }

@RBTREE_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forwards_next_root(%struct.iter_forwards* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_forwards*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.iter_forward_zone, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iter_forward_zone*, align 8
  store %struct.iter_forwards* %0, %struct.iter_forwards** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %14 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @rbtree_first(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** @RBTREE_NULL, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %95

21:                                               ; preds = %12
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.iter_forward_zone*
  store %struct.iter_forward_zone* %23, %struct.iter_forward_zone** %8, align 8
  %24 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %25 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @dname_is_root(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %31 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %5, align 8
  store i64 %32, i64* %33, align 8
  store i32 1, i32* %3, align 4
  br label %95

34:                                               ; preds = %21
  %35 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %36 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = call i32 @forwards_next_root(%struct.iter_forwards* %40, i64* %41)
  store i32 %42, i32* %3, align 4
  br label %95

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %6, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.iter_forward_zone* %6, %struct.iter_forward_zone** %45, align 8
  %46 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %6, i32 0, i32 2
  store i32* bitcast ([2 x i8]* @.str to i32*), i32** %46, align 8
  %47 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %6, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %6, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %6, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  store i32* null, i32** %7, align 8
  %52 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %53 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @rbtree_find_less_equal(i32 %54, %struct.iter_forward_zone* %6, i32** %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %95

58:                                               ; preds = %43
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** @RBTREE_NULL, align 8
  %64 = icmp eq i32* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %58
  store i32 0, i32* %3, align 4
  br label %95

66:                                               ; preds = %61
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @rbtree_next(i32* %67)
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** @RBTREE_NULL, align 8
  %71 = icmp eq i32* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %95

73:                                               ; preds = %66
  %74 = load i32*, i32** %7, align 8
  %75 = bitcast i32* %74 to %struct.iter_forward_zone*
  store %struct.iter_forward_zone* %75, %struct.iter_forward_zone** %8, align 8
  %76 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %77 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @dname_is_root(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %83 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %5, align 8
  store i64 %84, i64* %85, align 8
  store i32 1, i32* %3, align 4
  br label %95

86:                                               ; preds = %73
  %87 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %88 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = load i64*, i64** %5, align 8
  store i64 %90, i64* %91, align 8
  %92 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = call i32 @forwards_next_root(%struct.iter_forwards* %92, i64* %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %86, %81, %72, %65, %57, %34, %29, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32* @rbtree_first(i32) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i64 @rbtree_find_less_equal(i32, %struct.iter_forward_zone*, i32**) #1

declare dso_local i32* @rbtree_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
