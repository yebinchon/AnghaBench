; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/tests/extr_legacy_test.c_testdiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/tests/extr_legacy_test.c_testdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c42 = common dso_local global i32 0, align 4
@c5 = common dso_local global i32 0, align 4
@t0 = common dso_local global i32* null, align 8
@t1 = common dso_local global i32* null, align 8
@c8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mdiv0\00", align 1
@c2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mdiv1\00", align 1
@c10 = common dso_local global i32 0, align 4
@c1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"mdiv2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mdiv3\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sdiv0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"sdiv1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sdiv2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"sdiv3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testdiv() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @c42, align 4
  %4 = load i32, i32* @c5, align 4
  %5 = load i32*, i32** @t0, align 8
  %6 = load i32*, i32** @t1, align 8
  %7 = call i32 @mp_mdiv(i32 %3, i32 %4, i32* %5, i32* %6)
  %8 = load i32*, i32** @t0, align 8
  %9 = load i32, i32* @c8, align 4
  %10 = call i32 @testmcmp(i32* %8, i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** @t1, align 8
  %12 = load i32, i32* @c2, align 4
  %13 = call i32 @testmcmp(i32* %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @c10, align 4
  %15 = load i32, i32* @c8, align 4
  %16 = load i32*, i32** @t0, align 8
  %17 = load i32*, i32** @t1, align 8
  %18 = call i32 @mp_mdiv(i32 %14, i32 %15, i32* %16, i32* %17)
  %19 = load i32*, i32** @t0, align 8
  %20 = load i32, i32* @c1, align 4
  %21 = call i32 @testmcmp(i32* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** @t1, align 8
  %23 = load i32, i32* @c2, align 4
  %24 = call i32 @testmcmp(i32* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @c42, align 4
  %26 = load i32*, i32** @t0, align 8
  %27 = call i32 @mp_sdiv(i32 %25, i32 5, i32* %26, i16* %1)
  %28 = load i32*, i32** @t0, align 8
  %29 = load i32, i32* @c8, align 4
  %30 = call i32 @testmcmp(i32* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i16, i16* %1, align 2
  %32 = call i32* @mp_itom(i16 signext %31)
  store i32* %32, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @c2, align 4
  %35 = call i32 @testmcmp(i32* %33, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @mp_mfree(i32* %36)
  %38 = load i32, i32* @c10, align 4
  %39 = load i32*, i32** @t0, align 8
  %40 = call i32 @mp_sdiv(i32 %38, i32 8, i32* %39, i16* %1)
  %41 = load i32*, i32** @t0, align 8
  %42 = load i32, i32* @c1, align 4
  %43 = call i32 @testmcmp(i32* %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i16, i16* %1, align 2
  %45 = call i32* @mp_itom(i16 signext %44)
  store i32* %45, i32** %2, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @c2, align 4
  %48 = call i32 @testmcmp(i32* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @mp_mfree(i32* %49)
  ret void
}

declare dso_local i32 @mp_mdiv(i32, i32, i32*, i32*) #1

declare dso_local i32 @testmcmp(i32*, i32, i8*) #1

declare dso_local i32 @mp_sdiv(i32, i32, i32*, i16*) #1

declare dso_local i32* @mp_itom(i16 signext) #1

declare dso_local i32 @mp_mfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
