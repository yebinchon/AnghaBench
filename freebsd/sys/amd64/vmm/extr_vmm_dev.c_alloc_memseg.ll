; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_dev.c_alloc_memseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_dev.c_alloc_memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmmdev_softc = type { i32 }
%struct.vm_memseg = type { i32, i32, i32 }

@M_VMMDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmmdev_softc*, %struct.vm_memseg*)* @alloc_memseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_memseg(%struct.vmmdev_softc* %0, %struct.vm_memseg* %1) #0 {
  %3 = alloca %struct.vmmdev_softc*, align 8
  %4 = alloca %struct.vm_memseg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vmmdev_softc* %0, %struct.vmmdev_softc** %3, align 8
  store %struct.vm_memseg* %1, %struct.vm_memseg** %4, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.vm_memseg*, %struct.vm_memseg** %4, align 8
  %9 = call i64 @VM_MEMSEG_NAME(%struct.vm_memseg* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @M_VMMDEV, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call i8* @malloc(i32 4, i32 %12, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.vm_memseg*, %struct.vm_memseg** %4, align 8
  %16 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @copystr(i32 %17, i8* %18, i32 4, i32* null)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %66

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.vmmdev_softc*, %struct.vmmdev_softc** %3, align 8
  %26 = getelementptr inbounds %struct.vmmdev_softc, %struct.vmmdev_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vm_memseg*, %struct.vm_memseg** %4, align 8
  %29 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vm_memseg*, %struct.vm_memseg** %4, align 8
  %32 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @vm_alloc_memseg(i32 %27, i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %66

39:                                               ; preds = %24
  %40 = load %struct.vm_memseg*, %struct.vm_memseg** %4, align 8
  %41 = call i64 @VM_MEMSEG_NAME(%struct.vm_memseg* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.vmmdev_softc*, %struct.vmmdev_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vmmdev_softc, %struct.vmmdev_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vm_name(i32 %46)
  %48 = load %struct.vm_memseg*, %struct.vm_memseg** %4, align 8
  %49 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @devmem_create_cdev(i32 %47, i32 %50, i8* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.vmmdev_softc*, %struct.vmmdev_softc** %3, align 8
  %57 = getelementptr inbounds %struct.vmmdev_softc, %struct.vmmdev_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vm_memseg*, %struct.vm_memseg** %4, align 8
  %60 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @vm_free_memseg(i32 %58, i32 %61)
  br label %64

63:                                               ; preds = %43
  store i8* null, i8** %5, align 8
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %39
  br label %66

66:                                               ; preds = %65, %38, %22
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @M_VMMDEV, align 4
  %69 = call i32 @free(i8* %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @VM_MEMSEG_NAME(%struct.vm_memseg*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copystr(i32, i8*, i32, i32*) #1

declare dso_local i32 @vm_alloc_memseg(i32, i32, i32, i32) #1

declare dso_local i32 @devmem_create_cdev(i32, i32, i8*) #1

declare dso_local i32 @vm_name(i32) #1

declare dso_local i32 @vm_free_memseg(i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
