; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_p2p_go_save_group_common_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_p2p_go_save_group_common_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i64* }
%struct.p2p_go_neg_results = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.p2p_go_neg_results*)* @p2p_go_save_group_common_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_go_save_group_common_freqs(%struct.wpa_supplicant* %0, %struct.p2p_go_neg_results* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.p2p_go_neg_results*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.p2p_go_neg_results* %1, %struct.p2p_go_neg_results** %4, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i32 @int_array_len(i64* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @os_free(i64* %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i64* @os_calloc(i32 %19, i32 4)
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 2
  store i64* %20, i64** %22, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %68

28:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %64

45:                                               ; preds = %33
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %54, i64* %60, align 8
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %29

64:                                               ; preds = %44, %29
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %27
  ret void
}

declare dso_local i32 @int_array_len(i64*) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64* @os_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
