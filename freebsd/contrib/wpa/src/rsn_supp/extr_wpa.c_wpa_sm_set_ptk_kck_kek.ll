; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_ptk_kck_kek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_ptk_kck_kek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@WPA_KCK_MAX_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Updated PTK KCK\00", align 1
@WPA_KEK_MAX_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Updated PTK KEK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_set_ptk_kck_kek(%struct.wpa_sm* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %5
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @WPA_KCK_MAX_LEN, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @os_memcpy(i32 %21, i32* %22, i64 %23)
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %17, %13, %5
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @WPA_KEK_MAX_LEN, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %40 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @os_memcpy(i32 %42, i32* %43, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %48 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %38, %34, %31
  %53 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %54 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  ret void
}

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
