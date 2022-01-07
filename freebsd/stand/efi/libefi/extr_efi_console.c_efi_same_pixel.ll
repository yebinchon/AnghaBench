; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_same_pixel.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_same_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_pixel = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.text_pixel*, %struct.text_pixel*)* @efi_same_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_same_pixel(%struct.text_pixel* %0, %struct.text_pixel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.text_pixel*, align 8
  %5 = alloca %struct.text_pixel*, align 8
  store %struct.text_pixel* %0, %struct.text_pixel** %4, align 8
  store %struct.text_pixel* %1, %struct.text_pixel** %5, align 8
  %6 = load %struct.text_pixel*, %struct.text_pixel** %4, align 8
  %7 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.text_pixel*, %struct.text_pixel** %5, align 8
  %10 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.text_pixel*, %struct.text_pixel** %4, align 8
  %16 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.text_pixel*, %struct.text_pixel** %5, align 8
  %20 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %48

25:                                               ; preds = %14
  %26 = load %struct.text_pixel*, %struct.text_pixel** %4, align 8
  %27 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.text_pixel*, %struct.text_pixel** %5, align 8
  %31 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %48

36:                                               ; preds = %25
  %37 = load %struct.text_pixel*, %struct.text_pixel** %4, align 8
  %38 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.text_pixel*, %struct.text_pixel** %5, align 8
  %42 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %35, %24, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
