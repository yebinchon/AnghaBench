; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_efi_unredirect_exceptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_efi_unredirect_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64tss = type { i64 }

@lidt_pa = common dso_local global i64 0, align 8
@ist = common dso_local global i32 0, align 4
@tss_pa = common dso_local global i64 0, align 8
@loader_gdt_pa = common dso_local global i64 0, align 8
@fw_gdt = common dso_local global i32 0, align 4
@loader_tss = common dso_local global i64 0, align 8
@tss_fw_seg = common dso_local global i32 0, align 4
@fw_idt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @efi_unredirect_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_unredirect_exceptions() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @lidt_pa, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %33

5:                                                ; preds = %0
  %6 = call i32 (...) @intr_disable()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @ist, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load i64, i64* @tss_pa, align 8
  %11 = inttoptr i64 %10 to %struct.amd64tss*
  %12 = getelementptr inbounds %struct.amd64tss, %struct.amd64tss* %11, i32 0, i32 0
  %13 = load i32, i32* @ist, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %9, %5
  %18 = load i64, i64* @loader_gdt_pa, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @bare_lgdt(i32* @fw_gdt)
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* @loader_tss, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @tss_fw_seg, align 4
  %27 = call i32 @ltr(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i32 @lidt(i32* @fw_idt)
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @intr_restore(i32 %30)
  %32 = call i32 (...) @free_tables()
  br label %33

33:                                               ; preds = %28, %4
  ret void
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @bare_lgdt(i32*) #1

declare dso_local i32 @ltr(i32) #1

declare dso_local i32 @lidt(i32*) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @free_tables(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
