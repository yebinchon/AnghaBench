; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_priv = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iter_priv* @priv_create() #0 {
  %1 = alloca %struct.iter_priv*, align 8
  %2 = alloca %struct.iter_priv*, align 8
  %3 = call i64 @calloc(i32 1, i32 12)
  %4 = inttoptr i64 %3 to %struct.iter_priv*
  store %struct.iter_priv* %4, %struct.iter_priv** %2, align 8
  %5 = load %struct.iter_priv*, %struct.iter_priv** %2, align 8
  %6 = icmp ne %struct.iter_priv* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.iter_priv* null, %struct.iter_priv** %1, align 8
  br label %27

8:                                                ; preds = %0
  %9 = call i32 (...) @regional_create()
  %10 = load %struct.iter_priv*, %struct.iter_priv** %2, align 8
  %11 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.iter_priv*, %struct.iter_priv** %2, align 8
  %13 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load %struct.iter_priv*, %struct.iter_priv** %2, align 8
  %18 = call i32 @priv_delete(%struct.iter_priv* %17)
  store %struct.iter_priv* null, %struct.iter_priv** %1, align 8
  br label %27

19:                                               ; preds = %8
  %20 = load %struct.iter_priv*, %struct.iter_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %20, i32 0, i32 1
  %22 = call i32 @addr_tree_init(i32* %21)
  %23 = load %struct.iter_priv*, %struct.iter_priv** %2, align 8
  %24 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %23, i32 0, i32 0
  %25 = call i32 @name_tree_init(i32* %24)
  %26 = load %struct.iter_priv*, %struct.iter_priv** %2, align 8
  store %struct.iter_priv* %26, %struct.iter_priv** %1, align 8
  br label %27

27:                                               ; preds = %19, %16, %7
  %28 = load %struct.iter_priv*, %struct.iter_priv** %1, align 8
  ret %struct.iter_priv* %28
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @regional_create(...) #1

declare dso_local i32 @priv_delete(%struct.iter_priv*) #1

declare dso_local i32 @addr_tree_init(i32*) #1

declare dso_local i32 @name_tree_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
