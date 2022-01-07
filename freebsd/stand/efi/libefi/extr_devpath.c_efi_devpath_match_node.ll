; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_match_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_match_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_devpath_match_node(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %42

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @DevicePathType(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @DevicePathType(i32* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @DevicePathSubType(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @DevicePathSubType(i32* %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %42

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @DevicePathNodeLength(i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @DevicePathNodeLength(i32* %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %42

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @memcmp(i32* %35, i32* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %33, %25, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @DevicePathType(i32*) #1

declare dso_local i64 @DevicePathSubType(i32*) #1

declare dso_local i64 @DevicePathNodeLength(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
