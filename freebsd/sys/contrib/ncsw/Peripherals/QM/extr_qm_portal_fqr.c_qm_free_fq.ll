; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qm_free_fq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qm_free_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }

@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"qman_retire_fq() failed!\00", align 1
@QMAN_FQ_STATE_CHANGING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"fq %d currently in use, will be retired\00", align 1
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"qman_retire_fq() failed;Frame Queue Not Empty, Need to dequeue\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"qman_oos_fq() failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.qman_fq*)* @qm_free_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qm_free_fq(i32* %0, %struct.qman_fq* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.qman_fq*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %8 = call i64 @qman_retire_fq(i32* %6, %struct.qman_fq* %7, i32* %5, i32 0)
  %9 = load i64, i64* @E_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @MAJOR, align 4
  %13 = load i32, i32* @E_INVALID_STATE, align 4
  %14 = call i32 @RETURN_ERROR(i32 %12, i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* @MAJOR, align 4
  %22 = load i32, i32* @E_INVALID_STATE, align 4
  %23 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %24 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @RETURN_ERROR(i32 %21, i32 %22, i8* %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i32, i32* @E_INVALID_STATE, align 4
  %37 = call i32 @RETURN_ERROR(i32 %35, i32 %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %41 = call i64 @qman_oos_fq(i32* %39, %struct.qman_fq* %40)
  %42 = load i64, i64* @E_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @MAJOR, align 4
  %46 = load i32, i32* @E_INVALID_STATE, align 4
  %47 = call i32 @RETURN_ERROR(i32 %45, i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %50 = call i32 @qman_destroy_fq(%struct.qman_fq* %49, i32 0)
  %51 = load i64, i64* @E_OK, align 8
  ret i64 %51
}

declare dso_local i64 @qman_retire_fq(i32*, %struct.qman_fq*, i32*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @qman_oos_fq(i32*, %struct.qman_fq*) #1

declare dso_local i32 @qman_destroy_fq(%struct.qman_fq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
