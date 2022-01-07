; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_gen_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_gen_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, i32, i32, i32 }

@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_PROTO_OSEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_gen_wpa_ie(%struct.wpa_sm* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WPA_PROTO_RSN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %29 = call i32 @wpa_gen_wpa_ie_rsn(i32* %14, i64 %15, i32 %18, i32 %21, i32 %24, i32 %27, %struct.wpa_sm* %28)
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wpa_gen_wpa_ie_wpa(i32* %31, i64 %32, i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %30, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @wpa_gen_wpa_ie_rsn(i32*, i64, i32, i32, i32, i32, %struct.wpa_sm*) #1

declare dso_local i32 @wpa_gen_wpa_ie_wpa(i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
