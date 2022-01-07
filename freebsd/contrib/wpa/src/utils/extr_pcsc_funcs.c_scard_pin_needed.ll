; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_pin_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_pin_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scard_data = type { i64 }

@SCARD_GSM_SIM = common dso_local global i64 0, align 8
@SCARD_CHV1_OFFSET = common dso_local global i64 0, align 8
@SCARD_CHV1_FLAG = common dso_local global i8 0, align 1
@SCARD_USIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scard_data*, i8*, i64)* @scard_pin_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scard_pin_needed(%struct.scard_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scard_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.scard_data* %0, %struct.scard_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.scard_data*, %struct.scard_data** %5, align 8
  %10 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SCARD_GSM_SIM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SCARD_CHV1_OFFSET, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @SCARD_CHV1_OFFSET, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @SCARD_CHV1_FLAG, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %52

29:                                               ; preds = %18, %14
  store i32 0, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load %struct.scard_data*, %struct.scard_data** %5, align 8
  %32 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SCARD_USIM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @scard_parse_fsp_templ(i8* %37, i64 %38, i32* %8, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %52

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 128
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %52

50:                                               ; preds = %45, %42
  store i32 0, i32* %4, align 4
  br label %52

51:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %49, %41, %29, %28
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @scard_parse_fsp_templ(i8*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
