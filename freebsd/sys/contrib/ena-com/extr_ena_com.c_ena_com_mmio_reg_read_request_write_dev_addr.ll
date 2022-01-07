; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_mmio_reg_read_request_write_dev_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_mmio_reg_read_request_write_dev_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, i32, %struct.ena_com_mmio_read }
%struct.ena_com_mmio_read = type { i32 }

@ENA_REGS_MMIO_RESP_LO_OFF = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_RESP_HI_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_mmio_read*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %6 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %7 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %6, i32 0, i32 2
  store %struct.ena_com_mmio_read* %7, %struct.ena_com_mmio_read** %3, align 8
  %8 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %3, align 8
  %9 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %17 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %21 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ENA_REGS_MMIO_RESP_LO_OFF, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ENA_REG_WRITE32(i32 %18, i32 %19, i64 %24)
  %26 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %27 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %31 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ENA_REGS_MMIO_RESP_HI_OFF, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @ENA_REG_WRITE32(i32 %28, i32 %29, i64 %34)
  ret void
}

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32) #1

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32) #1

declare dso_local i32 @ENA_REG_WRITE32(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
