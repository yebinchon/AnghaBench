; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdMemory.c_AcpiOsWriteMemory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdMemory.c_AcpiOsWriteMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiOsWriteMemory(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sdiv i32 %10, 8
  %12 = call i8* @pmap_mapdev(i32 %9, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %35 [
    i32 8, label %19
    i32 16, label %23
    i32 32, label %27
    i32 64, label %31
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i8**
  store volatile i8* %20, i8** %22, align 8
  br label %35

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i8**
  store volatile i8* %24, i8** %26, align 8
  br label %35

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i8**
  store volatile i8* %28, i8** %30, align 8
  br label %35

31:                                               ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to i8**
  store volatile i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %17, %31, %27, %23, %19
  %36 = load i8*, i8** %8, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = sdiv i32 %38, 8
  %40 = call i32 @pmap_unmapdev(i32 %37, i32 %39)
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i8* @pmap_mapdev(i32, i32) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
