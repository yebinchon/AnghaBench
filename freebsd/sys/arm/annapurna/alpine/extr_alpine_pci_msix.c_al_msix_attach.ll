; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_msix_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_msix_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_msix_softc = type { i32, i32, i64, i32, i32, i32*, i32*, i64 }

@INTR_RANGE_COUNT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not register MSI-X controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"MSI-X controller registered\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"No interrupt-parrent found. Error in DTB\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"DTB: Missing #interrupt-cells property in GIC node\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Cannot find GIC device\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Cannot read interrupts prop from DTB\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Unexpected count of interrupts in DTB node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_OFFSET = common dso_local global i32 0, align 4
@MAX_MSIX_COUNT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [58 x i8] c"Available MSI-X count exceeds buffer size. Capping to %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"msi_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"Alpine MSI-X IRQs\00", align 1
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"MSI-X SPI IRQ %d-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @al_msix_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_msix_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.al_msix_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %17 = load i32, i32* @INTR_RANGE_COUNT, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.al_msix_softc* @device_get_softc(i32* %21)
  store %struct.al_msix_softc* %22, %struct.al_msix_softc** %4, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @ofw_bus_get_node(i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @OF_xref_from_node(i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @OF_device_register_xref(i64 %27, i32* %28)
  store i32 0, i32* %13, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i32* @bus_alloc_resource_any(i32* %30, i32 %31, i32* %13, i32 %32)
  %34 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %35 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %34, i32 0, i32 6
  store i32* %33, i32** %35, align 8
  %36 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %37 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 (i32*, i8*, ...) @device_printf(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

44:                                               ; preds = %1
  %45 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %46 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @rman_get_start(i32* %47)
  %49 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %50 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %49, i32 0, i32 7
  store i64 %48, i64* %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @intr_msi_register(i32* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 (i32*, i8*, ...) @device_printf(i32* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

59:                                               ; preds = %44
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 (i32*, i8*, ...) @device_printf(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @ofw_bus_find_iparent(i64 %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @device_printf(i32* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

71:                                               ; preds = %62
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @OF_node_from_xref(i64 %72)
  %74 = call i32 @OF_searchencprop(i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %14, i32 4)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 (i32*, i8*, ...) @device_printf(i32* %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %6, align 8
  %83 = call i32* @OF_device_from_xref(i64 %82)
  store i32* %83, i32** %5, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @device_printf(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

90:                                               ; preds = %81
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %93 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %92, i32 0, i32 5
  store i32* %91, i32** %93, align 8
  %94 = load i64, i64* %7, align 8
  %95 = bitcast i32** %15 to i8**
  %96 = call i32 @OF_getencprop_alloc_multi(i64 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 4, i8** %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 (i32*, i8*, ...) @device_printf(i32* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

103:                                              ; preds = %90
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sdiv i32 %104, %105
  %107 = load i32, i32* @INTR_RANGE_COUNT, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 (i32*, i8*, ...) @device_printf(i32* %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %132, %114
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @INTR_RANGE_COUNT, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %14, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* @IRQ_OFFSET, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %20, i64 %130
  store i32 %128, i32* %131, align 4
  br label %132

132:                                              ; preds = %119
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %115

135:                                              ; preds = %115
  %136 = getelementptr inbounds i32, i32* %20, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %139 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = getelementptr inbounds i32, i32* %20, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %143 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %145 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %148 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %146, %149
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %154 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %156 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MAX_MSIX_COUNT, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %135
  %161 = load i32*, i32** %3, align 8
  %162 = load i64, i64* @MAX_MSIX_COUNT, align 8
  %163 = call i32 (i32*, i8*, ...) @device_printf(i32* %161, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i64 %162)
  %164 = load i64, i64* @MAX_MSIX_COUNT, align 8
  %165 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %166 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %160, %135
  %168 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %169 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %168, i32 0, i32 4
  %170 = load i32, i32* @MTX_DEF, align 4
  %171 = call i32 @mtx_init(i32* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 %170)
  %172 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %173 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @M_FIRSTFIT, align 4
  %176 = load i32, i32* @M_WAITOK, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @vmem_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 0, i64 %174, i32 1, i32 0, i32 %177)
  %179 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %180 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load i32*, i32** %3, align 8
  %182 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %183 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.al_msix_softc*, %struct.al_msix_softc** %4, align 8
  %186 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32*, i8*, ...) @device_printf(i32* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %184, i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @bus_generic_attach(i32* %189)
  store i32 %190, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %191

191:                                              ; preds = %167, %109, %99, %86, %76, %67, %55, %40
  %192 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.al_msix_softc* @device_get_softc(i32*) #2

declare dso_local i64 @ofw_bus_get_node(i32*) #2

declare dso_local i64 @OF_xref_from_node(i64) #2

declare dso_local i32 @OF_device_register_xref(i64, i32*) #2

declare dso_local i32* @bus_alloc_resource_any(i32*, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32*, i8*, ...) #2

declare dso_local i64 @rman_get_start(i32*) #2

declare dso_local i64 @intr_msi_register(i32*, i64) #2

declare dso_local i64 @ofw_bus_find_iparent(i64) #2

declare dso_local i32 @OF_searchencprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @OF_node_from_xref(i64) #2

declare dso_local i32* @OF_device_from_xref(i64) #2

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i32 @vmem_create(i8*, i32, i64, i32, i32, i32) #2

declare dso_local i32 @bus_generic_attach(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
