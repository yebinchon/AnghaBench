; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosmem.c_command_biosmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosmem.c_command_biosmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"bios_basemem: 0x%llx\0A\00", align 1
@bios_basemem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"bios_extmem: 0x%llx\0A\00", align 1
@bios_extmem = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"memtop: 0x%llx\0A\00", align 1
@memtop = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"high_heap_base: 0x%llx\0A\00", align 1
@high_heap_base = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"high_heap_size: 0x%llx\0A\00", align 1
@high_heap_size = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"bios_quirks: 0x%02x\00", align 1
@BQ_DISTRUST_E820_EXTMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c" BQ_DISTRUST_E820_EXTMEM\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"b_bios_probed: 0x%02x\00", align 1
@b_bios_probed = common dso_local global i32 0, align 4
@B_BASEMEM_E820 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c" B_BASEMEM_E820\00", align 1
@B_BASEMEM_12 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c" B_BASEMEM_12\00", align 1
@B_EXTMEM_E820 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c" B_EXTMEM_E820\00", align 1
@B_EXTMEM_E801 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c" B_EXTMEM_E801\00", align 1
@B_EXTMEM_8800 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c" B_EXTMEM_8800\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_biosmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_biosmem(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = call i32 (...) @bios_getquirks()
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* @bios_basemem, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* @bios_extmem, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* @memtop, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* @high_heap_base, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* @high_heap_size, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BQ_DISTRUST_E820_EXTMEM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32, i32* @b_bios_probed, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @b_bios_probed, align 4
  %30 = load i32, i32* @B_BASEMEM_E820, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i32, i32* @b_bios_probed, align 4
  %37 = load i32, i32* @B_BASEMEM_12, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* @b_bios_probed, align 4
  %44 = load i32, i32* @B_EXTMEM_E820, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* @b_bios_probed, align 4
  %51 = load i32, i32* @B_EXTMEM_E801, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* @b_bios_probed, align 4
  %58 = load i32, i32* @B_EXTMEM_8800, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @CMD_OK, align 4
  ret i32 %65
}

declare dso_local i32 @bios_getquirks(...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
