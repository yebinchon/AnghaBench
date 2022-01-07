; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_ale_update_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_ale_update_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpswp_softc = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.sockaddr_dl = type { i32 }

@ALE_TYPE_VLAN_ADDR = common dso_local global i32 0, align 4
@ALE_TYPE_ADDR = common dso_local global i32 0, align 4
@ALE_MCAST_FWD = common dso_local global i32 0, align 4
@cpswp_set_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpswp_softc*, i32)* @cpswp_ale_update_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpswp_ale_update_addresses(%struct.cpswp_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.cpswp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpswp_softc* %0, %struct.cpswp_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i32, i32* @ALE_TYPE_VLAN_ADDR, align 4
  %17 = shl i32 %16, 28
  %18 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %19 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 16
  %22 = or i32 %17, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = shl i32 1, %26
  %28 = or i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ALE_TYPE_ADDR, align 4
  %31 = shl i32 %30, 28
  store i32 %31, i32* %7, align 4
  store i32 7, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %15
  %33 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %34 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.sockaddr_dl*
  %41 = call i32* @LLADDR(%struct.sockaddr_dl* %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 24
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %50, %54
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %61, %65
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %66, %69
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %72, align 4
  %73 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %74 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %77 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 2, %78
  %80 = add nsw i32 0, %79
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %82 = call i32 @cpsw_ale_write_entry(%struct.TYPE_8__* %75, i32 %80, i32* %81)
  %83 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %84 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %87 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @CPSW_PORT_P_SA_HI(i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 24
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = or i32 %94, %98
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  %104 = or i32 %99, %103
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %104, %107
  %109 = call i32 @cpsw_write_4(%struct.TYPE_8__* %85, i32 %90, i32 %108)
  %110 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %111 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %110, i32 0, i32 3
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %114 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 @CPSW_PORT_P_SA_LO(i32 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  %126 = call i32 @cpsw_write_4(%struct.TYPE_8__* %112, i32 %117, i32 %125)
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 -1, i32* %127, align 4
  %128 = load i32, i32* @ALE_MCAST_FWD, align 4
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %128, %129
  %131 = or i32 %130, 65535
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = shl i32 %133, 2
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %134, i32* %135, align 4
  %136 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %137 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %140 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 2, %141
  %143 = add nsw i32 1, %142
  %144 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %145 = call i32 @cpsw_ale_write_entry(%struct.TYPE_8__* %138, i32 %143, i32* %144)
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %32
  %149 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %150 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %149, i32 0, i32 3
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = call i32 @cpsw_ale_remove_all_mc_entries(%struct.TYPE_8__* %151)
  br label %153

153:                                              ; preds = %148, %32
  %154 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %155 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %154, i32 0, i32 2
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load i32, i32* @cpswp_set_maddr, align 4
  %158 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %159 = call i32 @if_foreach_llmaddr(%struct.TYPE_7__* %156, i32 %157, %struct.cpswp_softc* %158)
  ret i32 0
}

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @cpsw_ale_write_entry(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @cpsw_write_4(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CPSW_PORT_P_SA_HI(i32) #1

declare dso_local i32 @CPSW_PORT_P_SA_LO(i32) #1

declare dso_local i32 @cpsw_ale_remove_all_mc_entries(%struct.TYPE_8__*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.TYPE_7__*, i32, %struct.cpswp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
