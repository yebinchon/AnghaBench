; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_last_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_last_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @efi_devpath_last_node(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @IsDevicePathEnd(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %20

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %15, %8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @NextDevicePathNode(i32* %10)
  %12 = call i64 @IsDevicePathEnd(i32* %11)
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @NextDevicePathNode(i32* %16)
  store i32* %17, i32** %3, align 8
  br label %9

18:                                               ; preds = %9
  %19 = load i32*, i32** %3, align 8
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %18, %7
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i64 @IsDevicePathEnd(i32*) #1

declare dso_local i32* @NextDevicePathNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
