; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_ro.c_fdt_get_property_namelen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_ro.c_fdt_get_property_namelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

@FDT_ERR_BADVERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fdt_property* @fdt_get_property_namelen(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.fdt_property*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @fdt_version(i8* %12)
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i32*, i32** %11, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @FDT_ERR_BADVERSION, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %15
  store %struct.fdt_property* null, %struct.fdt_property** %6, align 8
  br label %30

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = call %struct.fdt_property* @fdt_get_property_namelen_(i8* %24, i32 %25, i8* %26, i32 %27, i32* %28, i32* null)
  store %struct.fdt_property* %29, %struct.fdt_property** %6, align 8
  br label %30

30:                                               ; preds = %23, %22
  %31 = load %struct.fdt_property*, %struct.fdt_property** %6, align 8
  ret %struct.fdt_property* %31
}

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local %struct.fdt_property* @fdt_get_property_namelen_(i8*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
