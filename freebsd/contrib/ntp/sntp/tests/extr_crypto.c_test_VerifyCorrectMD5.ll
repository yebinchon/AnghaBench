; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_VerifyCorrectMD5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_VerifyCorrectMD5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, i32, i32, i64, i32* }

@.str = private unnamed_addr constant [33 x i8] c"sometestdata\00\00\00\00\C7X\99\DD\992\0Fq+{\FEO\A22\CF\AC\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"md5key\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@MD5_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_VerifyCorrectMD5() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.key, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 12, i32* %2, align 4
  %4 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 5
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 0
  store i32 6, i32* %6, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @memcpy(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strlcpy(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %14 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @keytype_from_text(i32 %15, i32* null)
  %17 = getelementptr inbounds %struct.key, %struct.key* %3, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* @MD5_LENGTH, align 4
  %20 = call i32 @auth_md5(i8* %18, i32 12, i32 %19, %struct.key* %3)
  %21 = call i32 @TEST_ASSERT_TRUE(i32 %20)
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @keytype_from_text(i32, i32*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @auth_md5(i8*, i32, i32, %struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
