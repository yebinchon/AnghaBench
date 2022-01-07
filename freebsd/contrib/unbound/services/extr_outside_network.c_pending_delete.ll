; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { i32, %struct.pending*, %struct.pending* }
%struct.pending = type { %struct.pending*, i64, %struct.TYPE_2__, %struct.pending* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_delete(%struct.outside_network* %0, %struct.pending* %1) #0 {
  %3 = alloca %struct.outside_network*, align 8
  %4 = alloca %struct.pending*, align 8
  %5 = alloca %struct.pending*, align 8
  %6 = alloca %struct.pending*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %3, align 8
  store %struct.pending* %1, %struct.pending** %4, align 8
  %7 = load %struct.pending*, %struct.pending** %4, align 8
  %8 = icmp ne %struct.pending* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %111

10:                                               ; preds = %2
  %11 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %12 = icmp ne %struct.outside_network* %11, null
  br i1 %12, label %13, label %82

13:                                               ; preds = %10
  %14 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %15 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %14, i32 0, i32 2
  %16 = load %struct.pending*, %struct.pending** %15, align 8
  %17 = icmp ne %struct.pending* %16, null
  br i1 %17, label %18, label %82

18:                                               ; preds = %13
  %19 = load %struct.pending*, %struct.pending** %4, align 8
  %20 = getelementptr inbounds %struct.pending, %struct.pending* %19, i32 0, i32 3
  %21 = load %struct.pending*, %struct.pending** %20, align 8
  %22 = icmp ne %struct.pending* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.pending*, %struct.pending** %4, align 8
  %25 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %26 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %25, i32 0, i32 1
  %27 = load %struct.pending*, %struct.pending** %26, align 8
  %28 = icmp eq %struct.pending* %24, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23, %18
  store %struct.pending* null, %struct.pending** %5, align 8
  %30 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %31 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %30, i32 0, i32 2
  %32 = load %struct.pending*, %struct.pending** %31, align 8
  store %struct.pending* %32, %struct.pending** %6, align 8
  br label %33

33:                                               ; preds = %42, %29
  %34 = load %struct.pending*, %struct.pending** %6, align 8
  %35 = icmp ne %struct.pending* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.pending*, %struct.pending** %6, align 8
  %38 = load %struct.pending*, %struct.pending** %4, align 8
  %39 = icmp ne %struct.pending* %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load %struct.pending*, %struct.pending** %6, align 8
  store %struct.pending* %43, %struct.pending** %5, align 8
  %44 = load %struct.pending*, %struct.pending** %6, align 8
  %45 = getelementptr inbounds %struct.pending, %struct.pending* %44, i32 0, i32 3
  %46 = load %struct.pending*, %struct.pending** %45, align 8
  store %struct.pending* %46, %struct.pending** %6, align 8
  br label %33

47:                                               ; preds = %40
  %48 = load %struct.pending*, %struct.pending** %6, align 8
  %49 = icmp ne %struct.pending* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %47
  %51 = load %struct.pending*, %struct.pending** %6, align 8
  %52 = load %struct.pending*, %struct.pending** %4, align 8
  %53 = icmp eq %struct.pending* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @log_assert(i32 %54)
  %56 = load %struct.pending*, %struct.pending** %5, align 8
  %57 = icmp ne %struct.pending* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.pending*, %struct.pending** %4, align 8
  %60 = getelementptr inbounds %struct.pending, %struct.pending* %59, i32 0, i32 3
  %61 = load %struct.pending*, %struct.pending** %60, align 8
  %62 = load %struct.pending*, %struct.pending** %5, align 8
  %63 = getelementptr inbounds %struct.pending, %struct.pending* %62, i32 0, i32 3
  store %struct.pending* %61, %struct.pending** %63, align 8
  br label %70

64:                                               ; preds = %50
  %65 = load %struct.pending*, %struct.pending** %4, align 8
  %66 = getelementptr inbounds %struct.pending, %struct.pending* %65, i32 0, i32 3
  %67 = load %struct.pending*, %struct.pending** %66, align 8
  %68 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %69 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %68, i32 0, i32 2
  store %struct.pending* %67, %struct.pending** %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %72 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %71, i32 0, i32 1
  %73 = load %struct.pending*, %struct.pending** %72, align 8
  %74 = load %struct.pending*, %struct.pending** %4, align 8
  %75 = icmp eq %struct.pending* %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.pending*, %struct.pending** %5, align 8
  %78 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %79 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %78, i32 0, i32 1
  store %struct.pending* %77, %struct.pending** %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %47
  br label %82

82:                                               ; preds = %81, %23, %13, %10
  %83 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %84 = icmp ne %struct.outside_network* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %87 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pending*, %struct.pending** %4, align 8
  %90 = getelementptr inbounds %struct.pending, %struct.pending* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @rbtree_delete(i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %85, %82
  %95 = load %struct.pending*, %struct.pending** %4, align 8
  %96 = getelementptr inbounds %struct.pending, %struct.pending* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.pending*, %struct.pending** %4, align 8
  %101 = getelementptr inbounds %struct.pending, %struct.pending* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @comm_timer_delete(i64 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.pending*, %struct.pending** %4, align 8
  %106 = getelementptr inbounds %struct.pending, %struct.pending* %105, i32 0, i32 0
  %107 = load %struct.pending*, %struct.pending** %106, align 8
  %108 = call i32 @free(%struct.pending* %107)
  %109 = load %struct.pending*, %struct.pending** %4, align 8
  %110 = call i32 @free(%struct.pending* %109)
  br label %111

111:                                              ; preds = %104, %9
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @rbtree_delete(i32, i32) #1

declare dso_local i32 @comm_timer_delete(i64) #1

declare dso_local i32 @free(%struct.pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
