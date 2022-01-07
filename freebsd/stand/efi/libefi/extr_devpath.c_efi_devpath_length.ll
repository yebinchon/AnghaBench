; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_devpath_length(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  store i32* %4, i32** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @IsDevicePathEnd(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @NextDevicePathNode(i32* %11)
  store i32* %12, i32** %2, align 8
  br label %5

13:                                               ; preds = %5
  %14 = load i32*, i32** %2, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = load i32*, i32** %3, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = sub nsw i64 %15, %17
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @DevicePathNodeLength(i32* %19)
  %21 = add nsw i64 %18, %20
  ret i64 %21
}

declare dso_local i32 @IsDevicePathEnd(i32*) #1

declare dso_local i32* @NextDevicePathNode(i32*) #1

declare dso_local i64 @DevicePathNodeLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
