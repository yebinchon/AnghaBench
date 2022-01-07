; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_init_aenq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_init_aenq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, i32, %struct.ena_com_aenq, i32 }
%struct.ena_com_aenq = type { i32, i32, i32, %struct.ena_aenq_handlers*, i32, i32, i32 }
%struct.ena_aenq_handlers = type { i32 }

@ENA_ASYNC_QUEUE_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_BASE_LO_OFF = common dso_local global i64 0, align 8
@ENA_REGS_AENQ_BASE_HI_OFF = common dso_local global i64 0, align 8
@ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_CAPS_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"aenq handlers pointer is NULL\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_aenq_handlers*)* @ena_com_admin_init_aenq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_admin_init_aenq(%struct.ena_com_dev* %0, %struct.ena_aenq_handlers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_aenq_handlers*, align 8
  %6 = alloca %struct.ena_com_aenq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_aenq_handlers* %1, %struct.ena_aenq_handlers** %5, align 8
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 2
  store %struct.ena_com_aenq* %12, %struct.ena_com_aenq** %6, align 8
  %13 = load i32, i32* @ENA_ASYNC_QUEUE_DEPTH, align 4
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @ENA_ASYNC_QUEUE_DEPTH, align 4
  %18 = call i32 @ADMIN_AENQ_SIZE(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %20 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %24 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %27 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %30 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %21, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %34 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = call i32 @ena_trc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %39, i32* %3, align 4
  br label %117

40:                                               ; preds = %2
  %41 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %42 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %45 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %47 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %49 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %53 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %57 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %61 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ENA_REGS_AENQ_BASE_LO_OFF, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @ENA_REG_WRITE32(i32 %58, i32 %59, i64 %64)
  %66 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %67 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %71 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ENA_REGS_AENQ_BASE_HI_OFF, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @ENA_REG_WRITE32(i32 %68, i32 %69, i64 %74)
  store i32 0, i32* %9, align 4
  %76 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %77 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* @ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT, align 4
  %85 = zext i32 %84 to i64
  %86 = shl i64 4, %85
  %87 = load i32, i32* @ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK, align 4
  %88 = sext i32 %87 to i64
  %89 = and i64 %86, %88
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = or i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %95 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %99 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ENA_REGS_AENQ_CAPS_OFF, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @ENA_REG_WRITE32(i32 %96, i32 %97, i64 %102)
  %104 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %5, align 8
  %105 = icmp ne %struct.ena_aenq_handlers* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %40
  %111 = call i32 @ena_trc_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %112, i32* %3, align 4
  br label %117

113:                                              ; preds = %40
  %114 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %5, align 8
  %115 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %116 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %115, i32 0, i32 3
  store %struct.ena_aenq_handlers* %114, %struct.ena_aenq_handlers** %116, align 8
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %110, %37
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @ADMIN_AENQ_SIZE(i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32) #1

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32) #1

declare dso_local i32 @ENA_REG_WRITE32(i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
