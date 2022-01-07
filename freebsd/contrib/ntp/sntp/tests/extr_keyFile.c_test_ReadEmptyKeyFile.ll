; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_keyFile.c_test_ReadEmptyKeyFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_keyFile.c_test_ReadEmptyKeyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"key-test-empty\00", align 1
@INPUT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ReadEmptyKeyFile() #0 {
  %1 = alloca %struct.key*, align 8
  %2 = alloca i8*, align 8
  store %struct.key* null, %struct.key** %1, align 8
  %3 = load i32, i32* @INPUT_DIR, align 4
  %4 = call i8* @CreatePath(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @TEST_ASSERT_NOT_NULL(i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @auth_init(i8* %7, %struct.key** %1)
  %9 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %8)
  %10 = load %struct.key*, %struct.key** %1, align 8
  %11 = call i32 @TEST_ASSERT_NULL(%struct.key* %10)
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @DestroyPath(i8* %12)
  ret void
}

declare dso_local i8* @CreatePath(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @auth_init(i8*, %struct.key**) #1

declare dso_local i32 @TEST_ASSERT_NULL(%struct.key*) #1

declare dso_local i32 @DestroyPath(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
