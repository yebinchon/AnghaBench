; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_teardown_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_teardown_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptdev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32**, %struct.resource** }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pptdev*)* @ppt_teardown_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppt_teardown_msi(%struct.pptdev* %0) #0 {
  %2 = alloca %struct.pptdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.pptdev* %0, %struct.pptdev** %2, align 8
  %7 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %8 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %98

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %80, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %17 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %14
  %22 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %23 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %29 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load %struct.resource**, %struct.resource*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.resource*, %struct.resource** %31, i64 %33
  %35 = load %struct.resource*, %struct.resource** %34, align 8
  store %struct.resource* %35, %struct.resource** %6, align 8
  %36 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %37 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %21
  %48 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %49 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @bus_teardown_intr(i32 %50, %struct.resource* %51, i8* %52)
  br label %54

54:                                               ; preds = %47, %21
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = icmp ne %struct.resource* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %59 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SYS_RES_IRQ, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = call i32 @bus_release_resource(i32 %60, i32 %61, i32 %62, %struct.resource* %63)
  br label %65

65:                                               ; preds = %57, %54
  %66 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %67 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load %struct.resource**, %struct.resource*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.resource*, %struct.resource** %69, i64 %71
  store %struct.resource* null, %struct.resource** %72, align 8
  %73 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %74 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %14

83:                                               ; preds = %14
  %84 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %85 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %91 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pci_release_msi(i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  %95 = load %struct.pptdev*, %struct.pptdev** %2, align 8
  %96 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %12
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
