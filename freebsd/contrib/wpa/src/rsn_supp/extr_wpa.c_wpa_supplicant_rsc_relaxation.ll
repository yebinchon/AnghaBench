; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_rsc_relaxation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_rsc_relaxation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"RSC %02x%02x%02x%02x%02x%02x%02x%02x is likely bogus, using 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i64*)* @wpa_supplicant_rsc_relaxation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_rsc_relaxation(%struct.wpa_sm* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

12:                                               ; preds = %2
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @wpa_cipher_rsc_len(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 6
  br i1 %18, label %19, label %71

19:                                               ; preds = %12
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24, %19
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %34, %29, %24
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MSG_WARNING, align 4
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 5
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 6
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 7
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @wpa_msg(i32 %44, i32 %45, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %51, i64 %54, i64 %57, i64 %60, i64 %63, i64 %66, i64 %69)
  store i32 1, i32* %3, align 4
  br label %72

71:                                               ; preds = %34, %12
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %39, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @wpa_cipher_rsc_len(i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
