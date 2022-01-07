; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_feholdupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_feholdupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@trap_handler = common dso_local global i32 0, align 4
@NEXCEPTS = common dso_local global i32 0, align 4
@std_excepts = common dso_local global i32* null, align 8
@FE_INEXACT = common dso_local global i32 0, align 4
@FE_DIVBYZERO = common dso_local global i32 0, align 4
@FE_INVALID = common dso_local global i32 0, align 4
@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@FE_DOWNWARD = common dso_local global i32 0, align 4
@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@FE_UPWARD = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"child aborted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_feholdupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_feholdupdate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  %9 = call i32 @sigemptyset(i32* %8)
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @trap_handler, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %130, %0
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %133

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %126, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NEXCEPTS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %129

21:                                               ; preds = %17
  %22 = load i32*, i32** @std_excepts, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FE_INEXACT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @FE_DIVBYZERO, align 4
  %32 = load i32, i32* @FE_INVALID, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %21
  %35 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %36 = load i32, i32* %3, align 4
  %37 = xor i32 %35, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i32 (...) @fork()
  switch i32 %39, label %107 [
    i32 0, label %40
    i32 -1, label %123
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @feenableexcept(i32 %44)
  %46 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @raiseexcept(i32 %52)
  %54 = load i32, i32* @FE_DOWNWARD, align 4
  %55 = call i32 @fesetround(i32 %54)
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = call i32 @feholdexcept(i32* %1)
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %64 = call i64 @fetestexcept(i32 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @raiseexcept(i32 %68)
  %70 = load i32, i32* @FE_UPWARD, align 4
  %71 = call i32 @fesetround(i32 %70)
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %51
  %78 = load i32, i32* @SIGFPE, align 4
  %79 = call i32 @sigaction(i32 %78, %struct.sigaction* %2, i32* null)
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %83

83:                                               ; preds = %77, %51
  %84 = call i32 @feupdateenv(i32* %1)
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = call i32 (...) @fegetround()
  %89 = load i32, i32* @FE_DOWNWARD, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %94 = call i64 @fetestexcept(i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %94, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = call i32 @_exit(i32 0) #3
  unreachable

107:                                              ; preds = %38
  %108 = call i32 @wait(i32* %5)
  %109 = icmp sgt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @WIFEXITED(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %107
  %116 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %107
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @WEXITSTATUS(i32 %118)
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  br label %125

123:                                              ; preds = %38
  %124 = call i32 @assert(i32 0)
  br label %125

125:                                              ; preds = %123, %117
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %17

129:                                              ; preds = %17
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %13

133:                                              ; preds = %13
  %134 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %135 = call i64 @fetestexcept(i32 %134)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @feenableexcept(i32) #1

declare dso_local i32 @raiseexcept(i32) #1

declare dso_local i32 @fesetround(i32) #1

declare dso_local i32 @feholdexcept(i32*) #1

declare dso_local i64 @fetestexcept(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @feupdateenv(i32*) #1

declare dso_local i32 @fegetround(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
