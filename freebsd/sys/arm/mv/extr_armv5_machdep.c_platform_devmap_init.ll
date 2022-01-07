; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_armv5_machdep.c_platform_devmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_armv5_machdep.c_platform_devmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@fdt_devmap = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@fdt_immr_va = common dso_local global i32 0, align 4
@fdt_immr_pa = common dso_local global i32 0, align 4
@fdt_immr_size = common dso_local global i32 0, align 4
@FDT_DEVMAP_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pciep\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MV_PCI_VA_IO_BASE = common dso_local global i32 0, align 4
@MV_PCI_VA_MEM_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mrvl,lbc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"bank-count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_devmap_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdt_devmap, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 0
  %9 = call i32 @devmap_register_table(%struct.TYPE_6__* %8)
  %10 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %2, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %1, align 4
  br label %122

14:                                               ; preds = %0
  %15 = load i32, i32* @fdt_immr_va, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdt_devmap, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @fdt_immr_pa, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdt_devmap, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* @fdt_immr_size, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdt_devmap, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @FDT_DEVMAP_MAX, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %14
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdt_devmap, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = call i64 @platform_sram_devmap(%struct.TYPE_6__* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @OF_child(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %118, %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %121

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @mv_fdt_is_type(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @mv_fdt_is_type(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @FDT_DEVMAP_MAX, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %1, align 4
  br label %122

70:                                               ; preds = %63
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdt_devmap, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = load i32, i32* @MV_PCI_VA_IO_BASE, align 4
  %77 = load i32, i32* @MV_PCI_VA_MEM_BASE, align 4
  %78 = call i64 @mv_pci_devmap(i32 %71, %struct.TYPE_6__* %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %1, align 4
  br label %122

82:                                               ; preds = %70
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %59
  %86 = load i32, i32* %3, align 4
  %87 = call i64 @ofw_bus_node_is_compatible(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = call i64 @OF_getencprop(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %4, i32 4)
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @FDT_DEVMAP_MAX, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @ENOMEM, align 4
  store i32 %101, i32* %1, align 4
  br label %122

102:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdt_devmap, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @fdt_localbus_devmap(i32 %103, %struct.TYPE_6__* %107, i32 %108, i32* %6)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %1, align 4
  br label %122

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %85
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @OF_peer(i32 %119)
  store i32 %120, i32* %3, align 4
  br label %52

121:                                              ; preds = %52
  store i32 0, i32* %1, align 4
  br label %122

122:                                              ; preds = %121, %111, %100, %80, %68, %12
  %123 = load i32, i32* %1, align 4
  ret i32 %123
}

declare dso_local i32 @devmap_register_table(%struct.TYPE_6__*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @platform_sram_devmap(%struct.TYPE_6__*) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i64 @mv_fdt_is_type(i32, i8*) #1

declare dso_local i64 @mv_pci_devmap(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @fdt_localbus_devmap(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @OF_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
