; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_rate_limiter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_set_rate_limiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fman_port_rate_limiter = type { i32, i32, i32, i32, i64 }

@BMI_RATE_LIMIT_GRAN_TX = common dso_local global i32 0, align 4
@BMI_RATE_LIMIT_GRAN_OP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BMI_RATE_LIMIT_MAX_RATE_IN_GRAN_UNITS = common dso_local global i32 0, align 4
@BMI_RATE_LIMIT_MAX_BURST_SIZE = common dso_local global i32 0, align 4
@BMI_RATE_LIMIT_MAX_BURST_SHIFT = common dso_local global i32 0, align 4
@BMI_RATE_LIMIT_HIGH_BURST_SIZE_GRAN = common dso_local global i32 0, align 4
@BMI_RATE_LIMIT_SCALE_EN = common dso_local global i32 0, align 4
@BMI_RATE_LIMIT_SCALE_TSBS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_set_rate_limiter(%struct.fman_port* %0, %struct.fman_port_rate_limiter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca %struct.fman_port_rate_limiter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store %struct.fman_port_rate_limiter* %1, %struct.fman_port_rate_limiter** %5, align 8
  %12 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %13 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %39 [
    i32 129, label %15
    i32 128, label %15
    i32 130, label %27
  ]

15:                                               ; preds = %2, %2
  %16 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %17 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32* %20, i32** %6, align 8
  %21 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %22 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* @BMI_RATE_LIMIT_GRAN_TX, align 4
  store i32 %26, i32* %8, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %29 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32* %32, i32** %6, align 8
  %33 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %34 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* @BMI_RATE_LIMIT_GRAN_OP, align 4
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %152

42:                                               ; preds = %27, %15
  store i32 1, i32* %11, align 4
  %43 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %44 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %60, %42
  %47 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %48 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sdiv i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 31
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %152

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %67 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %70, %71
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @BMI_RATE_LIMIT_MAX_RATE_IN_GRAN_UNITS, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %152

80:                                               ; preds = %65
  %81 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %82 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %87 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BMI_RATE_LIMIT_MAX_BURST_SIZE, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %80
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %152

94:                                               ; preds = %85
  %95 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %96 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* @BMI_RATE_LIMIT_MAX_BURST_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %104 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 130
  br i1 %106, label %107, label %122

107:                                              ; preds = %94
  %108 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %109 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %114 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @BMI_RATE_LIMIT_HIGH_BURST_SIZE_GRAN, align 4
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %107, %94
  %123 = load i32, i32* %9, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @iowrite32be(i32 %123, i32* %124)
  %126 = load i32, i32* @BMI_RATE_LIMIT_SCALE_EN, align 4
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 31, %127
  %129 = load i32, i32* @BMI_RATE_LIMIT_SCALE_TSBS_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %134 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 130
  br i1 %136, label %137, label %148

137:                                              ; preds = %122
  %138 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %139 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 4
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.fman_port_rate_limiter*, %struct.fman_port_rate_limiter** %5, align 8
  %144 = getelementptr inbounds %struct.fman_port_rate_limiter, %struct.fman_port_rate_limiter* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %142, %137, %122
  %149 = load i32, i32* %9, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @iowrite32be(i32 %149, i32* %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %91, %77, %57, %39
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
