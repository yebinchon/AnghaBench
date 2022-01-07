; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10dmac_channel = type { i64 }

@CH_NDMA = common dso_local global i64 0, align 8
@AWIN_NDMA_CTL_DMA_LOADING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AWIN_NDMA_SRC_ADDR_REG = common dso_local global i32 0, align 4
@AWIN_NDMA_DEST_ADDR_REG = common dso_local global i32 0, align 4
@AWIN_NDMA_BC_REG = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_DMA_LOADING = common dso_local global i32 0, align 4
@AWIN_DDMA_SRC_START_ADDR_REG = common dso_local global i32 0, align 4
@AWIN_DDMA_DEST_START_ADDR_REG = common dso_local global i32 0, align 4
@AWIN_DDMA_BC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i64, i64)* @a10dmac_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10dmac_transfer(i32 %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.a10dmac_channel*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.a10dmac_channel*
  store %struct.a10dmac_channel* %15, %struct.a10dmac_channel** %12, align 8
  %16 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %17 = call i32 @a10dmac_read_ctl(%struct.a10dmac_channel* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %19 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CH_NDMA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @AWIN_NDMA_CTL_DMA_LOADING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %6, align 4
  br label %76

30:                                               ; preds = %23
  %31 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %32 = load i32, i32* @AWIN_NDMA_SRC_ADDR_REG, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %31, i32 %32, i64 %33)
  %35 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %36 = load i32, i32* @AWIN_NDMA_DEST_ADDR_REG, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %35, i32 %36, i64 %37)
  %39 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %40 = load i32, i32* @AWIN_NDMA_BC_REG, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %39, i32 %40, i64 %41)
  %43 = load i32, i32* @AWIN_NDMA_CTL_DMA_LOADING, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @a10dmac_write_ctl(%struct.a10dmac_channel* %46, i32 %47)
  br label %75

49:                                               ; preds = %5
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @AWIN_DDMA_CTL_DMA_LOADING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  store i32 %55, i32* %6, align 4
  br label %76

56:                                               ; preds = %49
  %57 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %58 = load i32, i32* @AWIN_DDMA_SRC_START_ADDR_REG, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %57, i32 %58, i64 %59)
  %61 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %62 = load i32, i32* @AWIN_DDMA_DEST_START_ADDR_REG, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %61, i32 %62, i64 %63)
  %65 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %66 = load i32, i32* @AWIN_DDMA_BC_REG, align 4
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %65, i32 %66, i64 %67)
  %69 = load i32, i32* @AWIN_DDMA_CTL_DMA_LOADING, align 4
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @a10dmac_write_ctl(%struct.a10dmac_channel* %72, i32 %73)
  br label %75

75:                                               ; preds = %56, %30
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %54, %28
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @a10dmac_read_ctl(%struct.a10dmac_channel*) #1

declare dso_local i32 @DMACH_WRITE(%struct.a10dmac_channel*, i32, i64) #1

declare dso_local i32 @a10dmac_write_ctl(%struct.a10dmac_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
