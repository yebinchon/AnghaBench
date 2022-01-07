; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_text_autoresize.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_text_autoresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i64)*, i32 (%struct.TYPE_7__*, i64, i64*, i64*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@ST = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @text_autoresize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @text_autoresize() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ST, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %1, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %42, %0
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_7__*, i64, i64*, i64*)*, i32 (%struct.TYPE_7__*, i64, i64*, i64*)** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 %22(%struct.TYPE_7__* %23, i64 %24, i64* %6, i64* %7)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @EFI_ERROR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %42

30:                                               ; preds = %19
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = mul nsw i64 %31, %32
  %34 = load i64, i64* %4, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = mul nsw i64 %37, %38
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %3, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %11

45:                                               ; preds = %11
  %46 = load i64, i64* %4, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_7__*, i64)*, i32 (%struct.TYPE_7__*, i64)** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 %51(%struct.TYPE_7__* %52, i64 %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* @CMD_OK, align 4
  ret i32 %56
}

declare dso_local i64 @EFI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
