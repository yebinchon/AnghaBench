; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_fwd_zone_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_fwd_zone_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_forward_zone = type { i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iter_forward_zone* }
%struct.iter_forwards = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iter_forward_zone* (%struct.iter_forwards*, i32, i32*)* @fwd_zone_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iter_forward_zone* @fwd_zone_find(%struct.iter_forwards* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iter_forwards*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iter_forward_zone, align 8
  store %struct.iter_forwards* %0, %struct.iter_forwards** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.iter_forward_zone* %7, %struct.iter_forward_zone** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %7, i32 0, i32 2
  store i32* %12, i32** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %7, i32 0, i32 0
  %16 = call i32 @dname_count_size_labels(i32* %14, i32* %15)
  %17 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %19 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @rbtree_search(i32 %20, %struct.iter_forward_zone* %7)
  %22 = inttoptr i64 %21 to %struct.iter_forward_zone*
  ret %struct.iter_forward_zone* %22
}

declare dso_local i32 @dname_count_size_labels(i32*, i32*) #1

declare dso_local i64 @rbtree_search(i32, %struct.iter_forward_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
