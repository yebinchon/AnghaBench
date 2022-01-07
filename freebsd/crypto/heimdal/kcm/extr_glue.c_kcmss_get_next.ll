; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_glue.c_kcmss_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_glue.c_kcmss_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_creds = type { i64, i32 }

@KRB5_CC_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*, i32*)* @kcmss_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcmss_get_next(i32 %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @KCMCACHE(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @KCM_ASSERT_VALID(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i64*, i64** %8, align 8
  %18 = bitcast i64* %17 to %struct.kcm_creds*
  %19 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %18, i32 0, i32 1
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @krb5_copy_creds_contents(i32 %16, i32* %19, i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %5, align 8
  br label %39

26:                                               ; preds = %4
  %27 = load i64*, i64** %8, align 8
  %28 = bitcast i64* %27 to %struct.kcm_creds*
  %29 = getelementptr inbounds %struct.kcm_creds, %struct.kcm_creds* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @KRB5_CC_END, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %35, %26
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local i32 @KCMCACHE(i32) #1

declare dso_local i32 @KCM_ASSERT_VALID(i32) #1

declare dso_local i64 @krb5_copy_creds_contents(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
