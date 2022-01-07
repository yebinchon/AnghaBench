; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_run-crypto.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_run-crypto.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"crypto.c\00", align 1
@test_MakeMd5Mac = common dso_local global i32 0, align 4
@test_MakeSHA1Mac = common dso_local global i32 0, align 4
@test_MakeCMac = common dso_local global i32 0, align 4
@test_VerifyCorrectMD5 = common dso_local global i32 0, align 4
@test_VerifySHA1 = common dso_local global i32 0, align 4
@test_VerifyCMAC = common dso_local global i32 0, align 4
@test_VerifyFailure = common dso_local global i32 0, align 4
@test_PacketSizeNotMultipleOfFourBytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** @progname, align 8
  %9 = call i32 (...) @suite_setup()
  %10 = call i32 @UnityBegin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @test_MakeMd5Mac, align 4
  %12 = call i32 @RUN_TEST(i32 %11, i32 15)
  %13 = load i32, i32* @test_MakeSHA1Mac, align 4
  %14 = call i32 @RUN_TEST(i32 %13, i32 16)
  %15 = load i32, i32* @test_MakeCMac, align 4
  %16 = call i32 @RUN_TEST(i32 %15, i32 17)
  %17 = load i32, i32* @test_VerifyCorrectMD5, align 4
  %18 = call i32 @RUN_TEST(i32 %17, i32 18)
  %19 = load i32, i32* @test_VerifySHA1, align 4
  %20 = call i32 @RUN_TEST(i32 %19, i32 19)
  %21 = load i32, i32* @test_VerifyCMAC, align 4
  %22 = call i32 @RUN_TEST(i32 %21, i32 20)
  %23 = load i32, i32* @test_VerifyFailure, align 4
  %24 = call i32 @RUN_TEST(i32 %23, i32 21)
  %25 = load i32, i32* @test_PacketSizeNotMultipleOfFourBytes, align 4
  %26 = call i32 @RUN_TEST(i32 %25, i32 22)
  %27 = call i32 (...) @UnityEnd()
  ret i32 %27
}

declare dso_local i32 @suite_setup(...) #1

declare dso_local i32 @UnityBegin(i8*) #1

declare dso_local i32 @RUN_TEST(i32, i32) #1

declare dso_local i32 @UnityEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
