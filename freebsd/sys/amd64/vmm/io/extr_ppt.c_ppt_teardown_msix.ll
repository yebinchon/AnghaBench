; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_teardown_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_teardown_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptdev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32*, i64, i32*, i32, i32, i32 }

@M_PPTMSIX = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pptdev*)* @ppt_teardown_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppt_teardown_msix(%struct.pptdev* %0) #0 {
  %2 = alloca %struct.pptdev*, align 8
  %3 = alloca i32, align 4
  store %struct.pptdev* %0, %struct.pptdev** %2, align 8
  %4 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %5 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %103

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %14 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ppt_teardown_msix_intr(%struct.pptdev* %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %27 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @M_PPTMSIX, align 4
  %31 = call i32 @free(i32 %29, i32 %30)
  %32 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %33 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @M_PPTMSIX, align 4
  %37 = call i32 @free(i32 %35, i32 %36)
  %38 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %39 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @M_PPTMSIX, align 4
  %43 = call i32 @free(i32 %41, i32 %42)
  %44 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %45 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pci_release_msi(i32 %46)
  %48 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %49 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %25
  %54 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %55 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SYS_RES_MEMORY, align 4
  %58 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %59 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %63 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i32 %56, i32 %57, i64 %61, i32* %65)
  %67 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %68 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i32* null, i32** %69, align 8
  %70 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %71 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %53, %25
  %74 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %75 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %81 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SYS_RES_MEMORY, align 4
  %84 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %85 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %89 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_release_resource(i32 %82, i32 %83, i64 %87, i32* %91)
  %93 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %94 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32* null, i32** %95, align 8
  %96 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %97 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %79, %73
  %100 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %101 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %9
  ret void
}

declare dso_local i32 @ppt_teardown_msix_intr(%struct.pptdev*, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
