; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_in_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.wpa_bss* }
%struct.wpa_bss = type { i64, i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_bss*)* @wpa_bss_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_bss_in_use(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %5, align 8
  %6 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 2
  %9 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %10 = icmp eq %struct.wpa_bss* %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 2
  %15 = load %struct.wpa_bss*, %struct.wpa_bss** %14, align 8
  %16 = icmp ne %struct.wpa_bss* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 2
  %23 = load %struct.wpa_bss*, %struct.wpa_bss** %22, align 8
  %24 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 2
  %33 = load %struct.wpa_bss*, %struct.wpa_bss** %32, align 8
  %34 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @os_memcmp(i32 %30, i32 %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27, %17
  store i32 0, i32* %3, align 4
  br label %73

42:                                               ; preds = %27, %12
  %43 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @is_zero_ether_addr(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %42
  %49 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %50 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @ETH_ALEN, align 8
  %56 = call i64 @os_memcmp(i32 %51, i32 %54, i64 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* @ETH_ALEN, align 8
  %66 = call i64 @os_memcmp(i32 %61, i32 %64, i64 %65)
  %67 = icmp eq i64 %66, 0
  br label %68

68:                                               ; preds = %58, %48
  %69 = phi i1 [ true, %48 ], [ %67, %58 ]
  br label %70

70:                                               ; preds = %68, %42
  %71 = phi i1 [ false, %42 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %41, %11
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @os_memcmp(i32, i32, i64) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
