; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_mem_addr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_mem_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64 }
%struct.ena_common_mem_addr = type { i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"dma address has more bits that the device supports\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_common_mem_addr*, i32)* @ena_com_mem_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_mem_addr_set(%struct.ena_com_dev* %0, %struct.ena_common_mem_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_common_mem_addr*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_common_mem_addr* %1, %struct.ena_common_mem_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %10 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @GENMASK_ULL(i64 %12, i32 0)
  %14 = and i32 %8, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 @ena_trc_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lower_32_bits(i32 %21)
  %23 = load %struct.ena_common_mem_addr*, %struct.ena_common_mem_addr** %6, align 8
  %24 = getelementptr inbounds %struct.ena_common_mem_addr, %struct.ena_common_mem_addr* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @upper_32_bits(i32 %25)
  %27 = load %struct.ena_common_mem_addr*, %struct.ena_common_mem_addr** %6, align 8
  %28 = getelementptr inbounds %struct.ena_common_mem_addr, %struct.ena_common_mem_addr* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
