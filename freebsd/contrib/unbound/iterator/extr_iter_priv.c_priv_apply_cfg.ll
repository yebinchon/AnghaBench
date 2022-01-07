; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_priv = type { i32, i32, i32 }
%struct.config_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_apply_cfg(%struct.iter_priv* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_priv*, align 8
  %5 = alloca %struct.config_file*, align 8
  store %struct.iter_priv* %0, %struct.iter_priv** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %6 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %7 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regional_free_all(i32 %8)
  %10 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %11 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %10, i32 0, i32 1
  %12 = call i32 @addr_tree_init(i32* %11)
  %13 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %14 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %13, i32 0, i32 0
  %15 = call i32 @name_tree_init(i32* %14)
  %16 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %17 = load %struct.config_file*, %struct.config_file** %5, align 8
  %18 = call i32 @read_addrs(%struct.iter_priv* %16, %struct.config_file* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %23 = load %struct.config_file*, %struct.config_file** %5, align 8
  %24 = call i32 @read_names(%struct.iter_priv* %22, %struct.config_file* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %29 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %28, i32 0, i32 1
  %30 = call i32 @addr_tree_init_parents(i32* %29)
  %31 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %32 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %31, i32 0, i32 0
  %33 = call i32 @name_tree_init_parents(i32* %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %26, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @addr_tree_init(i32*) #1

declare dso_local i32 @name_tree_init(i32*) #1

declare dso_local i32 @read_addrs(%struct.iter_priv*, %struct.config_file*) #1

declare dso_local i32 @read_names(%struct.iter_priv*, %struct.config_file*) #1

declare dso_local i32 @addr_tree_init_parents(i32*) #1

declare dso_local i32 @name_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
