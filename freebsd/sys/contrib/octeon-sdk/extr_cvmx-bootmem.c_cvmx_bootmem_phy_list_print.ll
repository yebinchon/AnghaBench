; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_list_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_list_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@head_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"\0A\0A\0APrinting bootmem block list, descriptor: 0x%llx,  head is 0x%llx\0A\00", align 1
@cvmx_bootmem_desc_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Descriptor version: %d.%d\0A\00", align 1
@major_version = common dso_local global i32 0, align 4
@minor_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Warning: Bootmem descriptor version is newer than expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"mem list is empty!\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Block address: 0x%08llx, size: 0x%08llx, next: 0x%08llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_bootmem_phy_list_print() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @head_addr, align 4
  %3 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* @cvmx_bootmem_desc_addr, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i32, i32* %1, align 4
  %7 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  %8 = load i32, i32* @major_version, align 4
  %9 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %8)
  %10 = load i32, i32* @minor_version, align 4
  %11 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %10)
  %12 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %11)
  %13 = load i32, i32* @major_version, align 4
  %14 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %13)
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i64 @cvmx_bootmem_phy_get_size(i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @cvmx_bootmem_phy_get_next(i32 %32)
  %34 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 %31, i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @cvmx_bootmem_phy_get_next(i32 %35)
  store i32 %36, i32* %1, align 4
  br label %24

37:                                               ; preds = %24
  %38 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i64 @cvmx_bootmem_phy_get_size(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_get_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
