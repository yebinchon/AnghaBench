; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_set_bsel_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_set_bsel_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OCTEON_FEATURE_BIT_EXTRACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"ERROR: cvmx_pip_set_bsel_pos: Invalid Bit-Select Extractor (%d) passed\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Warning: cvmx_pip_set_bsel_pos: Invalid pos(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @cvmx_pip_set_bsel_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pip_set_bsel_pos(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @OCTEON_FEATURE_BIT_EXTRACTOR, align 4
  %9 = call i32 @octeon_has_feature(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %92

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %92

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CVMX_PIP_BSEL_EXT_POSX(i32 %22)
  %24 = call i32 @cvmx_read_csr(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %83 [
    i32 0, label %27
    i32 1, label %34
    i32 2, label %41
    i32 3, label %48
    i32 4, label %55
    i32 5, label %62
    i32 6, label %69
    i32 7, label %76
  ]

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 127
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %86

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 127
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %86

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 127
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  br label %86

48:                                               ; preds = %21
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 127
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  br label %86

55:                                               ; preds = %21
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 8
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 127
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  br label %86

62:                                               ; preds = %21
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 10
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 127
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 4
  br label %86

69:                                               ; preds = %21
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 12
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 127
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 4
  br label %86

76:                                               ; preds = %21
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 14
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 127
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 15
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %21
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %76, %69, %62, %55, %48, %41, %34, %27
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @CVMX_PIP_BSEL_EXT_POSX(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cvmx_write_csr(i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %86, %18, %11
  ret void
}

declare dso_local i32 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_BSEL_EXT_POSX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
