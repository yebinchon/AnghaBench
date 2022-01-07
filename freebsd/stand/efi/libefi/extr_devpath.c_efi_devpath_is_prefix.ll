; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_is_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_is_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_devpath_is_prefix(i32* %0, i32* %1) #0 {
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
  br label %53

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %47
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @IsDevicePathEnd(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %52

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @DevicePathType(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @DevicePathType(i32* %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @DevicePathSubType(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @DevicePathSubType(i32* %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store i32 0, i32* %3, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @DevicePathNodeLength(i32* %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @DevicePathNodeLength(i32* %36)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %53

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @memcmp(i32* %41, i32* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %53

47:                                               ; preds = %40
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @NextDevicePathNode(i32* %48)
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32* @NextDevicePathNode(i32* %50)
  store i32* %51, i32** %5, align 8
  br label %14

52:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46, %39, %31, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @IsDevicePathEnd(i32*) #1

declare dso_local i64 @DevicePathType(i32*) #1

declare dso_local i64 @DevicePathSubType(i32*) #1

declare dso_local i64 @DevicePathNodeLength(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32* @NextDevicePathNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
