; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.iter_forwards = type { i32 }
%struct.iter_forward_zone = type { %struct.delegpt*, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iter_forward_zone* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt* @forwards_find(%struct.iter_forwards* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca %struct.iter_forwards*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.iter_forward_zone, align 8
  store %struct.iter_forwards* %0, %struct.iter_forwards** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.iter_forward_zone* %9, %struct.iter_forward_zone** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %9, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %9, i32 0, i32 3
  store i32* %14, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %9, i32 0, i32 1
  %18 = call i32 @dname_count_size_labels(i32* %16, i32* %17)
  %19 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.iter_forwards*, %struct.iter_forwards** %5, align 8
  %21 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @rbtree_search(i32 %22, %struct.iter_forward_zone* %9)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to %struct.iter_forward_zone*
  %29 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %28, i32 0, i32 0
  %30 = load %struct.delegpt*, %struct.delegpt** %29, align 8
  store %struct.delegpt* %30, %struct.delegpt** %4, align 8
  br label %32

31:                                               ; preds = %3
  store %struct.delegpt* null, %struct.delegpt** %4, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  ret %struct.delegpt* %33
}

declare dso_local i32 @dname_count_size_labels(i32*, i32*) #1

declare dso_local i32* @rbtree_search(i32, %struct.iter_forward_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
