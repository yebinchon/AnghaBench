; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QMI_PORT_CFG_EN = common dso_local global i32 0, align 4
@QMI_PORT_STATUS_DEQ_FD_BSY = common dso_local global i32 0, align 4
@BMI_PORT_CFG_EN = common dso_local global i32 0, align 4
@BMI_PORT_STATUS_BSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_disable(%struct.fman_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %12 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %50 [
    i32 131, label %14
    i32 130, label %14
    i32 129, label %26
    i32 128, label %26
    i32 132, label %38
    i32 133, label %38
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %16 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32* %19, i32** %4, align 8
  %20 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %21 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %7, align 4
  br label %53

26:                                               ; preds = %1, %1
  %27 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %28 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* %31, i32** %4, align 8
  %32 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %33 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32* %36, i32** %5, align 8
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %7, align 4
  br label %53

38:                                               ; preds = %1, %1
  %39 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %40 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32* %43, i32** %4, align 8
  %44 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %45 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32* %48, i32** %5, align 8
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %7, align 4
  br label %53

50:                                               ; preds = %1
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %131

53:                                               ; preds = %38, %26, %14
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %53
  %57 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %58 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 @ioread32be(i32* %60)
  %62 = load i32, i32* @QMI_PORT_CFG_EN, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %67 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call i32 @iowrite32be(i32 %65, i32* %69)
  store i32 100, i32* %9, align 4
  br label %71

71:                                               ; preds = %87, %56
  %72 = call i32 @DELAY(i32 10)
  %73 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %74 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = call i32 @ioread32be(i32* %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @QMI_PORT_STATUS_DEQ_FD_BSY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i1 [ false, %78 ], [ %86, %83 ]
  br i1 %88, label %71, label %89

89:                                               ; preds = %87
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %89
  br label %95

95:                                               ; preds = %94, %53
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @ioread32be(i32* %96)
  %98 = load i32, i32* @BMI_PORT_CFG_EN, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @iowrite32be(i32 %101, i32* %102)
  store i32 500, i32* %9, align 4
  br label %104

104:                                              ; preds = %117, %95
  %105 = call i32 @DELAY(i32 10)
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @ioread32be(i32* %106)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @BMI_PORT_STATUS_BSY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %113, %108
  %118 = phi i1 [ false, %108 ], [ %116, %113 ]
  br i1 %118, label %104, label %119

119:                                              ; preds = %117
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %127, %50
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
