; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_dev_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_REGS_DEV_STS_OFF = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_OFF = common dso_local global i32 0, align 4
@ENA_MMIO_READ_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Reg read32 timeout occurred\0A\00", align 1
@ENA_COM_TIMER_EXPIRED = common dso_local global i32 0, align 4
@ENA_REGS_DEV_STS_READY_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Device isn't ready, can't reset device\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_RESET_TIMEOUT_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_RESET_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid timeout value\0A\00", align 1
@ENA_REGS_DEV_CTL_DEV_RESET_MASK = common dso_local global i32 0, align 4
@ENA_REGS_DEV_CTL_RESET_REASON_SHIFT = common dso_local global i32 0, align 4
@ENA_REGS_DEV_CTL_RESET_REASON_MASK = common dso_local global i32 0, align 4
@ENA_REGS_DEV_CTL_OFF = common dso_local global i64 0, align 8
@ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Reset indication didn't turn on\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Reset indication didn't turn off\0A\00", align 1
@ENA_REGS_CAPS_ADMIN_CMD_TO_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_ADMIN_CMD_TO_SHIFT = common dso_local global i32 0, align 4
@ADMIN_CMD_TIMEOUT_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %12 = load i32, i32* @ENA_REGS_DEV_STS_OFF, align 4
  %13 = call i32 @ena_com_reg_bar_read32(%struct.ena_com_dev* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %15 = load i32, i32* @ENA_REGS_CAPS_OFF, align 4
  %16 = call i32 @ena_com_reg_bar_read32(%struct.ena_com_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENA_MMIO_READ_TIMEOUT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ENA_MMIO_READ_TIMEOUT, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @ena_trc_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENA_COM_TIMER_EXPIRED, align 4
  store i32 %31, i32* %3, align 4
  br label %119

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ENA_REGS_DEV_STS_READY_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @ena_trc_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %119

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ENA_REGS_CAPS_RESET_TIMEOUT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @ENA_REGS_CAPS_RESET_TIMEOUT_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = call i32 @ena_trc_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %119

51:                                               ; preds = %40
  %52 = load i32, i32* @ENA_REGS_DEV_CTL_DEV_RESET_MASK, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ENA_REGS_DEV_CTL_RESET_REASON_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @ENA_REGS_DEV_CTL_RESET_REASON_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %61 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %65 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ENA_REGS_DEV_CTL_OFF, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @ENA_REG_WRITE32(i32 %62, i32 %63, i64 %68)
  %70 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %71 = call i32 @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev* %70)
  %72 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK, align 4
  %75 = call i32 @wait_for_reset_state(%struct.ena_com_dev* %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %51
  %79 = call i32 @ena_trc_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %119

81:                                               ; preds = %51
  %82 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %83 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %86 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ENA_REGS_DEV_CTL_OFF, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @ENA_REG_WRITE32(i32 %84, i32 0, i64 %89)
  %91 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @wait_for_reset_state(%struct.ena_com_dev* %91, i32 %92, i32 0)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = call i32 @ena_trc_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %119

99:                                               ; preds = %81
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @ENA_REGS_CAPS_ADMIN_CMD_TO_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @ENA_REGS_CAPS_ADMIN_CMD_TO_SHIFT, align 4
  %104 = ashr i32 %102, %103
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = mul nsw i32 %108, 100000
  %110 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %111 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %118

113:                                              ; preds = %99
  %114 = load i32, i32* @ADMIN_CMD_TIMEOUT_US, align 4
  %115 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %116 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  br label %118

118:                                              ; preds = %113, %107
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %96, %78, %48, %37, %29
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @ena_com_reg_bar_read32(%struct.ena_com_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @ENA_REG_WRITE32(i32, i32, i64) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev*) #1

declare dso_local i32 @wait_for_reset_state(%struct.ena_com_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
