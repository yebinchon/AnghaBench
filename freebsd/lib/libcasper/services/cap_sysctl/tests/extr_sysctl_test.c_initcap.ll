; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/tests/extr_sysctl_test.c_initcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/tests/extr_sysctl_test.c_initcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL0_NAME = common dso_local global i32 0, align 4
@SYSCTL0_FILE = common dso_local global i32 0, align 4
@SYSCTL1_NAME = common dso_local global i32 0, align 4
@SYSCTL1_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"system.sysctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @initcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @initcap() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @SYSCTL0_NAME, align 4
  %4 = load i32, i32* @SYSCTL0_FILE, align 4
  %5 = call i32 @save_int_sysctl(i32 %3, i32 %4)
  %6 = load i32, i32* @SYSCTL1_NAME, align 4
  %7 = load i32, i32* @SYSCTL1_FILE, align 4
  %8 = call i32 @save_int_sysctl(i32 %6, i32 %7)
  %9 = call i32* (...) @cap_init()
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ATF_REQUIRE(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32* @cap_service_open(i32* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ATF_REQUIRE(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @cap_close(i32* %20)
  %22 = load i32*, i32** %2, align 8
  ret i32* %22
}

declare dso_local i32 @save_int_sysctl(i32, i32) #1

declare dso_local i32* @cap_init(...) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32* @cap_service_open(i32*, i8*) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
