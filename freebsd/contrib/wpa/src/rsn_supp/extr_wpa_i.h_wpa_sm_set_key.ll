; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i32, i32*, i32, i32, i32*, i64, i32*, i64)* @wpa_sm_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_sm_set_key(%struct.wpa_sm* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i64 %6, i32* %7, i64 %8) #0 {
  %10 = alloca %struct.wpa_sm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i64 %8, i64* %18, align 8
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)*, i32 (i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)** %22, align 8
  %24 = call i32 @WPA_ASSERT(i32 (i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)* %23)
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)*, i32 (i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)** %28, align 8
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %10, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i64, i64* %18, align 8
  %43 = call i32 %29(i32 %34, i32 %35, i32* %36, i32 %37, i32 %38, i32* %39, i64 %40, i32* %41, i64 %42)
  ret i32 %43
}

declare dso_local i32 @WPA_ASSERT(i32 (i32, i32, i32*, i32, i32, i32*, i64, i32*, i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
