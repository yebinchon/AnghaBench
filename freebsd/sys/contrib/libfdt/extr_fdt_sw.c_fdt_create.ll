; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_sw.c_fdt_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_sw.c_fdt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_SW_MAGIC = common dso_local global i32 0, align 4
@FDT_LAST_SUPPORTED_VERSION = common dso_local global i32 0, align 4
@FDT_FIRST_SUPPORTED_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_create(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @FDT_SW_MAGIC, align 4
  %20 = call i32 @fdt_set_magic(i8* %18, i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @FDT_LAST_SUPPORTED_VERSION, align 4
  %23 = call i32 @fdt_set_version(i8* %21, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @FDT_FIRST_SUPPORTED_VERSION, align 4
  %26 = call i32 @fdt_set_last_comp_version(i8* %24, i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fdt_set_totalsize(i8* %27, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @FDT_ALIGN(i32 4, i32 4)
  %32 = call i32 @fdt_set_off_mem_rsvmap(i8* %30, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @fdt_off_mem_rsvmap(i8* %34)
  %36 = call i32 @fdt_set_off_dt_struct(i8* %33, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @fdt_set_off_dt_strings(i8* %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %14, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fdt_set_magic(i8*, i32) #1

declare dso_local i32 @fdt_set_version(i8*, i32) #1

declare dso_local i32 @fdt_set_last_comp_version(i8*, i32) #1

declare dso_local i32 @fdt_set_totalsize(i8*, i32) #1

declare dso_local i32 @fdt_set_off_mem_rsvmap(i8*, i32) #1

declare dso_local i32 @FDT_ALIGN(i32, i32) #1

declare dso_local i32 @fdt_set_off_dt_struct(i8*, i32) #1

declare dso_local i32 @fdt_off_mem_rsvmap(i8*) #1

declare dso_local i32 @fdt_set_off_dt_strings(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
