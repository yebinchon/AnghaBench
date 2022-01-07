; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_handshake_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_handshake_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hello request\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"client hello\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"server hello\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hello verify request\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"new session ticket\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"end of early data\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"hello retry request\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"encrypted extensions\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"server key exchange\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"certificate request\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"server hello done\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"certificate verify\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"client key exchange\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"finished\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"certificate url\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"certificate status\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"supplemental data\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"key update\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"message hash\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i64)* @openssl_handshake_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @openssl_handshake_type(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 257
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @openssl_content_type(i32 %19)
  store i8* %20, i8** %4, align 8
  br label %56

21:                                               ; preds = %13, %10, %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 22
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %56

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %55 [
    i32 0, label %35
    i32 1, label %36
    i32 2, label %37
    i32 3, label %38
    i32 4, label %39
    i32 5, label %40
    i32 6, label %41
    i32 8, label %42
    i32 11, label %43
    i32 12, label %44
    i32 13, label %45
    i32 14, label %46
    i32 15, label %47
    i32 16, label %48
    i32 20, label %49
    i32 21, label %50
    i32 22, label %51
    i32 23, label %52
    i32 24, label %53
    i32 254, label %54
  ]

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %56

36:                                               ; preds = %31
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %56

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %56

38:                                               ; preds = %31
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %56

39:                                               ; preds = %31
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %56

40:                                               ; preds = %31
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %56

41:                                               ; preds = %31
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %56

42:                                               ; preds = %31
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %56

43:                                               ; preds = %31
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %56

44:                                               ; preds = %31
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %56

45:                                               ; preds = %31
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %56

46:                                               ; preds = %31
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %56

47:                                               ; preds = %31
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %56

48:                                               ; preds = %31
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  br label %56

49:                                               ; preds = %31
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %56

50:                                               ; preds = %31
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  br label %56

51:                                               ; preds = %31
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8** %4, align 8
  br label %56

52:                                               ; preds = %31
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %56

53:                                               ; preds = %31
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %4, align 8
  br label %56

54:                                               ; preds = %31
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8** %4, align 8
  br label %56

55:                                               ; preds = %31
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8** %4, align 8
  br label %56

56:                                               ; preds = %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %30, %16
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i8* @openssl_content_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
