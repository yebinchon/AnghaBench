; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.bm_rcr }
%struct.bm_rcr = type { i64, i32, i32 }

@RCR_PI_CINH = common dso_local global i32 0, align 4
@BM_RCR_SIZE = common dso_local global i32 0, align 4
@RCR_CI_CINH = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"losing uncommitted RCR entries\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"missing existing RCR completions\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RCR destroyed unquiesced\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bm_rcr_finish(%struct.bm_portal* %0) #0 {
  %2 = alloca %struct.bm_portal*, align 8
  %3 = alloca %struct.bm_rcr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %2, align 8
  %6 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %6, i32 0, i32 0
  store %struct.bm_rcr* %7, %struct.bm_rcr** %3, align 8
  %8 = load i32, i32* @RCR_PI_CINH, align 4
  %9 = call i32 @bm_in(i32 %8)
  %10 = load i32, i32* @BM_RCR_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @RCR_CI_CINH, align 4
  %15 = call i32 @bm_in(i32 %14)
  %16 = load i32, i32* @BM_RCR_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %21 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT_COND(i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %29 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @RCR_PTR2IDX(i32 %30)
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @WARNING, align 4
  %35 = load i32, i32* @E_INVALID_STATE, align 4
  %36 = call i32 @REPORT_ERROR(i32 %34, i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %40 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @WARNING, align 4
  %45 = load i32, i32* @E_INVALID_STATE, align 4
  %46 = call i32 @REPORT_ERROR(i32 %44, i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %49 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %52 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @RCR_PTR2IDX(i32 %53)
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @WARNING, align 4
  %58 = load i32, i32* @E_INVALID_STATE, align 4
  %59 = call i32 @REPORT_ERROR(i32 %57, i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %47
  ret void
}

declare dso_local i32 @bm_in(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i64 @RCR_PTR2IDX(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
