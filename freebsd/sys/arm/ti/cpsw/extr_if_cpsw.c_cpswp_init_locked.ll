; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.cpswp_softc = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.ifnet* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@CPSW_SL_MACTL_GMII_ENABLE = common dso_local global i32 0, align 4
@ALE_PORTCTL_INGRESS = common dso_local global i32 0, align 4
@ALE_PORTCTL_FORWARD = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@cpswp_tick = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@CPSW_VLANS = common dso_local global i32 0, align 4
@cpsw_vgroups = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpswp_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpswp_init_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpswp_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.cpswp_softc*
  store %struct.cpswp_softc* %7, %struct.cpswp_softc** %3, align 8
  %8 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %8, i32 0, i32 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = call i32 @CPSW_DEBUGF(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %13 = call i32 @CPSW_PORT_LOCK_ASSERT(%struct.cpswp_softc* %12)
  %14 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %14, i32 0, i32 6
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %4, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %179

24:                                               ; preds = %1
  %25 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %25, i32 0, i32 5
  %27 = call i32 @getbinuptime(i32* %26)
  %28 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %29 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %28, i32 0, i32 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %24
  %36 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %37 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %36, i32 0, i32 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %45 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %44, i32 0, i32 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = call i32 @cpsw_reset(%struct.TYPE_12__* %46)
  %48 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %49 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %48, i32 0, i32 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = call i32 @cpsw_init(%struct.TYPE_12__* %50)
  br label %52

52:                                               ; preds = %43, %35, %24
  %53 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %54 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %53, i32 0, i32 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %57 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @CPSW_SL_RX_PRI_MAP(i32 %58)
  %60 = call i32 @cpsw_write_4(%struct.TYPE_12__* %55, i32 %59, i32 1985229328)
  %61 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %62 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %61, i32 0, i32 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %65 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  %68 = call i32 @CPSW_PORT_P_TX_PRI_MAP(i32 %67)
  %69 = call i32 @cpsw_write_4(%struct.TYPE_12__* %63, i32 %68, i32 857870592)
  %70 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %71 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %74 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @CPSW_SL_RX_MAXLEN(i32 %75)
  %77 = call i32 @cpsw_write_4(%struct.TYPE_12__* %72, i32 %76, i32 1522)
  %78 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %79 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %78, i32 0, i32 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %82 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @CPSW_SL_MACCONTROL(i32 %83)
  %85 = call i32 @cpsw_read_4(%struct.TYPE_12__* %80, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @CPSW_SL_MACTL_GMII_ENABLE, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %90 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %89, i32 0, i32 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %93 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @CPSW_SL_MACCONTROL(i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @cpsw_write_4(%struct.TYPE_12__* %91, i32 %95, i32 %96)
  %98 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %99 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %98, i32 0, i32 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %102 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  %105 = call i32 @CPSW_ALE_PORTCTL(i32 %104)
  %106 = load i32, i32* @ALE_PORTCTL_INGRESS, align 4
  %107 = load i32, i32* @ALE_PORTCTL_FORWARD, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @cpsw_write_4(%struct.TYPE_12__* %100, i32 %105, i32 %108)
  %110 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %111 = call i32 @cpswp_ale_update_addresses(%struct.cpswp_softc* %110, i32 1)
  %112 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %113 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %112, i32 0, i32 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %52
  %119 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %120 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %119, i32 0, i32 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %123 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = call i32 @CPSW_PORT_P_VLAN(i32 %125)
  %127 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %128 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 4095
  %131 = call i32 @cpsw_write_4(%struct.TYPE_12__* %121, i32 %126, i32 %130)
  %132 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %133 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %132, i32 0, i32 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %136 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %139 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  %142 = shl i32 1, %141
  %143 = or i32 %142, 1
  %144 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %145 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  %148 = shl i32 1, %147
  %149 = or i32 %148, 1
  %150 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %151 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  %154 = shl i32 1, %153
  %155 = or i32 %154, 1
  %156 = call i32 @cpsw_ale_update_vlan_table(%struct.TYPE_12__* %134, i32 %137, i32 %143, i32 %149, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %118, %52
  %158 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %159 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @mii_mediachg(i32 %160)
  %162 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %163 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %162, i32 0, i32 2
  %164 = load i32, i32* @hz, align 4
  %165 = load i32, i32* @cpswp_tick, align 4
  %166 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %167 = call i32 @callout_reset(i32* %163, i32 %164, i32 %165, %struct.cpswp_softc* %166)
  %168 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %169 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %176 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %157, %23
  ret void
}

declare dso_local i32 @CPSW_DEBUGF(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @CPSW_PORT_LOCK_ASSERT(%struct.cpswp_softc*) #1

declare dso_local i32 @getbinuptime(i32*) #1

declare dso_local i32 @cpsw_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @cpsw_init(%struct.TYPE_12__*) #1

declare dso_local i32 @cpsw_write_4(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @CPSW_SL_RX_PRI_MAP(i32) #1

declare dso_local i32 @CPSW_PORT_P_TX_PRI_MAP(i32) #1

declare dso_local i32 @CPSW_SL_RX_MAXLEN(i32) #1

declare dso_local i32 @cpsw_read_4(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @CPSW_SL_MACCONTROL(i32) #1

declare dso_local i32 @CPSW_ALE_PORTCTL(i32) #1

declare dso_local i32 @cpswp_ale_update_addresses(%struct.cpswp_softc*, i32) #1

declare dso_local i32 @CPSW_PORT_P_VLAN(i32) #1

declare dso_local i32 @cpsw_ale_update_vlan_table(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mii_mediachg(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.cpswp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
