; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_reg_bar_read32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_reg_bar_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, i32, %struct.ena_com_mmio_read }
%struct.ena_com_mmio_read = type { i64, i32, i32, i32, %struct.ena_admin_ena_mmio_req_read_less_resp* }
%struct.ena_admin_ena_mmio_req_read_less_resp = type { i32, i64, i64 }

@ENA_REG_READ_TIMEOUT = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_REG_OFF_SHIFT = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_REG_OFF_MASK = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_REQ_ID_MASK = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [99 x i8] c"reading reg failed for timeout. expected: req id[%hu] offset[%hu] actual: req id[%hu] offset[%hu]\0A\00", align 1
@ENA_MMIO_READ_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Read failure: wrong offset provided\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ena_com_dev*, i64)* @ena_com_reg_bar_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ena_com_reg_bar_read32(%struct.ena_com_dev* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_com_mmio_read*, align 8
  %7 = alloca %struct.ena_admin_ena_mmio_req_read_less_resp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %14 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %13, i32 0, i32 2
  store %struct.ena_com_mmio_read* %14, %struct.ena_com_mmio_read** %6, align 8
  %15 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %16 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %15, i32 0, i32 4
  %17 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %16, align 8
  store %struct.ena_admin_ena_mmio_req_read_less_resp* %17, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %19 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = call i32 (...) @ENA_MIGHT_SLEEP()
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @ENA_REG_READ_TIMEOUT, align 8
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %28 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %33 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %36 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @ENA_REG_READ32(i32 %34, i64 %39)
  store i64 %40, i64* %3, align 8
  br label %141

41:                                               ; preds = %26
  %42 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %43 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @ENA_SPINLOCK_LOCK(i32 %44, i64 %45)
  %47 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %48 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %52 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 57005
  %55 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %56 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %55, i32 0, i32 0
  store volatile i32 %54, i32* %56, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @ENA_REGS_MMIO_REG_READ_REG_OFF_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = load i64, i64* @ENA_REGS_MMIO_REG_READ_REG_OFF_MASK, align 8
  %61 = and i64 %59, %60
  store i64 %61, i64* %8, align 8
  %62 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %63 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @ENA_REGS_MMIO_REG_READ_REQ_ID_MASK, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* %8, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %71 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %75 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ENA_REGS_MMIO_REG_READ_OFF, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @ENA_REG_WRITE32(i32 %72, i64 %73, i64 %78)
  store i64 0, i64* %10, align 8
  br label %80

80:                                               ; preds = %97, %41
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %86 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %85, i32 0, i32 0
  %87 = load volatile i32, i32* %86, align 8
  %88 = call i64 @READ_ONCE16(i32 %87)
  %89 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %90 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp eq i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %100

95:                                               ; preds = %84
  %96 = call i32 @ENA_UDELAY(i32 1)
  br label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %80

100:                                              ; preds = %94, %80
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %100
  %108 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %109 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %113 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %112, i32 0, i32 0
  %114 = load volatile i32, i32* %113, align 8
  %115 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %116 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %115, i32 0, i32 1
  %117 = load volatile i64, i64* %116, align 8
  %118 = call i32 (i8*, ...) @ena_trc_err(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %110, i64 %111, i32 %114, i64 %117)
  %119 = load i64, i64* @ENA_MMIO_READ_TIMEOUT, align 8
  store i64 %119, i64* %9, align 8
  br label %134

120:                                              ; preds = %100
  %121 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %122 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %121, i32 0, i32 1
  %123 = load volatile i64, i64* %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = call i32 (i8*, ...) @ena_trc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i64, i64* @ENA_MMIO_READ_TIMEOUT, align 8
  store i64 %128, i64* %9, align 8
  br label %133

129:                                              ; preds = %120
  %130 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %131 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %130, i32 0, i32 2
  %132 = load volatile i64, i64* %131, align 8
  store i64 %132, i64* %9, align 8
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %107
  %135 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %136 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @ENA_SPINLOCK_UNLOCK(i32 %137, i64 %138)
  %140 = load i64, i64* %9, align 8
  store i64 %140, i64* %3, align 8
  br label %141

141:                                              ; preds = %134, %31
  %142 = load i64, i64* %3, align 8
  ret i64 %142
}

declare dso_local i32 @ENA_MIGHT_SLEEP(...) #1

declare dso_local i64 @ENA_REG_READ32(i32, i64) #1

declare dso_local i32 @ENA_SPINLOCK_LOCK(i32, i64) #1

declare dso_local i32 @ENA_REG_WRITE32(i32, i64, i64) #1

declare dso_local i64 @READ_ONCE16(i32) #1

declare dso_local i32 @ENA_UDELAY(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, ...) #1

declare dso_local i32 @ENA_SPINLOCK_UNLOCK(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
