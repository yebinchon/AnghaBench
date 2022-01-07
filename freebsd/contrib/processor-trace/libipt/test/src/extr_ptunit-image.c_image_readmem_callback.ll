; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_image_readmem_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_image_readmem_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_asid = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.pt_asid*, i32, i8*)* @image_readmem_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_readmem_callback(i32* %0, i64 %1, %struct.pt_asid* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pt_asid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.pt_asid* %2, %struct.pt_asid** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @pte_invalid, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %61

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 12288
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @pte_nomap, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %61

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 12288
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @pte_internal, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %61

39:                                               ; preds = %27
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %40

58:                                               ; preds = %40
  %59 = load i64, i64* %13, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %36, %24, %17
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
