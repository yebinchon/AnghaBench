; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_find_p2ps_substr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_find_p2ps_substr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2ps_advertisement = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2ps_advertisement*, i32*, i64)* @find_p2ps_substr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_p2ps_substr(%struct.p2ps_advertisement* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2ps_advertisement*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.p2ps_advertisement* %0, %struct.p2ps_advertisement** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %5, align 8
  %12 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  store i32 1, i32* %4, align 4
  br label %55

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %55

25:                                               ; preds = %21
  %26 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %5, align 8
  %27 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @os_strlen(i64 %28)
  store i64 %29, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %51, %25
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = sub i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %54

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @os_memcmp(i32* %44, i32* %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %55

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %30

54:                                               ; preds = %40, %30
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %49, %24, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @os_strlen(i64) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
