; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-coremask.h_cvmx_coremask_first_core_bmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-coremask.h_cvmx_coremask_first_core_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_coremask = type { i32* }

@CVMX_COREMASK_BMPSZ = common dso_local global i32 0, align 4
@CVMX_COREMASK_HLDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cvmx_coremask*)* @cvmx_coremask_first_core_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_coremask_first_core_bmp(%struct.cvmx_coremask* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cvmx_coremask*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cvmx_coremask* %0, %struct.cvmx_coremask** %3, align 8
  %6 = call i64 (...) @cvmx_get_core_num()
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %61, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CVMX_COREMASK_BMPSZ, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load %struct.cvmx_coremask*, %struct.cvmx_coremask** %3, align 8
  %14 = getelementptr inbounds %struct.cvmx_coremask, %struct.cvmx_coremask* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.cvmx_coremask*, %struct.cvmx_coremask** %3, align 8
  %26 = getelementptr inbounds %struct.cvmx_coremask, %struct.cvmx_coremask* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %65

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CVMX_COREMASK_HLDRSZ, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %65

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = sub i64 %43, 1
  %45 = load %struct.cvmx_coremask*, %struct.cvmx_coremask** %3, align 8
  %46 = getelementptr inbounds %struct.cvmx_coremask, %struct.cvmx_coremask* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %44, %52
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %12
  %57 = load i32, i32* @CVMX_COREMASK_HLDRSZ, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %8

64:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %40, %39, %34
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @cvmx_get_core_num(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
