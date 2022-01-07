; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_perf_cnt_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_perf_cnt_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fman_port_perf_cnt_params = type { i32, i32, i32, i32 }

@MAX_PERFORMANCE_RX_QUEUE_COMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_PERFORMANCE_TX_QUEUE_COMP = common dso_local global i32 0, align 4
@MAX_PERFORMANCE_TASK_COMP = common dso_local global i32 0, align 4
@MAX_PERFORMANCE_DMA_COMP = common dso_local global i32 0, align 4
@FMAN_PORT_BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@MAX_PERFORMANCE_FIFO_COMP = common dso_local global i32 0, align 4
@BMI_PERFORMANCE_TASK_COMP_SHIFT = common dso_local global i32 0, align 4
@BMI_PERFORMANCE_DMA_COMP_SHIFT = common dso_local global i32 0, align 4
@BMI_PERFORMANCE_QUEUE_COMP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_set_perf_cnt_params(%struct.fman_port* %0, %struct.fman_port_perf_cnt_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca %struct.fman_port_perf_cnt_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store %struct.fman_port_perf_cnt_params* %1, %struct.fman_port_perf_cnt_params** %5, align 8
  %8 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %9 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %65 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %31
    i32 128, label %31
    i32 132, label %51
    i32 133, label %51
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %13 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32* %16, i32** %6, align 8
  %17 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %18 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %23 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_PERFORMANCE_RX_QUEUE_COMP, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %11
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %152

30:                                               ; preds = %21
  br label %68

31:                                               ; preds = %2, %2
  %32 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %33 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32* %36, i32** %6, align 8
  %37 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %38 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %43 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX_PERFORMANCE_TX_QUEUE_COMP, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %31
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %152

50:                                               ; preds = %41
  br label %68

51:                                               ; preds = %2, %2
  %52 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %53 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32* %56, i32** %6, align 8
  %57 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %58 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %152

64:                                               ; preds = %51
  br label %68

65:                                               ; preds = %2
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %152

68:                                               ; preds = %64, %50, %30
  %69 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %70 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %75 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MAX_PERFORMANCE_TASK_COMP, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %68
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %152

82:                                               ; preds = %73
  %83 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %84 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %89 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MAX_PERFORMANCE_DMA_COMP, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87, %82
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %152

96:                                               ; preds = %87
  %97 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %98 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %103 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %106 = sdiv i32 %104, %105
  %107 = load i32, i32* @MAX_PERFORMANCE_FIFO_COMP, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101, %96
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %152

112:                                              ; preds = %101
  %113 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %114 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* @BMI_PERFORMANCE_TASK_COMP_SHIFT, align 4
  %118 = shl i32 %116, %117
  store i32 %118, i32* %7, align 4
  %119 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %120 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* @BMI_PERFORMANCE_DMA_COMP_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %128 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @FMAN_PORT_BMI_FIFO_UNITS, align 4
  %131 = sdiv i32 %129, %130
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %136 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %147 [
    i32 131, label %138
    i32 130, label %138
    i32 129, label %138
    i32 128, label %138
  ]

138:                                              ; preds = %112, %112, %112, %112
  %139 = load %struct.fman_port_perf_cnt_params*, %struct.fman_port_perf_cnt_params** %5, align 8
  %140 = getelementptr inbounds %struct.fman_port_perf_cnt_params, %struct.fman_port_perf_cnt_params* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = load i32, i32* @BMI_PERFORMANCE_QUEUE_COMP_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  br label %148

147:                                              ; preds = %112
  br label %148

148:                                              ; preds = %147, %138
  %149 = load i32, i32* %7, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @iowrite32be(i32 %149, i32* %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %109, %93, %79, %65, %61, %47, %27
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
