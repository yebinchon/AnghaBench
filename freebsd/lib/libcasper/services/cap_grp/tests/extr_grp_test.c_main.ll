; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"1..199\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"system.grp\00", align 1
@SETGRENT = common dso_local global i32 0, align 4
@GETGRENT = common dso_local global i32 0, align 4
@GETGRENT_R = common dso_local global i32 0, align 4
@GETGRNAM = common dso_local global i32 0, align 4
@GETGRNAM_R = common dso_local global i32 0, align 4
@GETGRGID = common dso_local global i32 0, align 4
@GETGRGID_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @fflush(i32 %5)
  %7 = call i32* (...) @cap_init()
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @CHECKX(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @cap_service_open(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @CHECKX(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @cap_close(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @runtest_cmds(i32* %20)
  %22 = load i32, i32* @SETGRENT, align 4
  %23 = load i32, i32* @GETGRENT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @GETGRENT_R, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GETGRNAM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GETGRNAM_R, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GETGRGID, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GETGRGID_R, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %21, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @CHECK(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @test_cmds(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @test_fields(i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @test_groups(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @cap_close(i32* %44)
  %46 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @cap_init(...) #1

declare dso_local i32 @CHECKX(i32) #1

declare dso_local i32* @cap_service_open(i32*, i8*) #1

declare dso_local i32 @cap_close(i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @runtest_cmds(i32*) #1

declare dso_local i32 @test_cmds(i32*) #1

declare dso_local i32 @test_fields(i32*) #1

declare dso_local i32 @test_groups(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
