; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_print_abr_rec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_print_abr_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicx = type { i32 }
%struct.uni_abr_rec = type { i32, i32, i32, i32, i32 }

@UNI_ABR_REC_NRM_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nrm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@UNI_ABR_REC_TRM_P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"trm\00", align 1
@UNI_ABR_REC_CDF_P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"cdf\00", align 1
@UNI_ABR_REC_ADTF_P = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"adtf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unicx*, %struct.uni_abr_rec*)* @print_abr_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_abr_rec(%struct.unicx* %0, %struct.uni_abr_rec* %1) #0 {
  %3 = alloca %struct.unicx*, align 8
  %4 = alloca %struct.uni_abr_rec*, align 8
  store %struct.unicx* %0, %struct.unicx** %3, align 8
  store %struct.uni_abr_rec* %1, %struct.uni_abr_rec** %4, align 8
  %5 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %6 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UNI_ABR_REC_NRM_P, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.unicx*, %struct.unicx** %3, align 8
  %13 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %14 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @uni_print_entry(%struct.unicx* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %19 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UNI_ABR_REC_TRM_P, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.unicx*, %struct.unicx** %3, align 8
  %26 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %27 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @uni_print_entry(%struct.unicx* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %32 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UNI_ABR_REC_CDF_P, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.unicx*, %struct.unicx** %3, align 8
  %39 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %40 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @uni_print_entry(%struct.unicx* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %45 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UNI_ABR_REC_ADTF_P, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.unicx*, %struct.unicx** %3, align 8
  %52 = load %struct.uni_abr_rec*, %struct.uni_abr_rec** %4, align 8
  %53 = getelementptr inbounds %struct.uni_abr_rec, %struct.uni_abr_rec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @uni_print_entry(%struct.unicx* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  ret void
}

declare dso_local i32 @uni_print_entry(%struct.unicx*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
