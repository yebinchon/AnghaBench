; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_set_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_set_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_softc = type { i32 }
%struct.acpi_device = type { i32, %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@pcilink_ids = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ACPI_PCI_ROOT_BRIDGE = common dso_local global i32 0, align 4
@CONF1_ADDR_PORT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@sysres_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i64, i64)* @acpi_set_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_set_resource(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.acpi_softc*, align 8
  %15 = alloca %struct.acpi_device*, align 8
  %16 = alloca %struct.resource_list*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.acpi_softc* @device_get_softc(i32 %20)
  store %struct.acpi_softc* %21, %struct.acpi_softc** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.acpi_device* @device_get_ivars(i32 %22)
  store %struct.acpi_device* %23, %struct.acpi_device** %15, align 8
  %24 = load %struct.acpi_device*, %struct.acpi_device** %15, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 1
  store %struct.resource_list* %25, %struct.resource_list** %16, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @pcilink_ids, align 4
  %33 = call i64 @ACPI_ID_PROBE(i32 %30, i32 %31, i32 %32, i32* null)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %144

36:                                               ; preds = %29, %6
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SYS_RES_IOPORT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %40, %36
  %45 = load %struct.acpi_device*, %struct.acpi_device** %15, align 8
  %46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @AcpiGetObjectInfo(i32 %47, %struct.TYPE_4__** %17)
  %49 = call i64 @ACPI_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %44
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ACPI_PCI_ROOT_BRIDGE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @SYS_RES_IOPORT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @CONF1_ADDR_PORT, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %73 = call i32 @AcpiOsFree(%struct.TYPE_4__* %72)
  store i32 0, i32* %7, align 4
  br label %144

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %77 = call i32 @AcpiOsFree(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %75, %44
  br label %79

79:                                               ; preds = %78, %40
  %80 = load %struct.resource_list*, %struct.resource_list** %16, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @resource_list_busy(%struct.resource_list* %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @EBUSY, align 4
  store i32 %86, i32* %7, align 4
  br label %144

87:                                               ; preds = %79
  %88 = load %struct.resource_list*, %struct.resource_list** %16, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @resource_list_reserved(%struct.resource_list* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.resource_list*, %struct.resource_list** %16, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @resource_list_unreserve(%struct.resource_list* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %13, align 8
  %103 = add nsw i64 %101, %102
  %104 = sub nsw i64 %103, 1
  store i64 %104, i64* %18, align 8
  %105 = load %struct.resource_list*, %struct.resource_list** %16, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @resource_list_add(%struct.resource_list* %105, i32 %106, i32 %107, i64 %108, i64 %109, i64 %110)
  %112 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %113 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %144

117:                                              ; preds = %100
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @sysres_ids, align 4
  %121 = call i64 @ACPI_ID_PROBE(i32 %118, i32 %119, i32 %120, i32* null)
  %122 = icmp sle i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %144

124:                                              ; preds = %117
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @SYS_RES_IRQ, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %144

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @device_get_devclass(i32 %130)
  %132 = call i64 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %144

135:                                              ; preds = %129
  %136 = load %struct.resource_list*, %struct.resource_list** %16, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @resource_list_reserve(%struct.resource_list* %136, i32 %137, i32 %138, i32 %139, i32* %11, i64 %140, i64 %141, i64 %142, i32 0)
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %135, %134, %128, %123, %116, %85, %71, %35
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local %struct.acpi_softc* @device_get_softc(i32) #1

declare dso_local %struct.acpi_device* @device_get_ivars(i32) #1

declare dso_local i64 @ACPI_ID_PROBE(i32, i32, i32, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiGetObjectInfo(i32, %struct.TYPE_4__**) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_4__*) #1

declare dso_local i64 @resource_list_busy(%struct.resource_list*, i32, i32) #1

declare dso_local i64 @resource_list_reserved(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @resource_list_unreserve(%struct.resource_list*, i32, i32, i32, i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i64, i64, i64) #1

declare dso_local i64 @device_get_devclass(i32) #1

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local i32 @resource_list_reserve(%struct.resource_list*, i32, i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
