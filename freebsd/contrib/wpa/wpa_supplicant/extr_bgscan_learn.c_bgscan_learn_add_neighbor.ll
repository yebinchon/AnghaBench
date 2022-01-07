; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_add_neighbor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_add_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_learn_bss = type { i32, i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgscan_learn_bss*, i32*)* @bgscan_learn_add_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgscan_learn_add_neighbor(%struct.bgscan_learn_bss* %0, i32* %1) #0 {
  %3 = alloca %struct.bgscan_learn_bss*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.bgscan_learn_bss* %0, %struct.bgscan_learn_bss** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %7 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = call i64 @os_memcmp(i32 %8, i32* %9, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %16 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %19 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @bssid_in_array(i32* %17, i32 %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %57

25:                                               ; preds = %14
  %26 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %27 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %30 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32* @os_realloc_array(i32* %28, i32 %32, i32 %33)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %57

38:                                               ; preds = %25
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %41 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @os_memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %52 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.bgscan_learn_bss*, %struct.bgscan_learn_bss** %3, align 8
  %54 = getelementptr inbounds %struct.bgscan_learn_bss, %struct.bgscan_learn_bss* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %38, %37, %24, %13
  ret void
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i64 @bssid_in_array(i32*, i32, i32*) #1

declare dso_local i32* @os_realloc_array(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
