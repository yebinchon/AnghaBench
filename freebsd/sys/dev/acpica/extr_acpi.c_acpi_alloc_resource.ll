; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.acpi_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @acpi_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @acpi_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.acpi_device*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  %20 = alloca %struct.resource_list*, align 8
  %21 = alloca %struct.resource*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @RMAN_IS_DEFAULT_RANGE(i32 %23, i32 %24)
  store i32 %25, i32* %22, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %108

30:                                               ; preds = %8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.acpi_device* @device_get_ivars(i32 %31)
  store %struct.acpi_device* %32, %struct.acpi_device** %18, align 8
  %33 = load %struct.acpi_device*, %struct.acpi_device** %18, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 0
  store %struct.resource_list* %34, %struct.resource_list** %20, align 8
  %35 = load i32, i32* %22, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %30
  %38 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %38, i32 %39, i32 %41)
  %43 = icmp eq %struct.resource_list_entry* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @resource_list_add(%struct.resource_list* %45, i32 %46, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %37, %30
  %54 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call %struct.resource* @resource_list_alloc(%struct.resource_list* %54, i32 %55, i32 %56, i32 %57, i32* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store %struct.resource* %63, %struct.resource** %21, align 8
  %64 = load %struct.resource*, %struct.resource** %21, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %53
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @SYS_RES_IRQ, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.resource*, %struct.resource** %21, align 8
  %75 = call i32 @acpi_lookup_irq_resource(i32 %71, i32 %73, %struct.resource* %74, i32* %17)
  %76 = call i64 @ACPI_SUCCESS(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @acpi_config_intr(i32 %79, i32* %17)
  br label %81

81:                                               ; preds = %78, %70
  br label %82

82:                                               ; preds = %81, %66, %53
  %83 = load %struct.resource*, %struct.resource** %21, align 8
  %84 = icmp eq %struct.resource* %83, null
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %89, i32 %90, i32 %92)
  store %struct.resource_list_entry* %93, %struct.resource_list_entry** %19, align 8
  %94 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %95 = icmp ne %struct.resource_list_entry* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %88
  %97 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %98 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %13, align 4
  %100 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %101 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  %103 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %104 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %96, %88
  br label %107

107:                                              ; preds = %106, %85, %82
  br label %119

108:                                              ; preds = %8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @device_get_parent(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %110, i32 %111, i32 %112, i32* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store %struct.resource* %118, %struct.resource** %21, align 8
  br label %119

119:                                              ; preds = %108, %107
  %120 = load %struct.resource*, %struct.resource** %21, align 8
  %121 = icmp eq %struct.resource* %120, null
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %123, %124
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %14, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call %struct.resource* @acpi_alloc_sysres(i32 %130, i32 %131, i32* %132, i32 %133, i32 %134, i32 %135, i32 %136)
  store %struct.resource* %137, %struct.resource** %21, align 8
  br label %138

138:                                              ; preds = %129, %122, %119
  %139 = load %struct.resource*, %struct.resource** %21, align 8
  ret %struct.resource* %139
}

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.acpi_device* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @resource_list_alloc(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_lookup_irq_resource(i32, i32, %struct.resource*, i32*) #1

declare dso_local i32 @acpi_config_intr(i32, i32*) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @acpi_alloc_sysres(i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
