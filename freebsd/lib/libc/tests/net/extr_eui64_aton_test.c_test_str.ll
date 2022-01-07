; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/net/extr_eui64_aton_test.c_test_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/net/extr_eui64_aton_test.c_test_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eui64 = type { i32 }

@EUI64_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"eui64_aton failed\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"eui64_aton(\22%s\22, ..) failed; memcmp returned %d. String obtained form eui64_ntoa was: `%s`\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.eui64*)* @test_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_str(i8* %0, %struct.eui64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eui64*, align 8
  %5 = alloca %struct.eui64, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.eui64* %1, %struct.eui64** %4, align 8
  %9 = load i32, i32* @EUI64_SIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @eui64_aton(i8* %13, %struct.eui64* %5)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ATF_REQUIRE_MSG(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.eui64*, %struct.eui64** %4, align 8
  %19 = call i32 @memcmp(%struct.eui64* %5, %struct.eui64* %18, i32 4)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = trunc i64 %10 to i32
  %24 = call i32 @eui64_ntoa(%struct.eui64* %5, i8* %12, i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26, i8* %12)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %29)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*) #2

declare dso_local i64 @eui64_aton(i8*, %struct.eui64*) #2

declare dso_local i32 @memcmp(%struct.eui64*, %struct.eui64*, i32) #2

declare dso_local i32 @eui64_ntoa(%struct.eui64*, i8*, i32) #2

declare dso_local i32 @atf_tc_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
