; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GPIOMAXPIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_pin_list(i32 %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @GPIOMAXPIN, align 4
  %12 = call i64 @ioctl(i32 %10, i32 %11, i32* %6)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 4096
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %55

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = call %struct.TYPE_5__* @calloc(i32 %25, i32 4)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %55

30:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = call i32 @gpio_pin_config(i32 %42, %struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %53, align 8
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %29, %21, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @gpio_pin_config(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
