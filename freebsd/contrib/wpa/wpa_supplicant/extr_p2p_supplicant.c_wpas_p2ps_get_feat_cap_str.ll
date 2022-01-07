; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2ps_get_feat_cap_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2ps_get_feat_cap_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wpas_p2ps_get_feat_cap_str.pref = internal constant [14 x i8] c" feature_cap=\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"P2PS feature_cap bytes truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*, i64)* @wpas_p2ps_get_feat_cap_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2ps_get_feat_cap_str(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 1
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %4
  br label %40

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @os_memcpy(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wpas_p2ps_get_feat_cap_str.pref, i64 0, i64 0), i32 14)
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 13
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, 14
  %28 = add i64 %27, 1
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @wpa_snprintf_hex(i8* %25, i64 %28, i32* %29, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 2, %34
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @MSG_WARNING, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %20, %37, %21
  ret void
}

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i64, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
