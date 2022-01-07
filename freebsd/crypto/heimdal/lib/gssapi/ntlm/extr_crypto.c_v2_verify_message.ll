; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c_v2_verify_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c_v2_verify_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_S_BAD_MIC = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32*, i32, i8*)* @v2_verify_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @v2_verify_message(i32 %0, i8* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [16 x i8], align 16
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %19 = call i64 @v2_sign_message(i32 %14, i8* %15, i32* %16, i32 %17, i8* %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* %12, align 8
  store i64 %23, i64* %6, align 8
  br label %33

24:                                               ; preds = %5
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %27 = call i64 @memcmp(i8* %25, i8* %26, i32 16)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %30, i64* %6, align 8
  br label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %31, %29, %22
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

declare dso_local i64 @v2_sign_message(i32, i8*, i32*, i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
