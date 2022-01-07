; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_VerifyCMAC.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_VerifyCMAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i64, i32, i64, i32* }

@.str = private unnamed_addr constant [33 x i8] c"sometestdata\00\00\00\00N\0C\F0\E2\C7\8E\BB\BFy\FC\87\C7\8B\B7J\0B\00", align 1
@CMAC_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"aes-128-cmac-key\00", align 1
@CMAC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_VerifyCMAC() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.key, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 12, i32* %2, align 4
  %4 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 4
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 3
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* @CMAC_LENGTH, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 1
  store i64 %6, i64* %7, align 8
  %8 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @memcpy(i32* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %10)
  %12 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 0
  %13 = load i8*, i8** @CMAC, align 8
  %14 = load i8*, i8** @CMAC, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %15, 1
  %17 = call i32 @memcpy(i32* %12, i8* %13, i64 %16)
  %18 = call i32 @VerifyOpenSSLCMAC(%struct.key* %3)
  %19 = call i32 @VerifyLocalCMAC(%struct.key* %3)
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @VerifyOpenSSLCMAC(%struct.key*) #1

declare dso_local i32 @VerifyLocalCMAC(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
