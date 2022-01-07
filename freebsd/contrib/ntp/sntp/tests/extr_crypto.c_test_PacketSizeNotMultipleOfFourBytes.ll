; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_PacketSizeNotMultipleOfFourBytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_PacketSizeNotMultipleOfFourBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@MD5_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"md5seq\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_PacketSizeNotMultipleOfFourBytes() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.key, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 6, i32* %2, align 4
  %6 = load i32, i32* @MD5_LENGTH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 5
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 0
  store i32 10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 1
  store i32 6, i32* %12, align 4
  %13 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 4
  %14 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcpy(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @strlcpy(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %20 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @keytype_from_text(i32 %21, i32* null)
  %23 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %1, align 8
  %25 = load i32, i32* @MD5_LENGTH, align 4
  %26 = call i32 @make_mac(i8* %24, i32 6, i32 %25, %struct.key* %5, i8* %9)
  %27 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %26)
  %28 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %28)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @keytype_from_text(i32, i32*) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @make_mac(i8*, i32, i32, %struct.key*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
