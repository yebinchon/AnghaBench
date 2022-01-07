; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_init.c_add_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_init.c_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_device*, %struct.ibv_device***, i32*, i32*)* @add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_device(%struct.ibv_device* %0, %struct.ibv_device*** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ibv_device*, align 8
  %6 = alloca %struct.ibv_device***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ibv_device**, align 8
  store %struct.ibv_device* %0, %struct.ibv_device** %5, align 8
  store %struct.ibv_device*** %1, %struct.ibv_device**** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 1, %23 ]
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ibv_device***, %struct.ibv_device**** %6, align 8
  %28 = load %struct.ibv_device**, %struct.ibv_device*** %27, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call %struct.ibv_device** @realloc(%struct.ibv_device** %28, i32 %33)
  store %struct.ibv_device** %34, %struct.ibv_device*** %9, align 8
  %35 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %36 = icmp ne %struct.ibv_device** %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %50

38:                                               ; preds = %24
  %39 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %40 = load %struct.ibv_device***, %struct.ibv_device**** %6, align 8
  store %struct.ibv_device** %39, %struct.ibv_device*** %40, align 8
  br label %41

41:                                               ; preds = %38, %4
  %42 = load %struct.ibv_device*, %struct.ibv_device** %5, align 8
  %43 = load %struct.ibv_device***, %struct.ibv_device**** %6, align 8
  %44 = load %struct.ibv_device**, %struct.ibv_device*** %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %44, i64 %48
  store %struct.ibv_device* %42, %struct.ibv_device** %49, align 8
  br label %50

50:                                               ; preds = %41, %37
  ret void
}

declare dso_local %struct.ibv_device** @realloc(%struct.ibv_device**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
