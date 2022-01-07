; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_debug_print_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_debug_print_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wpa_debug_show_keys = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s (%s,%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @dpp_debug_print_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp_debug_print_point(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* @wpa_debug_show_keys, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %64

15:                                               ; preds = %3
  %16 = call i32* (...) @BN_CTX_new()
  store i32* %16, i32** %9, align 8
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %7, align 8
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @EC_POINT_get_affine_coordinates_GFp(i32* %28, i32* %29, i32* %30, i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %24, %21, %15
  br label %53

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = call i8* @BN_bn2hex(i32* %37)
  store i8* %38, i8** %10, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i8* @BN_bn2hex(i32* %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %36
  br label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %47, %46, %35
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @OPENSSL_free(i8* %54)
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @OPENSSL_free(i8* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @BN_free(i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @BN_free(i32* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @BN_CTX_free(i32* %62)
  br label %64

64:                                               ; preds = %53, %14
  ret void
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates_GFp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @BN_bn2hex(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
