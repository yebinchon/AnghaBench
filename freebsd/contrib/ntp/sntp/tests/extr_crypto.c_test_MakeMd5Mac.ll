; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_MakeMd5Mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_crypto.c_test_MakeMd5Mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"abcdefgh0123\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Rl\B88\AF\06Z\FBl\98\BB\C0\9B\0Az\1B\00", align 1
@MD5_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"md5seq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_MakeMd5Mac() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.key, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %2, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %9 = load i32, i32* @MD5_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  store i32 10, i32* %14, align 8
  %15 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  store i32 6, i32* %15, align 4
  %16 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 4
  %17 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strlcpy(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %23 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @keytype_from_text(i32 %24, i32* null)
  %26 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @MD5_LENGTH, align 4
  %28 = load i8*, i8** %1, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @MD5_LENGTH, align 4
  %31 = call i32 @make_mac(i8* %28, i32 %29, i32 %30, %struct.key* %6, i8* %12)
  %32 = call i32 @TEST_ASSERT_EQUAL(i32 %27, i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @MD5_LENGTH, align 4
  %35 = call i64 @memcmp(i8* %33, i8* %12, i32 %34)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT_TRUE(i32 %37)
  %39 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %39)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @keytype_from_text(i32, i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @make_mac(i8*, i32, i32, %struct.key*, i8*) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
