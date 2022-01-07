; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_preauth_test.c_wpa_alloc_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_preauth_test.c_wpa_alloc_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802_1x_hdr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.wpa_supplicant*, i32, i8*, i32, i64*, i8**)* @wpa_alloc_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpa_alloc_eapol(%struct.wpa_supplicant* %0, i32 %1, i8* %2, i32 %3, i64* %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.ieee802_1x_hdr*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 12, %16
  %18 = load i64*, i64** %12, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.ieee802_1x_hdr* @os_malloc(i64 %20)
  store %struct.ieee802_1x_hdr* %21, %struct.ieee802_1x_hdr** %14, align 8
  %22 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %23 = icmp eq %struct.ieee802_1x_hdr* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %64

25:                                               ; preds = %6
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %32 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %35 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @htons(i32 %36)
  %38 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %39 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %25
  %43 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %44 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %43, i64 1
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @os_memcpy(%struct.ieee802_1x_hdr* %44, i8* %45, i32 %46)
  br label %53

48:                                               ; preds = %25
  %49 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %50 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %49, i64 1
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @os_memset(%struct.ieee802_1x_hdr* %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i8**, i8*** %13, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %58 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %57, i64 1
  %59 = bitcast %struct.ieee802_1x_hdr* %58 to i8*
  %60 = load i8**, i8*** %13, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %63 = bitcast %struct.ieee802_1x_hdr* %62 to i32*
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %61, %24
  %65 = load i32*, i32** %7, align 8
  ret i32* %65
}

declare dso_local %struct.ieee802_1x_hdr* @os_malloc(i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @os_memcpy(%struct.ieee802_1x_hdr*, i8*, i32) #1

declare dso_local i32 @os_memset(%struct.ieee802_1x_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
