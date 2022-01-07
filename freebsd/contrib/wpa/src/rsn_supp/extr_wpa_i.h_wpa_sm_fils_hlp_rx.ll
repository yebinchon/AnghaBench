; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_fils_hlp_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_i.h_wpa_sm_fils_hlp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32*, i32*, i32*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_sm*, i32*, i32*, i32*, i64)* @wpa_sm_fils_hlp_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_sm_fils_hlp_rx(%struct.wpa_sm* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %12 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (i32, i32*, i32*, i32*, i64)*, i32 (i32, i32*, i32*, i32*, i64)** %14, align 8
  %16 = icmp ne i32 (i32, i32*, i32*, i32*, i64)* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (i32, i32*, i32*, i32*, i64)*, i32 (i32, i32*, i32*, i32*, i64)** %21, align 8
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 %22(i32 %27, i32* %28, i32* %29, i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %17, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
