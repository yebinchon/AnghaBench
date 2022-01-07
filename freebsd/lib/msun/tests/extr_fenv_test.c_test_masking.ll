; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_masking.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_masking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@FE_INVALID = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@trap_handler = common dso_local global i32 0, align 4
@NEXCEPTS = common dso_local global i32 0, align 4
@std_excepts = common dso_local global i32* null, align 8
@FE_INEXACT = common dso_local global i32 0, align 4
@FE_DIVBYZERO = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"child aborted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_masking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_masking() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @fegetexcept()
  %8 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @FE_INVALID, align 4
  %14 = load i32, i32* @FE_OVERFLOW, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @feenableexcept(i32 %15)
  %17 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @FE_UNDERFLOW, align 4
  %23 = call i32 @feenableexcept(i32 %22)
  %24 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @FE_INVALID, align 4
  %27 = load i32, i32* @FE_OVERFLOW, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @FE_OVERFLOW, align 4
  %33 = call i32 @fedisableexcept(i32 %32)
  %34 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @FE_INVALID, align 4
  %37 = load i32, i32* @FE_OVERFLOW, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FE_UNDERFLOW, align 4
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %35, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = call i32 (...) @fegetexcept()
  %45 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @FE_INVALID, align 4
  %48 = load i32, i32* @FE_UNDERFLOW, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %54 = call i32 @fedisableexcept(i32 %53)
  %55 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @FE_INVALID, align 4
  %58 = load i32, i32* @FE_UNDERFLOW, align 4
  %59 = or i32 %57, %58
  %60 = icmp eq i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = call i32 (...) @fegetexcept()
  %64 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  %70 = call i32 @sigemptyset(i32* %69)
  %71 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @trap_handler, align 4
  %73 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %173, %0
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %176

77:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %169, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @NEXCEPTS, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %172

82:                                               ; preds = %78
  %83 = load i32*, i32** @std_excepts, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @FE_INEXACT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* @FE_DIVBYZERO, align 4
  %93 = load i32, i32* @FE_INVALID, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %4, align 4
  br label %99

95:                                               ; preds = %82
  %96 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %97 = load i32, i32* %2, align 4
  %98 = xor i32 %96, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = call i32 (...) @fork()
  switch i32 %100, label %150 [
    i32 0, label %101
    i32 -1, label %166
  ]

101:                                              ; preds = %99
  %102 = call i32 (...) @fegetexcept()
  %103 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @feenableexcept(i32 %108)
  %110 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = call i32 (...) @fegetexcept()
  %116 = load i32, i32* %2, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @raiseexcept(i32 %120)
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @feraiseexcept(i32 %122)
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %128 = call i64 @fetestexcept(i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp eq i64 %128, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* @SIGFPE, align 4
  %135 = call i32 @sigaction(i32 %134, %struct.sigaction* %1, i32* null)
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32, i32* %3, align 4
  switch i32 %139, label %146 [
    i32 0, label %140
    i32 1, label %143
  ]

140:                                              ; preds = %101
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @raiseexcept(i32 %141)
  br label %143

143:                                              ; preds = %101, %140
  %144 = load i32, i32* %2, align 4
  %145 = call i32 @feraiseexcept(i32 %144)
  br label %146

146:                                              ; preds = %101, %143
  %147 = call i32 @assert(i32 0)
  br label %148

148:                                              ; preds = %146
  %149 = call i32 @assert(i32 0)
  br label %150

150:                                              ; preds = %99, %148
  %151 = call i32 @wait(i32* %5)
  %152 = icmp sgt i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @WIFEXITED(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %150
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @WEXITSTATUS(i32 %161)
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  br label %168

166:                                              ; preds = %99
  %167 = call i32 @assert(i32 0)
  br label %168

168:                                              ; preds = %166, %160
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %6, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %78

172:                                              ; preds = %78
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %74

176:                                              ; preds = %74
  %177 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %178 = call i64 @fetestexcept(i32 %177)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fegetexcept(...) #1

declare dso_local i32 @feenableexcept(i32) #1

declare dso_local i32 @fedisableexcept(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @raiseexcept(i32) #1

declare dso_local i32 @feraiseexcept(i32) #1

declare dso_local i64 @fetestexcept(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
