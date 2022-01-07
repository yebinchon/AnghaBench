; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_q_set_pointers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_q_set_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { i32, i32, %struct.TYPE_4__*, i32, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@UDMA_M2S_Q_TDRBP_LOW_ADDR_MASK = common dso_local global i32 0, align 4
@AL_UDMA_Q_FLAGS_NO_COMP_UPDATE = common dso_local global i32 0, align 4
@UDMA_M2S_Q_TCRBP_LOW_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_udma_q*)* @al_udma_q_set_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_udma_q_set_pointers(%struct.al_udma_q* %0) #0 {
  %2 = alloca %struct.al_udma_q*, align 8
  store %struct.al_udma_q* %0, %struct.al_udma_q** %2, align 8
  %3 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %4 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @AL_ADDR_LOW(i32 %5)
  %7 = load i32, i32* @UDMA_M2S_Q_TDRBP_LOW_ADDR_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @al_assert(i32 %11)
  %13 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %14 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %19 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @AL_ADDR_LOW(i32 %20)
  %22 = call i32 @al_reg_write32(i32* %17, i32 %21)
  %23 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %24 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %29 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @AL_ADDR_HIGH(i32 %30)
  %32 = call i32 @al_reg_write32(i32* %27, i32 %31)
  %33 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %34 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %39 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @al_reg_write32(i32* %37, i32 %40)
  %42 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %43 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load i32, i32* @AL_UDMA_Q_FLAGS_NO_COMP_UPDATE, align 4
  %48 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %49 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %83

52:                                               ; preds = %1
  %53 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %54 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @AL_ADDR_LOW(i32 %55)
  %57 = load i32, i32* @UDMA_M2S_Q_TCRBP_LOW_ADDR_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @al_assert(i32 %61)
  %63 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %64 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %69 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @AL_ADDR_LOW(i32 %70)
  %72 = call i32 @al_reg_write32(i32* %67, i32 %71)
  %73 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %74 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %79 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @AL_ADDR_HIGH(i32 %80)
  %82 = call i32 @al_reg_write32(i32* %77, i32 %81)
  br label %83

83:                                               ; preds = %52, %46
  %84 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %85 = call i32 @al_udma_q_config_compl(%struct.al_udma_q* %84)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @AL_ADDR_LOW(i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @AL_ADDR_HIGH(i32) #1

declare dso_local i32 @al_udma_q_config_compl(%struct.al_udma_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
