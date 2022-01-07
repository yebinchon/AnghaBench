; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_set_pubkey_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_set_pubkey_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DPP: Could not get EC_KEY from group_key\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DPP: Could not get EC group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64)* @dpp_set_pubkey_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpp_set_pubkey_point(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = and i64 %11, 1
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %45

23:                                               ; preds = %15
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @EC_KEY_get0_group(i32* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = udiv i64 %32, 2
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i64, i64* %7, align 8
  %36 = udiv i64 %35, 2
  %37 = call i32* @dpp_set_pubkey_point_group(i32* %29, i32* %30, i32* %34, i64 %36)
  store i32* %37, i32** %10, align 8
  br label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @MSG_ERROR, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @EC_KEY_free(i32* %42)
  %44 = load i32*, i32** %10, align 8
  store i32* %44, i32** %4, align 8
  br label %45

45:                                               ; preds = %41, %20, %14
  %46 = load i32*, i32** %4, align 8
  ret i32* %46
}

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @dpp_set_pubkey_point_group(i32*, i32*, i32*, i64) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
