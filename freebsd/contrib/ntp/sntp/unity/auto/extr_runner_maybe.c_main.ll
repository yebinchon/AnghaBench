; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/auto/extr_runner_maybe.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/auto/extr_runner_maybe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"../ut-2803.c\00", align 1
@Unity = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@test_main = common dso_local global i32 0, align 4
@test_custom = common dso_local global i32 0, align 4
@test_custom25 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 8
  %2 = call i32 (...) @UnityBegin()
  %3 = load i32, i32* @test_main, align 4
  %4 = call i32 @RUN_TEST(i32 %3, i32 29)
  %5 = load i32, i32* @test_custom, align 4
  %6 = call i32 @RUN_TEST(i32 %5, i32 34)
  %7 = load i32, i32* @test_custom25, align 4
  %8 = call i32 @RUN_TEST(i32 %7, i32 43)
  %9 = call i32 (...) @UnityEnd()
  ret i32 %9
}

declare dso_local i32 @UnityBegin(...) #1

declare dso_local i32 @RUN_TEST(i32, i32) #1

declare dso_local i32 @UnityEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
