; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_write_phy_reg_1g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_write_phy_reg_1g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_mii_access_mem_map = type { i32, i32, i32 }

@MDIO_CFG_CLK_DIV_MASK = common dso_local global i32 0, align 4
@MDIO_CFG_HOLD_MASK = common dso_local global i32 0, align 4
@MDIO_CFG_BSY = common dso_local global i32 0, align 4
@MDIO_CTL_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MDIO_DATA_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memac_mii_access_mem_map*, i32, i32, i32)* @write_phy_reg_1g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_phy_reg_1g(%struct.memac_mii_access_mem_map* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.memac_mii_access_mem_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.memac_mii_access_mem_map* %0, %struct.memac_mii_access_mem_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %11 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %10, i32 0, i32 1
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
  %20 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %19, i32 0, i32 1
  %21 = call i32 @iowrite32be(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %29, %4
  %23 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %24 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %23, i32 0, i32 1
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
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %40 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %39, i32 0, i32 2
  %41 = call i32 @iowrite32be(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %49, %31
  %43 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %44 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %43, i32 0, i32 1
  %45 = call i32 @ioread32be(i32* %44)
  %46 = load i32, i32* @MDIO_CFG_BSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @udelay(i32 1)
  br label %42

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %54 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %53, i32 0, i32 0
  %55 = call i32 @iowrite32be(i32 %52, i32* %54)
  %56 = call i32 (...) @wmb()
  br label %57

57:                                               ; preds = %64, %51
  %58 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %59 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %58, i32 0, i32 0
  %60 = call i32 @ioread32be(i32* %59)
  %61 = load i32, i32* @MDIO_DATA_BSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 @udelay(i32 1)
  br label %57

66:                                               ; preds = %57
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
