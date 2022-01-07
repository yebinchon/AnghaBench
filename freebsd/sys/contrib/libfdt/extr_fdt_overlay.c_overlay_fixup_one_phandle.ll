; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_overlay.c_overlay_fixup_one_phandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_overlay.c_overlay_fixup_one_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@FDT_ERR_BADOVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32, i8*, i32, i32, i8*)* @overlay_fixup_one_phandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_fixup_one_phandle(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %10, align 4
  br label %82

30:                                               ; preds = %9
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i8*, i8** %19, align 8
  %34 = call i8* @fdt_getprop(i8* %31, i32 %32, i8* %33, i32* %25)
  store i8* %34, i8** %20, align 8
  %35 = load i8*, i8** %20, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %25, align 4
  store i32 %38, i32* %10, align 4
  br label %82

39:                                               ; preds = %30
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %20, align 8
  %42 = call i32 @fdt_path_offset(i8* %40, i8* %41)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %23, align 4
  store i32 %46, i32* %10, align 4
  br label %82

47:                                               ; preds = %39
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %23, align 4
  %50 = call i32 @fdt_get_phandle(i8* %48, i32 %49)
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %82

56:                                               ; preds = %47
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @fdt_path_offset_namelen(i8* %57, i8* %58, i32 %59)
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %82

68:                                               ; preds = %56
  %69 = load i32, i32* %24, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %24, align 4
  store i32 %72, i32* %10, align 4
  br label %82

73:                                               ; preds = %68
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @cpu_to_fdt32(i32 %74)
  store i32 %75, i32* %22, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %24, align 4
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @fdt_setprop_inplace_namelen_partial(i8* %76, i32 %77, i8* %78, i32 %79, i32 %80, i32* %22, i32 4)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %73, %71, %65, %53, %45, %37, %28
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @fdt_get_phandle(i8*, i32) #1

declare dso_local i32 @fdt_path_offset_namelen(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @fdt_setprop_inplace_namelen_partial(i8*, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
