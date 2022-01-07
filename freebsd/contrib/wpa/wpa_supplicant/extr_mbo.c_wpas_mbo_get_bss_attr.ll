; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_get_bss_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_get_bss_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }

@MBO_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@MBO_IE_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_mbo_get_bss_attr(%struct.wpa_bss* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %9 = icmp ne %struct.wpa_bss* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %13 = load i32, i32* @MBO_IE_VENDOR_TYPE, align 4
  %14 = call i32* @wpa_bss_get_vendor_ie(%struct.wpa_bss* %12, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32* null, i32** %3, align 8
  br label %40

18:                                               ; preds = %11
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* @MBO_IE_HEADER, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = call i32* @get_ie(i32* %30, i32 %37, i32 %38)
  store i32* %39, i32** %3, align 8
  br label %40

40:                                               ; preds = %18, %17, %10
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i32* @wpa_bss_get_vendor_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32* @get_ie(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
