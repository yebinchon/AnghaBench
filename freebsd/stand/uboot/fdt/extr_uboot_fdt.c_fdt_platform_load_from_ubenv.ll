; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/fdt/extr_uboot_fdt.c_fdt_platform_load_from_ubenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/fdt/extr_uboot_fdt.c_fdt_platform_load_from_ubenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Using DTB provided by U-Boot at address %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fdt_platform_load_from_ubenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_platform_load_from_ubenv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fdt_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @ub_env_get(i8* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32 1, i32* %2, align 4
  br label %34

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strtoul(i8* %18, i8** %6, i32 16)
  %20 = inttoptr i64 %19 to %struct.fdt_header*
  store %struct.fdt_header* %20, %struct.fdt_header** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %34

26:                                               ; preds = %17
  %27 = load %struct.fdt_header*, %struct.fdt_header** %4, align 8
  %28 = call i64 @fdt_load_dtb_addr(%struct.fdt_header* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.fdt_header*, %struct.fdt_header** %4, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.fdt_header* %31)
  store i32 0, i32* %2, align 4
  br label %34

33:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30, %25, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i8* @ub_env_get(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @fdt_load_dtb_addr(%struct.fdt_header*) #1

declare dso_local i32 @printf(i8*, %struct.fdt_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
