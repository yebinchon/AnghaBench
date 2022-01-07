; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_assoc_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_assoc_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPA: clearing own WPA/RSN IE\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"WPA: set own WPA/RSN IE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_sm_set_assoc_wpa_ie(%struct.wpa_sm* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %9 = icmp eq %struct.wpa_sm* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

11:                                               ; preds = %3
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @os_free(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18, %11
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_dbg(i32 %26, i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %52

33:                                               ; preds = %18
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @wpa_hexdump(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %35, i64 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32* @os_memdup(i32* %38, i64 %39)
  %41 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %42 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %53

48:                                               ; preds = %33
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %21
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %47, %10
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
