; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_match_dn_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_match_dn_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_dn_field_order_cnt = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"OpenSSL: Too long DN matching field value in '%s'\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"OpenSSL: No match for DN '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @tls_match_dn_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_match_dn_field(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca %struct.tls_dn_field_order_cnt, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %10 = call i32 @os_memset(%struct.tls_dn_field_order_cnt* %9, i32 0, i32 4)
  br label %11

11:                                               ; preds = %50, %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @cstr_token(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %13, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp sge i64 %20, 256
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @MSG_ERROR, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 0, i32* %3, align 4
  br label %52

26:                                               ; preds = %15
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @os_memcpy(i8* %27, i8* %28, i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %44 = call i32 @get_value_from_field(i32* %42, i8* %43, %struct.tls_dn_field_order_cnt* %9)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %26
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %49 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 0, i32* %3, align 4
  br label %52

50:                                               ; preds = %26
  br label %11

51:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %46, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @os_memset(%struct.tls_dn_field_order_cnt*, i32, i32) #1

declare dso_local i8* @cstr_token(i8*, i8*, i8**) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @get_value_from_field(i32*, i8*, %struct.tls_dn_field_order_cnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
