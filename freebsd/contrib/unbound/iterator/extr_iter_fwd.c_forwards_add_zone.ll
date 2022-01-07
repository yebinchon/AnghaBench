; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_add_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_add_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_forwards = type { i32 }
%struct.delegpt = type { i32 }
%struct.iter_forward_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forwards_add_zone(%struct.iter_forwards* %0, i32 %1, %struct.delegpt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iter_forwards*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca %struct.iter_forward_zone*, align 8
  store %struct.iter_forwards* %0, %struct.iter_forwards** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.delegpt* %2, %struct.delegpt** %7, align 8
  %9 = load %struct.iter_forwards*, %struct.iter_forwards** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %12 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.iter_forward_zone* @fwd_zone_find(%struct.iter_forwards* %9, i32 %10, i32 %13)
  store %struct.iter_forward_zone* %14, %struct.iter_forward_zone** %8, align 8
  %15 = icmp ne %struct.iter_forward_zone* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.iter_forwards*, %struct.iter_forwards** %5, align 8
  %18 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %21 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %20, i32 0, i32 0
  %22 = call i32 @rbtree_delete(i32 %19, i32* %21)
  %23 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %8, align 8
  %24 = call i32 @fwd_zone_free(%struct.iter_forward_zone* %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.iter_forwards*, %struct.iter_forwards** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %29 = call i32 @forwards_insert(%struct.iter_forwards* %26, i32 %27, %struct.delegpt* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.iter_forwards*, %struct.iter_forwards** %5, align 8
  %34 = call i32 @fwd_init_parents(%struct.iter_forwards* %33)
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.iter_forward_zone* @fwd_zone_find(%struct.iter_forwards*, i32, i32) #1

declare dso_local i32 @rbtree_delete(i32, i32*) #1

declare dso_local i32 @fwd_zone_free(%struct.iter_forward_zone*) #1

declare dso_local i32 @forwards_insert(%struct.iter_forwards*, i32, %struct.delegpt*) #1

declare dso_local i32 @fwd_init_parents(%struct.iter_forwards*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
