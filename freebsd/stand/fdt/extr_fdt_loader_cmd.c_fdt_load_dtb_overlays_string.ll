; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_load_dtb_overlays_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_load_dtb_overlays_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"fdt_load_dtb_overlays_string(%s)\0A\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s.dtbo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fdt_load_dtb_overlays_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_load_dtb_overlays_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @debugf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %65, %17
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 44)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @fdt_load_dtb_overlay(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 6
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @malloc(i32 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @fdt_print_overlay_load_error(i32 %41, i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %5, align 8
  br label %65

46:                                               ; preds = %32
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @fdt_load_dtb_overlay(i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %46, %26
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @fdt_print_overlay_load_error(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %62, %40
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %19, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @free(i8* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @debugf(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fdt_load_dtb_overlay(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fdt_print_overlay_load_error(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
