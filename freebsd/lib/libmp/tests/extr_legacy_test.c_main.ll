; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/tests/extr_legacy_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/tests/extr_legacy_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..25\0A\00", align 1
@c0 = common dso_local global i32 0, align 4
@c1 = common dso_local global i32 0, align 4
@c2 = common dso_local global i32 0, align 4
@c3 = common dso_local global i32 0, align 4
@c5 = common dso_local global i32 0, align 4
@c6 = common dso_local global i32 0, align 4
@c8 = common dso_local global i32 0, align 4
@c10 = common dso_local global i32 0, align 4
@c14 = common dso_local global i32 0, align 4
@c15 = common dso_local global i32 0, align 4
@c25 = common dso_local global i32 0, align 4
@c42 = common dso_local global i32 0, align 4
@c43 = common dso_local global i32 0, align 4
@c44 = common dso_local global i32 0, align 4
@c45 = common dso_local global i32 0, align 4
@t0 = common dso_local global i32 0, align 4
@t1 = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @mp_itom(i32 0)
  store i32 %7, i32* @c0, align 4
  %8 = call i32 @mp_itom(i32 1)
  store i32 %8, i32* @c1, align 4
  %9 = call i32 @mp_itom(i32 2)
  store i32 %9, i32* @c2, align 4
  %10 = call i32 @mp_itom(i32 3)
  store i32 %10, i32* @c3, align 4
  %11 = call i32 @mp_itom(i32 5)
  store i32 %11, i32* @c5, align 4
  %12 = call i32 @mp_itom(i32 6)
  store i32 %12, i32* @c6, align 4
  %13 = call i32 @mp_itom(i32 8)
  store i32 %13, i32* @c8, align 4
  %14 = call i32 @mp_itom(i32 10)
  store i32 %14, i32* @c10, align 4
  %15 = call i32 @mp_itom(i32 14)
  store i32 %15, i32* @c14, align 4
  %16 = call i32 @mp_itom(i32 15)
  store i32 %16, i32* @c15, align 4
  %17 = call i32 @mp_itom(i32 25)
  store i32 %17, i32* @c25, align 4
  %18 = call i32 @mp_itom(i32 42)
  store i32 %18, i32* @c42, align 4
  %19 = call i32 @mp_itom(i32 43)
  store i32 %19, i32* @c43, align 4
  %20 = call i32 @mp_itom(i32 44)
  store i32 %20, i32* @c44, align 4
  %21 = call i32 @mp_itom(i32 45)
  store i32 %21, i32* @c45, align 4
  %22 = call i32 @mp_itom(i32 0)
  store i32 %22, i32* @t0, align 4
  %23 = call i32 @mp_itom(i32 0)
  store i32 %23, i32* @t1, align 4
  %24 = call i32 (...) @testsimpel()
  %25 = call i32 (...) @testgcd()
  %26 = call i32 (...) @testdiv()
  %27 = call i32 (...) @testmult()
  %28 = call i32 (...) @testpow()
  %29 = call i32 (...) @testmsqrt()
  %30 = load i32, i32* @c0, align 4
  %31 = call i32 @mp_mfree(i32 %30)
  %32 = load i32, i32* @c1, align 4
  %33 = call i32 @mp_mfree(i32 %32)
  %34 = load i32, i32* @c2, align 4
  %35 = call i32 @mp_mfree(i32 %34)
  %36 = load i32, i32* @c3, align 4
  %37 = call i32 @mp_mfree(i32 %36)
  %38 = load i32, i32* @c5, align 4
  %39 = call i32 @mp_mfree(i32 %38)
  %40 = load i32, i32* @c6, align 4
  %41 = call i32 @mp_mfree(i32 %40)
  %42 = load i32, i32* @c8, align 4
  %43 = call i32 @mp_mfree(i32 %42)
  %44 = load i32, i32* @c10, align 4
  %45 = call i32 @mp_mfree(i32 %44)
  %46 = load i32, i32* @c14, align 4
  %47 = call i32 @mp_mfree(i32 %46)
  %48 = load i32, i32* @c15, align 4
  %49 = call i32 @mp_mfree(i32 %48)
  %50 = load i32, i32* @c25, align 4
  %51 = call i32 @mp_mfree(i32 %50)
  %52 = load i32, i32* @c42, align 4
  %53 = call i32 @mp_mfree(i32 %52)
  %54 = load i32, i32* @c43, align 4
  %55 = call i32 @mp_mfree(i32 %54)
  %56 = load i32, i32* @c44, align 4
  %57 = call i32 @mp_mfree(i32 %56)
  %58 = load i32, i32* @c45, align 4
  %59 = call i32 @mp_mfree(i32 %58)
  %60 = load i32, i32* @t0, align 4
  %61 = call i32 @mp_mfree(i32 %60)
  %62 = load i32, i32* @t1, align 4
  %63 = call i32 @mp_mfree(i32 %62)
  %64 = load i32, i32* @EX_OK, align 4
  ret i32 %64
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mp_itom(i32) #1

declare dso_local i32 @testsimpel(...) #1

declare dso_local i32 @testgcd(...) #1

declare dso_local i32 @testdiv(...) #1

declare dso_local i32 @testmult(...) #1

declare dso_local i32 @testpow(...) #1

declare dso_local i32 @testmsqrt(...) #1

declare dso_local i32 @mp_mfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
