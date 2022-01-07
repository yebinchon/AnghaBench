; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_encode_abr_rec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_encode_abr_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_abr_rec = type { i32, i32, i32, i32, i32 }

@UNI_ABR_REC_NRM_P = common dso_local global i32 0, align 4
@UNI_ABR_REC_TRM_P = common dso_local global i32 0, align 4
@UNI_ABR_REC_CDF_P = common dso_local global i32 0, align 4
@UNI_ABR_REC_ADTF_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_abr_rec*)* @encode_abr_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_abr_rec(%struct.uni_abr_rec* %0) #0 {
  %2 = alloca %struct.uni_abr_rec*, align 8
  %3 = alloca i32, align 4
  store %struct.uni_abr_rec* %0, %struct.uni_abr_rec** %2, align 8
  %4 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %2, align 8
  %5 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 61440
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @UNI_ABR_REC_NRM_P, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %2, align 8
  %14 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 7
  %17 = shl i32 %16, 25
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %12, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UNI_ABR_REC_TRM_P, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %2, align 8
  %27 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 7
  %30 = shl i32 %29, 22
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @UNI_ABR_REC_CDF_P, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %2, align 8
  %40 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 7
  %43 = shl i32 %42, 19
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @UNI_ABR_REC_ADTF_P, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %2, align 8
  %53 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1023
  %56 = shl i32 %55, 9
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
