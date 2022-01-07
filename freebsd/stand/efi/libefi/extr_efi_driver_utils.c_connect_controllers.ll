; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_driver_utils.c_connect_controllers.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_driver_utils.c_connect_controllers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32*, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32)* }

@BS = common dso_local global %struct.TYPE_2__* null, align 8
@ByProtocol = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @connect_controllers(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (i32, i32*, i32*, i32*, i32*)*, i64 (i32, i32*, i32*, i32*, i32*)** %10, align 8
  %12 = load i32, i32* @ByProtocol, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 %11(i32 %12, i32* %13, i32* null, i32* %8, i32* null)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %61

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @malloc(i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64 (i32, i32*, i32*, i32*, i32*)*, i64 (i32, i32*, i32*, i32*, i32*)** %28, align 8
  %30 = load i32, i32* @ByProtocol, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 %29(i32 %30, i32* %31, i32* null, i32* %8, i32* %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @EFI_ERROR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %61

39:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (i32, i32*, i32*, i32)*, i32 (i32, i32*, i32*, i32)** %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %47(i32 %52, i32* null, i32* null, i32 1)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @free(i32* %58)
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %57, %37, %18
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @EFI_ERROR(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
