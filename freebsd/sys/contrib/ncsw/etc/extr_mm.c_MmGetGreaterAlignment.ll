; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MmGetGreaterAlignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MmGetGreaterAlignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__* }

@MM_MAX_ALIGNMENT = common dso_local global i64 0, align 8
@ILLEGAL_BASE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i64, i8*)* @MmGetGreaterAlignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MmGetGreaterAlignment(%struct.TYPE_6__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %16, align 8
  %18 = load i64, i64* @MM_MAX_ALIGNMENT, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %17, i64 %18
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  br label %21

21:                                               ; preds = %54, %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @MAKE_ALIGNED(i64 %27, i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %24
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sle i64 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %55

50:                                               ; preds = %41, %35, %24
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %10, align 8
  br label %54

54:                                               ; preds = %50
  br label %21

55:                                               ; preds = %49, %21
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @ILLEGAL_BASE, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %5, align 8
  br label %91

61:                                               ; preds = %55
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32* @CreateBusyBlock(i64 %66, i64 %67, i8* %68)
  store i32* %69, i32** %11, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @ILLEGAL_BASE, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %5, align 8
  br label %91

74:                                               ; preds = %61
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @CutFree(%struct.TYPE_6__* %75, i64 %76, i64 %77)
  %79 = load i64, i64* @E_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @XX_Free(i32* %82)
  %84 = load i32, i32* @ILLEGAL_BASE, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %5, align 8
  br label %91

86:                                               ; preds = %74
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @AddBusy(%struct.TYPE_6__* %87, i32* %88)
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %86, %81, %71, %58
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i64 @MAKE_ALIGNED(i64, i64) #1

declare dso_local i32* @CreateBusyBlock(i64, i64, i8*) #1

declare dso_local i64 @CutFree(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i32 @AddBusy(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
