; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_read_phy_reg_1g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_read_phy_reg_1g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_mii_access_mem_map = type { i32, i32, i32 }

@MDIO_CFG_CLK_DIV_MASK = common dso_local global i32 0, align 4
@MDIO_CFG_HOLD_MASK = common dso_local global i32 0, align 4
@MDIO_CFG_BSY = common dso_local global i32 0, align 4
@MDIO_CTL_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MDIO_CTL_READ = common dso_local global i32 0, align 4
@MDIO_DATA_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memac_mii_access_mem_map*, i32, i32, i64*)* @read_phy_reg_1g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_phy_reg_1g(%struct.memac_mii_access_mem_map* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.memac_mii_access_mem_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.memac_mii_access_mem_map* %0, %struct.memac_mii_access_mem_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %11 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %10, i32 0, i32 0
  %12 = call i32 @ioread32be(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @MDIO_CFG_CLK_DIV_MASK, align 4
  %14 = load i32, i32* @MDIO_CFG_HOLD_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %20 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %19, i32 0, i32 0
  %21 = call i32 @iowrite32be(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %29, %4
  %23 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %24 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %23, i32 0, i32 0
  %25 = call i32 @ioread32be(i32* %24)
  %26 = load i32, i32* @MDIO_CFG_BSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @udelay(i32 1)
  br label %22

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MDIO_CTL_PHY_ADDR_SHIFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @MDIO_CTL_READ, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %43 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %42, i32 0, i32 2
  %44 = call i32 @iowrite32be(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %52, %31
  %46 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %47 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %46, i32 0, i32 0
  %48 = call i32 @ioread32be(i32* %47)
  %49 = load i32, i32* @MDIO_CFG_BSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @udelay(i32 1)
  br label %45

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %62, %54
  %56 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %57 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %56, i32 0, i32 1
  %58 = call i32 @ioread32be(i32* %57)
  %59 = load i32, i32* @MDIO_DATA_BSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 @udelay(i32 1)
  br label %55

64:                                               ; preds = %55
  %65 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %66 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %65, i32 0, i32 1
  %67 = call i32 @ioread32be(i32* %66)
  %68 = sext i32 %67 to i64
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  %70 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %71 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %70, i32 0, i32 0
  %72 = call i32 @ioread32be(i32* %71)
  ret i32 %72
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
