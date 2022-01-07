; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_translate_devpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_translate_devpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"UnknownPath(%x)%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @efi_translate_devpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @efi_translate_devpath(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @NextDevicePathNode(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @IsDevicePathEnd(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @efi_translate_devpath(i32* %14)
  store i8* %15, i8** %5, align 8
  br label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %60

17:                                               ; preds = %13
  store i8* null, i8** %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @DevicePathType(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %38 [
    i32 130, label %21
    i32 132, label %25
    i32 128, label %29
    i32 129, label %33
    i32 131, label %37
  ]

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @efi_hw_dev_path(i32* %22, i8* %23)
  store i8* %24, i8** %6, align 8
  br label %51

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @efi_acpi_dev_path(i32* %26, i8* %27)
  store i8* %28, i8** %6, align 8
  br label %51

29:                                               ; preds = %17
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @efi_messaging_dev_path(i32* %30, i8* %31)
  store i8* %32, i8** %6, align 8
  br label %51

33:                                               ; preds = %17
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @efi_media_dev_path(i32* %34, i8* %35)
  store i8* %36, i8** %6, align 8
  br label %51

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %17, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %44 ]
  %47 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* null, i8** %6, align 8
  br label %50

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %50, %33, %29, %25, %21
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %5, align 8
  store i8* %59, i8** %2, align 8
  br label %60

60:                                               ; preds = %58, %16
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

declare dso_local i32* @NextDevicePathNode(i32*) #1

declare dso_local i32 @IsDevicePathEnd(i32*) #1

declare dso_local i32 @DevicePathType(i32*) #1

declare dso_local i8* @efi_hw_dev_path(i32*, i8*) #1

declare dso_local i8* @efi_acpi_dev_path(i32*, i8*) #1

declare dso_local i8* @efi_messaging_dev_path(i32*, i8*) #1

declare dso_local i8* @efi_media_dev_path(i32*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
