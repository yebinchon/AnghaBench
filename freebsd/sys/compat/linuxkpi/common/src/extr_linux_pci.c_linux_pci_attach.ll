; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.resource_list_entry = type { i32 }
%struct.pci_bus = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_5__, i32, %struct.pci_bus*, i32, %struct.pci_driver*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.pci_driver = type { i32 (%struct.pci_dev.0*, %struct.pci_device_id*)*, i64 }
%struct.pci_dev.0 = type opaque
%struct.pci_device_id = type opaque
%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.pci_device_id.1 = type { i32 }

@curthread = common dso_local global i32 0, align 4
@linux_root_device = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@linux_dev_ktype = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@LINUX_IRQ_INVALID = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pci_lock = common dso_local global i32 0, align 4
@pci_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @linux_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource_list_entry*, align 8
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_devinfo*, align 8
  %8 = alloca %struct.pci_driver*, align 8
  %9 = alloca %struct.pci_device_id.1*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @curthread, align 4
  %13 = call i32 @linux_set_current(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.pci_driver* @linux_pci_find(i32 %14, %struct.pci_device_id.1** %9)
  store %struct.pci_driver* %15, %struct.pci_driver** %8, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.pci_dev* @device_get_softc(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %21 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.pci_devinfo* @device_get_ivars(i32 %25)
  store %struct.pci_devinfo* %26, %struct.pci_devinfo** %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %29 = call i32 @device_set_ivars(i32 %27, %struct.pci_devinfo* %28)
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.pci_devinfo* @device_get_ivars(i32 %31)
  store %struct.pci_devinfo* %32, %struct.pci_devinfo** %7, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store %struct.TYPE_6__* @linux_root_device, %struct.TYPE_6__** %36, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @pci_get_slot(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @pci_get_function(i32 %47)
  %49 = call i32 @PCI_DEVFN(i32 %46, i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %53 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 4
  %58 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %59 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %65 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %71 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @pci_get_class(i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @pci_get_revid(i32 %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 4
  store %struct.pci_driver* %84, %struct.pci_driver** %86, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = call i32 @kobject_init(i32* %89, i32* @linux_dev_ktype)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_get_nameunit(i32 %94)
  %96 = call i32 @kobject_set_name(i32* %93, i32 %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = call i32 @kobject_name(i32* %102)
  %104 = call i32 @kobject_add(i32* %99, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @linux_root_device, i32 0, i32 0), i32 %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %106 = load i32, i32* @SYS_RES_IRQ, align 4
  %107 = call %struct.resource_list_entry* @linux_pci_get_rle(%struct.pci_dev* %105, i32 %106, i32 0)
  store %struct.resource_list_entry* %107, %struct.resource_list_entry** %4, align 8
  %108 = load %struct.resource_list_entry*, %struct.resource_list_entry** %4, align 8
  %109 = icmp ne %struct.resource_list_entry* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %33
  %111 = load %struct.resource_list_entry*, %struct.resource_list_entry** %4, align 8
  %112 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %122

117:                                              ; preds = %33
  %118 = load i32, i32* @LINUX_IRQ_INVALID, align 4
  %119 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %110
  %123 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %130 = call i32 @linux_pdev_dma_init(%struct.pci_dev* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %179

134:                                              ; preds = %122
  %135 = load i32, i32* @M_DEVBUF, align 4
  %136 = load i32, i32* @M_WAITOK, align 4
  %137 = load i32, i32* @M_ZERO, align 4
  %138 = or i32 %136, %137
  %139 = call %struct.pci_bus* @malloc(i32 16, i32 %135, i32 %138)
  store %struct.pci_bus* %139, %struct.pci_bus** %5, align 8
  %140 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %141 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %142 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %141, i32 0, i32 2
  store %struct.pci_dev* %140, %struct.pci_dev** %142, align 8
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @pci_get_bus(i32 %143)
  %145 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %146 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @pci_get_domain(i32 %147)
  %149 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %150 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %152 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %152, i32 0, i32 2
  store %struct.pci_bus* %151, %struct.pci_bus** %153, align 8
  %154 = call i32 @spin_lock(i32* @pci_lock)
  %155 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 1
  %157 = call i32 @list_add(i32* %156, i32* @pci_devices)
  %158 = call i32 @spin_unlock(i32* @pci_lock)
  %159 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %160 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %159, i32 0, i32 0
  %161 = load i32 (%struct.pci_dev.0*, %struct.pci_device_id*)*, i32 (%struct.pci_dev.0*, %struct.pci_device_id*)** %160, align 8
  %162 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %163 = bitcast %struct.pci_dev* %162 to %struct.pci_dev.0*
  %164 = load %struct.pci_device_id.1*, %struct.pci_device_id.1** %9, align 8
  %165 = bitcast %struct.pci_device_id.1* %164 to %struct.pci_device_id*
  %166 = call i32 %161(%struct.pci_dev.0* %163, %struct.pci_device_id* %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %134
  br label %171

170:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %190

171:                                              ; preds = %169
  %172 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 2
  %174 = load %struct.pci_bus*, %struct.pci_bus** %173, align 8
  %175 = load i32, i32* @M_DEVBUF, align 4
  %176 = call i32 @free(%struct.pci_bus* %174, i32 %175)
  %177 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %178 = call i32 @linux_pdev_dma_uninit(%struct.pci_dev* %177)
  br label %179

179:                                              ; preds = %171, %133
  %180 = call i32 @spin_lock(i32* @pci_lock)
  %181 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 1
  %183 = call i32 @list_del(i32* %182)
  %184 = call i32 @spin_unlock(i32* @pci_lock)
  %185 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 0
  %187 = call i32 @put_device(%struct.TYPE_5__* %186)
  %188 = load i32, i32* %11, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %179, %170
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @linux_set_current(i32) #1

declare dso_local %struct.pci_driver* @linux_pci_find(i32, %struct.pci_device_id.1**) #1

declare dso_local %struct.pci_dev* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_get_class(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @kobject_set_name(i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @kobject_add(i32*, i32*, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local %struct.resource_list_entry* @linux_pci_get_rle(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @linux_pdev_dma_init(%struct.pci_dev*) #1

declare dso_local %struct.pci_bus* @malloc(i32, i32, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free(%struct.pci_bus*, i32) #1

declare dso_local i32 @linux_pdev_dma_uninit(%struct.pci_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
