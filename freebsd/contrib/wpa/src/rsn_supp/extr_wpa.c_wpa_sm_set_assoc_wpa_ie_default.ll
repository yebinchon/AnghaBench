; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_assoc_wpa_ie_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_assoc_wpa_ie_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPA: Set own WPA IE default\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"WPA: Leave previously set WPA IE default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_sm_set_assoc_wpa_ie_default(%struct.wpa_sm* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %10 = icmp eq %struct.wpa_sm* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %61

12:                                               ; preds = %3
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @wpa_gen_wpa_ie(%struct.wpa_sm* %13, i32* %14, i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %61

21:                                               ; preds = %12
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @wpa_hexdump(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %26, i64 %28)
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %21
  %35 = load i32*, i32** %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @os_memdup(i32* %35, i64 %37)
  %39 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %42 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %61

46:                                               ; preds = %34
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %50 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %60

51:                                               ; preds = %21
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %54 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @wpa_hexdump(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %55, i64 %58)
  br label %60

60:                                               ; preds = %51, %46
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %45, %20, %11
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @wpa_gen_wpa_ie(%struct.wpa_sm*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
