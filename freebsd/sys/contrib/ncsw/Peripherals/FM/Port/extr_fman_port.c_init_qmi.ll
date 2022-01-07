; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_qmi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_init_qmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i64, %struct.fman_port_qmi_regs* }
%struct.fman_port_qmi_regs = type { i32, i32, i32, i32 }
%struct.fman_port_cfg = type { i32, i32, i32, i64, i64, i64 }
%struct.fman_port_params = type { i32 }

@QMI_PORT_CFG_EN_COUNTERS = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_RX = common dso_local global i64 0, align 8
@E_FMAN_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@NIA_ENG_BMI = common dso_local global i32 0, align 4
@NIA_BMI_AC_RELEASE = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_TX = common dso_local global i64 0, align 8
@E_FMAN_PORT_TYPE_TX_10G = common dso_local global i64 0, align 8
@NIA_BMI_AC_TX_RELEASE = common dso_local global i32 0, align 4
@NIA_BMI_AC_TX = common dso_local global i32 0, align 4
@NIA_BMI_AC_FETCH = common dso_local global i32 0, align 4
@QMI_DEQ_CFG_PRI = common dso_local global i32 0, align 4
@QMI_DEQ_CFG_TYPE1 = common dso_local global i32 0, align 4
@QMI_DEQ_CFG_TYPE2 = common dso_local global i32 0, align 4
@QMI_DEQ_CFG_TYPE3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_HC = common dso_local global i64 0, align 8
@QMI_DEQ_CFG_PREFETCH_PARTIAL = common dso_local global i32 0, align 4
@QMI_DEQ_CFG_PREFETCH_FULL = common dso_local global i32 0, align 4
@QMI_DEQ_CFG_SP_MASK = common dso_local global i32 0, align 4
@QMI_DEQ_CFG_SP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*)* @init_qmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_qmi(%struct.fman_port* %0, %struct.fman_port_cfg* %1, %struct.fman_port_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fman_port*, align 8
  %6 = alloca %struct.fman_port_cfg*, align 8
  %7 = alloca %struct.fman_port_params*, align 8
  %8 = alloca %struct.fman_port_qmi_regs*, align 8
  %9 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %5, align 8
  store %struct.fman_port_cfg* %1, %struct.fman_port_cfg** %6, align 8
  store %struct.fman_port_params* %2, %struct.fman_port_params** %7, align 8
  %10 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %11 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %10, i32 0, i32 1
  %12 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %11, align 8
  store %struct.fman_port_qmi_regs* %12, %struct.fman_port_qmi_regs** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %14 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @QMI_PORT_CFG_EN_COUNTERS, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %8, align 8
  %24 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %23, i32 0, i32 3
  %25 = call i32 @iowrite32be(i32 %22, i32* %24)
  %26 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %27 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @E_FMAN_PORT_TYPE_RX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %33 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @E_FMAN_PORT_TYPE_RX_10G, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31, %21
  %38 = load i32, i32* @NIA_ENG_BMI, align 4
  %39 = load i32, i32* @NIA_BMI_AC_RELEASE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %8, align 8
  %42 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %41, i32 0, i32 2
  %43 = call i32 @iowrite32be(i32 %40, i32* %42)
  store i32 0, i32* %4, align 4
  br label %165

44:                                               ; preds = %31
  %45 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %46 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @E_FMAN_PORT_TYPE_TX, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %52 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @E_FMAN_PORT_TYPE_TX_10G, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @NIA_ENG_BMI, align 4
  %58 = load i32, i32* @NIA_BMI_AC_TX_RELEASE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %8, align 8
  %61 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %60, i32 0, i32 2
  %62 = call i32 @iowrite32be(i32 %59, i32* %61)
  %63 = load i32, i32* @NIA_ENG_BMI, align 4
  %64 = load i32, i32* @NIA_BMI_AC_TX, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %8, align 8
  %67 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %66, i32 0, i32 1
  %68 = call i32 @iowrite32be(i32 %65, i32* %67)
  br label %82

69:                                               ; preds = %50
  %70 = load i32, i32* @NIA_ENG_BMI, align 4
  %71 = load i32, i32* @NIA_BMI_AC_RELEASE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %8, align 8
  %74 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %73, i32 0, i32 2
  %75 = call i32 @iowrite32be(i32 %72, i32* %74)
  %76 = load i32, i32* @NIA_ENG_BMI, align 4
  %77 = load i32, i32* @NIA_BMI_AC_FETCH, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %8, align 8
  %80 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %79, i32 0, i32 1
  %81 = call i32 @iowrite32be(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %69, %56
  store i32 0, i32* %9, align 4
  %83 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %84 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @QMI_DEQ_CFG_PRI, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %93 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %107 [
    i32 131, label %95
    i32 133, label %99
    i32 132, label %103
  ]

95:                                               ; preds = %91
  %96 = load i32, i32* @QMI_DEQ_CFG_TYPE1, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %110

99:                                               ; preds = %91
  %100 = load i32, i32* @QMI_DEQ_CFG_TYPE2, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %110

103:                                              ; preds = %91
  %104 = load i32, i32* @QMI_DEQ_CFG_TYPE3, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %110

107:                                              ; preds = %91
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %165

110:                                              ; preds = %103, %99, %95
  %111 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %112 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %110
  %116 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %117 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @E_FMAN_PORT_TYPE_HC, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %123 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 129
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %165

129:                                              ; preds = %121, %115
  %130 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %131 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %142 [
    i32 129, label %133
    i32 128, label %134
    i32 130, label %138
  ]

133:                                              ; preds = %129
  br label %145

134:                                              ; preds = %129
  %135 = load i32, i32* @QMI_DEQ_CFG_PREFETCH_PARTIAL, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %145

138:                                              ; preds = %129
  %139 = load i32, i32* @QMI_DEQ_CFG_PREFETCH_FULL, align 4
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %145

142:                                              ; preds = %129
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %165

145:                                              ; preds = %138, %134, %133
  br label %146

146:                                              ; preds = %145, %110
  %147 = load %struct.fman_port_params*, %struct.fman_port_params** %7, align 8
  %148 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @QMI_DEQ_CFG_SP_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @QMI_DEQ_CFG_SP_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %157 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %8, align 8
  %163 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %162, i32 0, i32 0
  %164 = call i32 @iowrite32be(i32 %161, i32* %163)
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %146, %142, %126, %107, %37
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
