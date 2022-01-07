; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci_ctrl.c_mv_pcib_ctrl_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci_ctrl.c_mv_pcib_ctrl_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.mv_pcib_ctrl_devinfo = type { i32 }
%struct.resource_list_entry = type { i64, i64, i64 }
%struct.mv_pcib_ctrl_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not map resource %#llx-%#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i64, i64, i64, i32)* @mv_pcib_ctrl_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @mv_pcib_ctrl_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mv_pcib_ctrl_devinfo*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  %20 = alloca %struct.mv_pcib_ctrl_softc*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %15, align 8
  %24 = call i64 @RMAN_IS_DEFAULT_RANGE(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.mv_pcib_ctrl_devinfo* @device_get_ivars(i32 %27)
  store %struct.mv_pcib_ctrl_devinfo* %28, %struct.mv_pcib_ctrl_devinfo** %18, align 8
  %29 = icmp eq %struct.mv_pcib_ctrl_devinfo* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %172

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %172

36:                                               ; preds = %31
  %37 = load %struct.mv_pcib_ctrl_devinfo*, %struct.mv_pcib_ctrl_devinfo** %18, align 8
  %38 = getelementptr inbounds %struct.mv_pcib_ctrl_devinfo, %struct.mv_pcib_ctrl_devinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.resource_list_entry* @resource_list_find(i32* %38, i32 %39, i32 %41)
  store %struct.resource_list_entry* %42, %struct.resource_list_entry** %19, align 8
  %43 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %44 = icmp eq %struct.resource_list_entry* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %172

46:                                               ; preds = %36
  %47 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %48 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %14, align 8
  %50 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %51 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %15, align 8
  %53 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %54 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %16, align 8
  br label %56

56:                                               ; preds = %46, %8
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.mv_pcib_ctrl_softc* @device_get_softc(i32 %57)
  store %struct.mv_pcib_ctrl_softc* %58, %struct.mv_pcib_ctrl_softc** %20, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @SYS_RES_MEMORY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %162

62:                                               ; preds = %56
  store i32 0, i32* %21, align 4
  br label %63

63:                                               ; preds = %142, %62
  %64 = load i32, i32* %21, align 4
  %65 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %66 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %145

69:                                               ; preds = %63
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %72 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %70, %78
  br i1 %79, label %80, label %141

80:                                               ; preds = %69
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %83 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %21, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %91 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %89, %97
  %99 = icmp slt i64 %81, %98
  br i1 %99, label %100, label %141

100:                                              ; preds = %80
  %101 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %102 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = sub nsw i64 %109, %108
  store i64 %110, i64* %14, align 8
  %111 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %112 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %21, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %14, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %14, align 8
  %121 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %122 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %15, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %15, align 8
  %131 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %132 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %15, align 8
  br label %145

141:                                              ; preds = %80, %69
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %21, align 4
  br label %63

145:                                              ; preds = %100, %63
  %146 = load i32, i32* %21, align 4
  %147 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %148 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = load %struct.mv_pcib_ctrl_softc*, %struct.mv_pcib_ctrl_softc** %20, align 8
  %153 = getelementptr inbounds %struct.mv_pcib_ctrl_softc, %struct.mv_pcib_ctrl_softc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* %15, align 8
  %160 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %158, i64 %159)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %172

161:                                              ; preds = %151, %145
  br label %162

162:                                              ; preds = %161, %56
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32*, i32** %13, align 8
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call %struct.resource* @bus_generic_alloc_resource(i32 %163, i32 %164, i32 %165, i32* %166, i64 %167, i64 %168, i64 %169, i32 %170)
  store %struct.resource* %171, %struct.resource** %9, align 8
  br label %172

172:                                              ; preds = %162, %156, %45, %35, %30
  %173 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %173
}

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.mv_pcib_ctrl_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local %struct.mv_pcib_ctrl_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
