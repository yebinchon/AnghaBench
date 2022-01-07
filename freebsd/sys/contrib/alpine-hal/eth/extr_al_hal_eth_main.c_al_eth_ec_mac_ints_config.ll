; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ec_mac_ints_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ec_mac_ints_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"eth [%s]: enable ethernet and mac interrupts\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@AL_INT_GROUP_A = common dso_local global i32 0, align 4
@INT_CONTROL_GRP_SET_ON_POSEDGE = common dso_local global i32 0, align 4
@INT_CONTROL_GRP_CLEAR_ON_READ = common dso_local global i32 0, align 4
@AL_INT_GROUP_B = common dso_local global i32 0, align 4
@AL_INT_GROUP_C = common dso_local global i32 0, align 4
@AL_INT_GROUP_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_ec_mac_ints_config(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  %4 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @al_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %97

15:                                               ; preds = %1
  %16 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AL_INT_GROUP_A, align 4
  %20 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %21 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @al_iofic_config(i32 %18, i32 %19, i32 %22)
  %24 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AL_INT_GROUP_B, align 4
  %28 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %29 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @al_iofic_config(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AL_INT_GROUP_C, align 4
  %36 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %37 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @al_iofic_config(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AL_INT_GROUP_D, align 4
  %44 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %45 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @al_iofic_config(i32 %42, i32 %43, i32 %46)
  %48 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AL_INT_GROUP_A, align 4
  %52 = call i32 @al_iofic_unmask(i32 %50, i32 %51, i32 8)
  %53 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AL_INT_GROUP_A, align 4
  %57 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %58 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @al_iofic_config(i32 %55, i32 %56, i32 %59)
  %61 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AL_INT_GROUP_B, align 4
  %65 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %66 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @al_iofic_config(i32 %63, i32 %64, i32 %67)
  %69 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AL_INT_GROUP_C, align 4
  %73 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %74 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @al_iofic_config(i32 %71, i32 %72, i32 %75)
  %77 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AL_INT_GROUP_D, align 4
  %81 = load i32, i32* @INT_CONTROL_GRP_SET_ON_POSEDGE, align 4
  %82 = load i32, i32* @INT_CONTROL_GRP_CLEAR_ON_READ, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @al_iofic_config(i32 %79, i32 %80, i32 %83)
  %85 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AL_INT_GROUP_B, align 4
  %89 = call i32 @AL_BIT(i32 14)
  %90 = call i32 @al_iofic_unmask(i32 %87, i32 %88, i32 %89)
  %91 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AL_INT_GROUP_D, align 4
  %95 = call i32 @AL_BIT(i32 11)
  %96 = call i32 @al_iofic_unmask(i32 %93, i32 %94, i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %15, %12
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_iofic_config(i32, i32, i32) #1

declare dso_local i32 @al_iofic_unmask(i32, i32, i32) #1

declare dso_local i32 @AL_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
