; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_forwards = type { i32 }
%struct.config_file = type { i32 }

@fwd_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forwards_apply_cfg(%struct.iter_forwards* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_forwards*, align 8
  %5 = alloca %struct.config_file*, align 8
  store %struct.iter_forwards* %0, %struct.iter_forwards** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %6 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %7 = call i32 @fwd_del_tree(%struct.iter_forwards* %6)
  %8 = load i32, i32* @fwd_cmp, align 4
  %9 = call i32 @rbtree_create(i32 %8)
  %10 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %11 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %13 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %19 = load %struct.config_file*, %struct.config_file** %5, align 8
  %20 = call i32 @read_forwards(%struct.iter_forwards* %18, %struct.config_file* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %32

23:                                               ; preds = %17
  %24 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %25 = load %struct.config_file*, %struct.config_file** %5, align 8
  %26 = call i32 @make_stub_holes(%struct.iter_forwards* %24, %struct.config_file* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.iter_forwards*, %struct.iter_forwards** %4, align 8
  %31 = call i32 @fwd_init_parents(%struct.iter_forwards* %30)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %28, %22, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @fwd_del_tree(%struct.iter_forwards*) #1

declare dso_local i32 @rbtree_create(i32) #1

declare dso_local i32 @read_forwards(%struct.iter_forwards*, %struct.config_file*) #1

declare dso_local i32 @make_stub_holes(%struct.iter_forwards*, %struct.config_file*) #1

declare dso_local i32 @fwd_init_parents(%struct.iter_forwards*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
