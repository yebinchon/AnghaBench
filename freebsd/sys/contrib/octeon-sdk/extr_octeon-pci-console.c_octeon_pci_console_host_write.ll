; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_octeon-pci-console.c_octeon_pci_console_host_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_octeon-pci-console.c_octeon_pci_console_host_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@octeon_pci_console_desc_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ERROR: attempting to read non-existant console: %d\0A\00", align 1
@console_addr_array = common dso_local global i32 0, align 4
@octeon_pci_console_t = common dso_local global i32 0, align 4
@buf_size = common dso_local global i32 0, align 4
@input_base_addr = common dso_local global i32 0, align 4
@input_read_index = common dso_local global i32 0, align 4
@input_write_index = common dso_local global i32 0, align 4
@OCTEON_PCI_ENDIAN_64BIT_SWAP = common dso_local global i32 0, align 4
@num_consoles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_pci_console_host_write(i64 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %112

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @octeon_pci_console_desc_t, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @offsetof(i32 %24, i32 %25)
  %27 = add nsw i64 %23, %26
  %28 = call i32 @octeon_read_mem32(i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %6, align 4
  br label %112

35:                                               ; preds = %22
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @octeon_pci_console_desc_t, align 4
  %38 = load i32, i32* @console_addr_array, align 4
  %39 = call i64 @offsetof(i32 %37, i32 %38)
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = mul i32 %41, 8
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i64 @octeon_read_mem64(i64 %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i32, i32* @octeon_pci_console_t, align 4
  %48 = load i32, i32* @buf_size, align 4
  %49 = call i64 @offsetof(i32 %47, i32 %48)
  %50 = add nsw i64 %46, %49
  %51 = call i32 @octeon_read_mem32(i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* @octeon_pci_console_t, align 4
  %54 = load i32, i32* @input_base_addr, align 4
  %55 = call i64 @offsetof(i32 %53, i32 %54)
  %56 = add nsw i64 %52, %55
  %57 = call i64 @octeon_read_mem64(i64 %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* @octeon_pci_console_t, align 4
  %60 = load i32, i32* @input_read_index, align 4
  %61 = call i64 @offsetof(i32 %59, i32 %60)
  %62 = add nsw i64 %58, %61
  %63 = call i32 @octeon_read_mem32(i64 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* @octeon_pci_console_t, align 4
  %66 = load i32, i32* @input_write_index, align 4
  %67 = call i64 @offsetof(i32 %65, i32 %66)
  %68 = add nsw i64 %64, %67
  %69 = call i32 @octeon_read_mem32(i64 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @octeon_pci_console_buffer_free_bytes(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %35
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %6, align 4
  br label %112

78:                                               ; preds = %35
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @MIN(i32 %79, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %18, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = icmp uge i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sub i32 %88, %89
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i64, i64* %17, align 8
  %93 = load i32, i32* %16, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @OCTEON_PCI_ENDIAN_64BIT_SWAP, align 4
  %99 = call i32 @octeon_pci_write_mem(i64 %95, i8* %96, i32 %97, i32 %98)
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* @octeon_pci_console_t, align 4
  %102 = load i32, i32* @input_write_index, align 4
  %103 = call i64 @offsetof(i32 %101, i32 %102)
  %104 = add nsw i64 %100, %103
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %18, align 4
  %107 = add i32 %105, %106
  %108 = load i32, i32* %14, align 4
  %109 = urem i32 %107, %108
  %110 = call i32 @octeon_write_mem32(i64 %104, i32 %109)
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %91, %76, %32, %21
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @octeon_read_mem32(i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @octeon_read_mem64(i64) #1

declare dso_local i32 @octeon_pci_console_buffer_free_bytes(i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @octeon_pci_write_mem(i64, i8*, i32, i32) #1

declare dso_local i32 @octeon_write_mem32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
