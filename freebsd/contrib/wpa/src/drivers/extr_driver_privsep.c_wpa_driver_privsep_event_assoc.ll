; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_event_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_event_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i64)* @wpa_driver_privsep_event_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_privsep_event_assoc(i8* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.wpa_event_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @os_memset(%union.wpa_event_data* %9, i32 0, i32 16)
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = ptrtoint i32* %19 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = icmp slt i64 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %69

27:                                               ; preds = %4
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @os_memcpy(i32* %13, i32* %28, i32 4)
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %11, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = icmp sgt i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %27
  br label %69

45:                                               ; preds = %34
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* %13, align 4
  %53 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %11, align 8
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %48, %45
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %64
  %67 = phi %union.wpa_event_data* [ %9, %64 ], [ null, %65 ]
  %68 = call i32 @wpa_supplicant_event(i8* %60, i32 %61, %union.wpa_event_data* %67)
  br label %69

69:                                               ; preds = %66, %44, %26
  ret void
}

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_supplicant_event(i8*, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
