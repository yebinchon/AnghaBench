; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_md.c_md_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_md.c_md_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.devdesc = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@MD_IMAGE_SIZE = common dso_local global i64 0, align 8
@MD_BLOCK_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@F_MASK = common dso_local global i32 0, align 4
@md_image = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i64*)* @md_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_strategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.devdesc*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.devdesc*
  store %struct.devdesc* %17, %struct.devdesc** %14, align 8
  %18 = load %struct.devdesc*, %struct.devdesc** %14, align 8
  %19 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %7, align 4
  br label %85

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @MD_IMAGE_SIZE, align 8
  %30 = load i64, i64* @MD_BLOCK_SIZE, align 8
  %31 = udiv i64 %29, %30
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %24
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %7, align 4
  br label %85

35:                                               ; preds = %27
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @MD_BLOCK_SIZE, align 8
  %38 = urem i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* %7, align 4
  br label %85

42:                                               ; preds = %35
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @MD_BLOCK_SIZE, align 8
  %45 = mul i64 %43, %44
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* @MD_IMAGE_SIZE, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i64, i64* @MD_IMAGE_SIZE, align 8
  %53 = load i64, i64* %15, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i64*, i64** %13, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i64*, i64** %13, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @F_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %83 [
    i32 129, label %65
    i32 128, label %74
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @md_image, i32 0, i32 0), align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %15, align 8
  %69 = add i64 %67, %68
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @bcopy(i8* %70, i8* %71, i64 %72)
  store i32 0, i32* %7, align 4
  br label %85

74:                                               ; preds = %61
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @md_image, i32 0, i32 0), align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %77, %78
  %80 = inttoptr i64 %79 to i8*
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @bcopy(i8* %75, i8* %80, i64 %81)
  store i32 0, i32* %7, align 4
  br label %85

83:                                               ; preds = %61
  %84 = load i32, i32* @ENODEV, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %74, %65, %40, %33, %22
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
