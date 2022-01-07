; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospci.c_biospci_enumerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospci.c_biospci_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_class = type { i32, %struct.pci_subclass* }
%struct.pci_subclass = type { i32, %struct.pci_progif* }
%struct.pci_progif = type { i64 }

@pci_classes = common dso_local global %struct.pci_class* null, align 8
@BIOSPCI_32BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @biospci_enumerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @biospci_enumerate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_class*, align 8
  %6 = alloca %struct.pci_subclass*, align 8
  %7 = alloca %struct.pci_progif*, align 8
  %8 = load %struct.pci_class*, %struct.pci_class** @pci_classes, align 8
  store %struct.pci_class* %8, %struct.pci_class** %5, align 8
  br label %9

9:                                                ; preds = %78, %0
  %10 = load %struct.pci_class*, %struct.pci_class** %5, align 8
  %11 = getelementptr inbounds %struct.pci_class, %struct.pci_class* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %9
  %15 = load %struct.pci_class*, %struct.pci_class** %5, align 8
  %16 = getelementptr inbounds %struct.pci_class, %struct.pci_class* %15, i32 0, i32 1
  %17 = load %struct.pci_subclass*, %struct.pci_subclass** %16, align 8
  store %struct.pci_subclass* %17, %struct.pci_subclass** %6, align 8
  br label %18

18:                                               ; preds = %74, %14
  %19 = load %struct.pci_subclass*, %struct.pci_subclass** %6, align 8
  %20 = getelementptr inbounds %struct.pci_subclass, %struct.pci_subclass* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %18
  %24 = load %struct.pci_subclass*, %struct.pci_subclass** %6, align 8
  %25 = getelementptr inbounds %struct.pci_subclass, %struct.pci_subclass* %24, i32 0, i32 1
  %26 = load %struct.pci_progif*, %struct.pci_progif** %25, align 8
  store %struct.pci_progif* %26, %struct.pci_progif** %7, align 8
  br label %27

27:                                               ; preds = %70, %23
  %28 = load %struct.pci_progif*, %struct.pci_progif** %7, align 8
  %29 = getelementptr inbounds %struct.pci_progif, %struct.pci_progif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %66, %32
  %34 = load %struct.pci_class*, %struct.pci_class** %5, align 8
  %35 = getelementptr inbounds %struct.pci_class, %struct.pci_class* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 16
  %38 = load %struct.pci_subclass*, %struct.pci_subclass** %6, align 8
  %39 = getelementptr inbounds %struct.pci_subclass, %struct.pci_subclass* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 8
  %42 = add nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.pci_progif*, %struct.pci_progif** %7, align 8
  %45 = getelementptr inbounds %struct.pci_progif, %struct.pci_progif* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @biospci_find_devclass(i64 %47, i32 %48, i32* %3)
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %69

53:                                               ; preds = %33
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @BIOSPCI_32BITS, align 4
  %56 = call i32 @biospci_read_config(i32 %54, i32 0, i32 %55, i32* %4)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %69

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.pci_class*, %struct.pci_class** %5, align 8
  %63 = load %struct.pci_subclass*, %struct.pci_subclass** %6, align 8
  %64 = load %struct.pci_progif*, %struct.pci_progif** %7, align 8
  %65 = call i32 @biospci_addinfo(i32 %61, %struct.pci_class* %62, %struct.pci_subclass* %63, %struct.pci_progif* %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %33

69:                                               ; preds = %59, %52
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.pci_progif*, %struct.pci_progif** %7, align 8
  %72 = getelementptr inbounds %struct.pci_progif, %struct.pci_progif* %71, i32 1
  store %struct.pci_progif* %72, %struct.pci_progif** %7, align 8
  br label %27

73:                                               ; preds = %27
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.pci_subclass*, %struct.pci_subclass** %6, align 8
  %76 = getelementptr inbounds %struct.pci_subclass, %struct.pci_subclass* %75, i32 1
  store %struct.pci_subclass* %76, %struct.pci_subclass** %6, align 8
  br label %18

77:                                               ; preds = %18
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.pci_class*, %struct.pci_class** %5, align 8
  %80 = getelementptr inbounds %struct.pci_class, %struct.pci_class* %79, i32 1
  store %struct.pci_class* %80, %struct.pci_class** %5, align 8
  br label %9

81:                                               ; preds = %9
  ret void
}

declare dso_local i32 @biospci_find_devclass(i64, i32, i32*) #1

declare dso_local i32 @biospci_read_config(i32, i32, i32, i32*) #1

declare dso_local i32 @biospci_addinfo(i32, %struct.pci_class*, %struct.pci_subclass*, %struct.pci_progif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
