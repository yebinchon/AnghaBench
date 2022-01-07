; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_octeon-pci-console.c_octeon_pci_console_host_read_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_octeon-pci-console.c_octeon_pci_console_host_read_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@octeon_pci_console_desc_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ERROR: attempting to read non-existant console: %d\0A\00", align 1
@console_addr_array = common dso_local global i32 0, align 4
@octeon_pci_console_t = common dso_local global i32 0, align 4
@buf_size = common dso_local global i32 0, align 4
@output_base_addr = common dso_local global i32 0, align 4
@output_read_index = common dso_local global i32 0, align 4
@output_write_index = common dso_local global i32 0, align 4
@num_consoles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_pci_console_host_read_avail(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @octeon_pci_console_desc_t, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @offsetof(i32 %17, i32 %18)
  %20 = add nsw i64 %16, %19
  %21 = call i32 @octeon_read_mem32(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %3, align 4
  br label %67

28:                                               ; preds = %15
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @octeon_pci_console_desc_t, align 4
  %31 = load i32, i32* @console_addr_array, align 4
  %32 = call i64 @offsetof(i32 %30, i32 %31)
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 %34, 8
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i64 @octeon_read_mem64(i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @octeon_pci_console_t, align 4
  %41 = load i32, i32* @buf_size, align 4
  %42 = call i64 @offsetof(i32 %40, i32 %41)
  %43 = add nsw i64 %39, %42
  %44 = call i32 @octeon_read_mem32(i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @octeon_pci_console_t, align 4
  %47 = load i32, i32* @output_base_addr, align 4
  %48 = call i64 @offsetof(i32 %46, i32 %47)
  %49 = add nsw i64 %45, %48
  %50 = call i64 @octeon_read_mem64(i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* @octeon_pci_console_t, align 4
  %53 = load i32, i32* @output_read_index, align 4
  %54 = call i64 @offsetof(i32 %52, i32 %53)
  %55 = add nsw i64 %51, %54
  %56 = call i32 @octeon_read_mem32(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* @octeon_pci_console_t, align 4
  %59 = load i32, i32* @output_write_index, align 4
  %60 = call i64 @offsetof(i32 %58, i32 %59)
  %61 = add nsw i64 %57, %60
  %62 = call i32 @octeon_read_mem32(i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @octeon_pci_console_buffer_avail_bytes(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %28, %25, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @octeon_read_mem32(i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @octeon_read_mem64(i64) #1

declare dso_local i32 @octeon_pci_console_buffer_avail_bytes(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
