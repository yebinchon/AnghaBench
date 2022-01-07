; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_free_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_free_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i32)* }
%struct.TYPE_3__ = type { i32 }

@lidt_pa = common dso_local global i64 0, align 8
@BS = common dso_local global %struct.TYPE_4__* null, align 8
@fw_idt = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@exc_stack_pa = common dso_local global i64 0, align 8
@tss_pa = common dso_local global i64 0, align 8
@tss_fw_seg = common dso_local global i64 0, align 8
@loader_gdt_pa = common dso_local global i64 0, align 8
@ist = common dso_local global i64 0, align 8
@loader_tss = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tables() #0 {
  %1 = load i64, i64* @lidt_pa, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BS, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32 (i64, i32)*, i32 (i64, i32)** %5, align 8
  %7 = load i64, i64* @lidt_pa, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fw_idt, i32 0, i32 0), align 4
  %9 = call i32 @EFI_SIZE_TO_PAGES(i32 %8)
  %10 = call i32 %6(i64 %7, i32 %9)
  store i64 0, i64* @lidt_pa, align 8
  br label %11

11:                                               ; preds = %3, %0
  %12 = load i64, i64* @exc_stack_pa, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BS, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (i64, i32)*, i32 (i64, i32)** %16, align 8
  %18 = load i64, i64* @exc_stack_pa, align 8
  %19 = call i32 %17(i64 %18, i32 1)
  store i64 0, i64* @exc_stack_pa, align 8
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i64, i64* @tss_pa, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i64, i64* @tss_fw_seg, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BS, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i64, i32)*, i32 (i64, i32)** %28, align 8
  %30 = load i64, i64* @tss_pa, align 8
  %31 = call i32 @EFI_SIZE_TO_PAGES(i32 4)
  %32 = call i32 %29(i64 %30, i32 %31)
  store i64 0, i64* @tss_pa, align 8
  br label %33

33:                                               ; preds = %26, %23, %20
  %34 = load i64, i64* @loader_gdt_pa, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BS, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (i64, i32)*, i32 (i64, i32)** %38, align 8
  %40 = load i64, i64* @tss_pa, align 8
  %41 = call i32 %39(i64 %40, i32 2)
  store i64 0, i64* @loader_gdt_pa, align 8
  br label %42

42:                                               ; preds = %36, %33
  store i64 0, i64* @ist, align 8
  store i64 0, i64* @loader_tss, align 8
  ret void
}

declare dso_local i32 @EFI_SIZE_TO_PAGES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
