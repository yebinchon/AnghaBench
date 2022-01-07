; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_modstack_desetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_modstack.c_modstack_desetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_stack = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 (%struct.module_env*, i32)* }
%struct.module_env = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modstack_desetup(%struct.module_stack* %0, %struct.module_env* %1) #0 {
  %3 = alloca %struct.module_stack*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i32, align 4
  store %struct.module_stack* %0, %struct.module_stack** %3, align 8
  store %struct.module_env* %1, %struct.module_env** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.module_stack*, %struct.module_stack** %3, align 8
  %9 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load %struct.module_stack*, %struct.module_stack** %3, align 8
  %14 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.module_env*, i32)*, i32 (%struct.module_env*, i32)** %20, align 8
  %22 = call i32 @fptr_whitelist_mod_deinit(i32 (%struct.module_env*, i32)* %21)
  %23 = call i32 @fptr_ok(i32 %22)
  %24 = load %struct.module_stack*, %struct.module_stack** %3, align 8
  %25 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.module_env*, i32)*, i32 (%struct.module_env*, i32)** %31, align 8
  %33 = load %struct.module_env*, %struct.module_env** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %32(%struct.module_env* %33, i32 %34)
  br label %36

36:                                               ; preds = %12
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %6

39:                                               ; preds = %6
  %40 = load %struct.module_stack*, %struct.module_stack** %3, align 8
  %41 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.module_stack*, %struct.module_stack** %3, align 8
  %43 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = call i32 @free(%struct.TYPE_2__** %44)
  %46 = load %struct.module_stack*, %struct.module_stack** %3, align 8
  %47 = getelementptr inbounds %struct.module_stack, %struct.module_stack* %46, i32 0, i32 1
  store %struct.TYPE_2__** null, %struct.TYPE_2__*** %47, align 8
  ret void
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_mod_deinit(i32 (%struct.module_env*, i32)*) #1

declare dso_local i32 @free(%struct.TYPE_2__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
