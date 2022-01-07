; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/fdt/extr_uboot_fdt.c_fdt_platform_load_dtb.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/fdt/extr_uboot_fdt.c_fdt_platform_load_dtb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fdt_addr_r\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fdt_addr\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fdtaddr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fdt_file\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fdtfile\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Loaded DTB from file '%s'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_platform_load_dtb() #0 {
  %1 = alloca %struct.fdt_header*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fdt_platform_load_from_ubenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %44

8:                                                ; preds = %0
  %9 = call i32 @fdt_platform_load_from_ubenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %44

12:                                               ; preds = %8
  %13 = call i32 @fdt_platform_load_from_ubenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %44

16:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  %17 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i8* @ub_env_get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i8*, i8** %2, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i8* @ub_env_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i8*, i8** %2, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @fdt_load_dtb_file(i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  store i32 0, i32* %4, align 4
  br label %44

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %30, %27
  br label %44

44:                                               ; preds = %43, %39, %15, %11, %7
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @fdt_platform_load_from_ubenv(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @ub_env_get(i8*) #1

declare dso_local i64 @fdt_load_dtb_file(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
