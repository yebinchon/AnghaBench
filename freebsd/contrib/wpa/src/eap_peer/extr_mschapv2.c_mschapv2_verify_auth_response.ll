; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_mschapv2.c_mschapv2_verify_auth_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_mschapv2.c_mschapv2_verify_auth_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSCHAPV2_AUTH_RESPONSE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mschapv2_verify_auth_response(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @MSCHAPV2_AUTH_RESPONSE_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @MSCHAPV2_AUTH_RESPONSE_LEN, align 4
  %17 = mul nsw i32 2, %16
  %18 = add nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %44, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 83
  br i1 %26, label %44, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 61
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i32, i32* @MSCHAPV2_AUTH_RESPONSE_LEN, align 4
  %37 = call i64 @hexstr2bin(i8* %35, i8* %14, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @MSCHAPV2_AUTH_RESPONSE_LEN, align 4
  %42 = call i64 @os_memcmp_const(i8* %40, i8* %14, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %33, %27, %21, %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hexstr2bin(i8*, i8*, i32) #2

declare dso_local i64 @os_memcmp_const(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
