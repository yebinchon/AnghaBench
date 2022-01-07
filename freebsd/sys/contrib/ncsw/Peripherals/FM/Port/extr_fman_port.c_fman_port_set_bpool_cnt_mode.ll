; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_bpool_cnt_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_bpool_cnt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@FMAN_PORT_MAX_EXT_POOLS_NUM = common dso_local global i64 0, align 8
@BMI_EXT_BUF_POOL_EN_COUNTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_set_bpool_cnt_mode(%struct.fman_port* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fman_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %11 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %14 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %3, %3
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %13
  %18 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @fman_port_find_bpool(%struct.fman_port* %18, i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %23 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @FMAN_PORT_MAX_EXT_POOLS_NUM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %26
  %34 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %35 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @ioread32be(i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* @BMI_EXT_BUF_POOL_EN_COUNTER, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %54

49:                                               ; preds = %33
  %50 = load i32, i32* @BMI_EXT_BUF_POOL_EN_COUNTER, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %57 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @iowrite32be(i32 %55, i32* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %54, %30, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @fman_port_find_bpool(%struct.fman_port*, i64) #1

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
