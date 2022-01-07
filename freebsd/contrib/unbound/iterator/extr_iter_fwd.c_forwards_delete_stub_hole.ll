; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_delete_stub_hole.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_delete_stub_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_forwards = type { i32 }
%struct.iter_forward_zone = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forwards_delete_stub_hole(%struct.iter_forwards* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iter_forwards*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iter_forward_zone*, align 8
  store %struct.iter_forwards* %0, %struct.iter_forwards** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.iter_forward_zone* @fwd_zone_find(%struct.iter_forwards* %8, i32 %9, i32* %10)
  store %struct.iter_forward_zone* %11, %struct.iter_forward_zone** %7, align 8
  %12 = icmp ne %struct.iter_forward_zone* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %7, align 8
  %16 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %31

20:                                               ; preds = %14
  %21 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %22 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %7, align 8
  %25 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %24, i32 0, i32 0
  %26 = call i32 @rbtree_delete(i32 %23, i32* %25)
  %27 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %7, align 8
  %28 = call i32 @fwd_zone_free(%struct.iter_forward_zone* %27)
  %29 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %30 = call i32 @fwd_init_parents(%struct.iter_forwards* %29)
  br label %31

31:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local %struct.iter_forward_zone* @fwd_zone_find(%struct.iter_forwards*, i32, i32*) #1

declare dso_local i32 @rbtree_delete(i32, i32*) #1

declare dso_local i32 @fwd_zone_free(%struct.iter_forward_zone*) #1

declare dso_local i32 @fwd_init_parents(%struct.iter_forwards*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
