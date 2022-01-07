; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_pci.c_aac_find_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_pci.c_aac_find_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_ident = type { i64, i64 }

@aacraid_family_identifiers = common dso_local global %struct.aac_ident* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aac_ident* (i32)* @aac_find_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aac_ident* @aac_find_ident(i32 %0) #0 {
  %2 = alloca %struct.aac_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_ident*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_vendor(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.aac_ident*, %struct.aac_ident** @aacraid_family_identifiers, align 8
  store %struct.aac_ident* %11, %struct.aac_ident** %4, align 8
  br label %12

12:                                               ; preds = %32, %1
  %13 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %14 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %19 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %25 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  store %struct.aac_ident* %30, %struct.aac_ident** %2, align 8
  br label %36

31:                                               ; preds = %23, %17
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %34 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %33, i32 1
  store %struct.aac_ident* %34, %struct.aac_ident** %4, align 8
  br label %12

35:                                               ; preds = %12
  store %struct.aac_ident* null, %struct.aac_ident** %2, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.aac_ident*, %struct.aac_ident** %2, align 8
  ret %struct.aac_ident* %37
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
