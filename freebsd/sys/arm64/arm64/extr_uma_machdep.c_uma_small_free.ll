; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_uma_machdep.c_uma_small_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_uma_machdep.c_uma_small_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uma_small_free(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = call i32 @DMAP_TO_PHYS(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @dump_drop_page(i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @PHYS_TO_VM_PAGE(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @vm_page_unwire_noq(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @vm_page_free(i32 %18)
  ret void
}

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

declare dso_local i32 @dump_drop_page(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32) #1

declare dso_local i32 @vm_page_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
