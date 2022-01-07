; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_write_phy_reg_10g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_write_phy_reg_10g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_mii_access_mem_map = type { i32, i32, i32, i32 }

@MDIO_CFG_CLK_DIV_MASK = common dso_local global i32 0, align 4
@MDIO_CFG_HOLD_MASK = common dso_local global i32 0, align 4
@MDIO_CFG_ENC45 = common dso_local global i32 0, align 4
@MDIO_CFG_BSY = common dso_local global i32 0, align 4
@MDIO_DATA_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memac_mii_access_mem_map*, i32, i32, i32)* @write_phy_reg_10g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_phy_reg_10g(%struct.memac_mii_access_mem_map* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @MDIO_CFG_HOLD_MASK, align 4
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @MDIO_CFG_ENC45, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %24 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %23, i32 0, i32 1
  %25 = call i32 @iowrite32be(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %33, %4
  %27 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %28 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %27, i32 0, i32 1
  %29 = call i32 @ioread32be(i32* %28)
  %30 = load i32, i32* @MDIO_CFG_BSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @udelay(i32 1)
  br label %26

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %38 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %37, i32 0, i32 3
  %39 = call i32 @iowrite32be(i32 %36, i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %42 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %41, i32 0, i32 2
  %43 = call i32 @iowrite32be(i32 %40, i32* %42)
  %44 = call i32 (...) @wmb()
  br label %45

45:                                               ; preds = %52, %35
  %46 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %47 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %46, i32 0, i32 1
  %48 = call i32 @ioread32be(i32* %47)
  %49 = load i32, i32* @MDIO_CFG_BSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @udelay(i32 1)
  br label %45

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %57 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %56, i32 0, i32 0
  %58 = call i32 @iowrite32be(i32 %55, i32* %57)
  %59 = call i32 (...) @wmb()
  br label %60

60:                                               ; preds = %67, %54
  %61 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %5, align 8
  %62 = getelementptr inbounds %struct.memac_mii_access_mem_map, %struct.memac_mii_access_mem_map* %61, i32 0, i32 0
  %63 = call i32 @ioread32be(i32* %62)
  %64 = load i32, i32* @MDIO_DATA_BSY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @udelay(i32 1)
  br label %60

69:                                               ; preds = %60
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
