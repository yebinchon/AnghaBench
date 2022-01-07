; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_get_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86BIOS_MEM_SIZE = common dso_local global i64 0, align 8
@X86BIOS_IVT_SIZE = common dso_local global i64 0, align 8
@x86bios_map = common dso_local global i64* null, align 8
@X86BIOS_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @x86bios_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @x86bios_get_pages(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %7, %8
  %10 = load i64, i64* @X86BIOS_MEM_SIZE, align 8
  %11 = load i64, i64* @X86BIOS_IVT_SIZE, align 8
  %12 = add i64 %10, %11
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @X86BIOS_MEM_SIZE, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* @X86BIOS_MEM_SIZE, align 8
  %21 = load i64, i64* %4, align 8
  %22 = sub i64 %21, %20
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i64*, i64** @x86bios_map, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @X86BIOS_PAGE_SIZE, align 8
  %27 = udiv i64 %25, %26
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @X86BIOS_PAGE_SIZE, align 8
  %35 = urem i64 %33, %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %32, %23
  %39 = load i64, i64* %6, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %38, %14
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
