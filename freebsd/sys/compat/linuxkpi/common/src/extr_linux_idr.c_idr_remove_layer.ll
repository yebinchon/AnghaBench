; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_remove_layer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_remove_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr_layer = type { %struct.idr_layer** }

@M_IDR = common dso_local global i32 0, align 4
@IDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idr_layer*, i32)* @idr_remove_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idr_remove_layer(%struct.idr_layer* %0, i32 %1) #0 {
  %3 = alloca %struct.idr_layer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.idr_layer* %0, %struct.idr_layer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  %7 = icmp eq %struct.idr_layer* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %44

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  %14 = load i32, i32* @M_IDR, align 4
  %15 = call i32 @free(%struct.idr_layer* %13, i32 %14)
  br label %44

16:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IDR_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  %23 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %22, i32 0, i32 0
  %24 = load %struct.idr_layer**, %struct.idr_layer*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %24, i64 %26
  %28 = load %struct.idr_layer*, %struct.idr_layer** %27, align 8
  %29 = icmp ne %struct.idr_layer* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  %32 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %31, i32 0, i32 0
  %33 = load %struct.idr_layer**, %struct.idr_layer*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %33, i64 %35
  %37 = load %struct.idr_layer*, %struct.idr_layer** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  call void @idr_remove_layer(%struct.idr_layer* %37, i32 %39)
  br label %40

40:                                               ; preds = %30, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %17

44:                                               ; preds = %8, %12, %17
  ret void
}

declare dso_local i32 @free(%struct.idr_layer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
