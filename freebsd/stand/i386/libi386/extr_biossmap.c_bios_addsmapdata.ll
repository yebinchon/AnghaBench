; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biossmap.c_bios_addsmapdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biossmap.c_bios_addsmapdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i32 }

@smapbase = common dso_local global i32* null, align 8
@smaplen = common dso_local global i32 0, align 4
@MODINFOMD_SMAP = common dso_local global i32 0, align 4
@smapattr = common dso_local global i32* null, align 8
@MODINFOMD_SMAP_XATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bios_addsmapdata(%struct.preloaded_file* %0) #0 {
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca i64, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %2, align 8
  %4 = load i32*, i32** @smapbase, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @smaplen, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  br label %30

10:                                               ; preds = %6
  %11 = load i32, i32* @smaplen, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  store i64 %13, i64* %3, align 8
  %14 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %15 = load i32, i32* @MODINFOMD_SMAP, align 4
  %16 = load i64, i64* %3, align 8
  %17 = load i32*, i32** @smapbase, align 8
  %18 = call i32 @file_addmetadata(%struct.preloaded_file* %14, i32 %15, i64 %16, i32* %17)
  %19 = load i32*, i32** @smapattr, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %10
  %22 = load i32, i32* @smaplen, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  store i64 %24, i64* %3, align 8
  %25 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %26 = load i32, i32* @MODINFOMD_SMAP_XATTR, align 4
  %27 = load i64, i64* %3, align 8
  %28 = load i32*, i32** @smapattr, align 8
  %29 = call i32 @file_addmetadata(%struct.preloaded_file* %25, i32 %26, i64 %27, i32* %28)
  br label %30

30:                                               ; preds = %9, %21, %10
  ret void
}

declare dso_local i32 @file_addmetadata(%struct.preloaded_file*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
