; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_write_ht_mcs_bitmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_write_ht_mcs_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"ht_mcs_bitmask=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i32*)* @hostapd_write_ht_mcs_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hostapd_write_ht_mcs_bitmask(i8* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %11, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %11, align 8
  %18 = sub i64 %16, %17
  %19 = call i32 @os_snprintf(i8* %15, i64 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %10, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = sub i64 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @os_snprintf_error(i64 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %5, align 8
  br label %64

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %36, %37
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @wpa_snprintf_hex(i8* %35, i64 %38, i32* %39, i32 10)
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %11, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = sub i64 %46, %47
  %49 = call i32 @os_snprintf(i8* %45, i64 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %49, i32* %10, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @os_snprintf_error(i64 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %28
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %5, align 8
  br label %64

58:                                               ; preds = %28
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %58, %56, %26
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i32 @os_snprintf(i8*, i64, i8*) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

declare dso_local i64 @wpa_snprintf_hex(i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
