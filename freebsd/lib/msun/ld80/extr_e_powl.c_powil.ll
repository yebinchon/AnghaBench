; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c_powil.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c_powil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDBL_MAX = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@LOGE2L = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@MAXLOGL = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@huge = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@MINLOGL = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@twom10000 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, i32)* @powil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @powil(x86_fp80 %0, i32 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32, align 4
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store i32 %1, i32* %5, align 4
  %14 = load x86_fp80, x86_fp80* %4, align 16
  %15 = fcmp oeq x86_fp80 %14, 0xK00000000000000000000
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %3, align 16
  br label %152

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load x86_fp80, x86_fp80* @LDBL_MAX, align 16
  store x86_fp80 %24, x86_fp80* %3, align 16
  br label %152

25:                                               ; preds = %20
  store x86_fp80 0xK00000000000000000000, x86_fp80* %3, align 16
  br label %152

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %3, align 16
  br label %152

30:                                               ; preds = %26
  %31 = load x86_fp80, x86_fp80* %4, align 16
  %32 = fcmp olt x86_fp80 %31, 0xK00000000000000000000
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  store i32 -1, i32* %12, align 4
  %34 = load x86_fp80, x86_fp80* %4, align 16
  %35 = fneg x86_fp80 %34
  store x86_fp80 %35, x86_fp80* %4, align 16
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  store i32 -1, i32* %11, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %45

43:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %46, x86_fp80* %8, align 16
  %47 = load x86_fp80, x86_fp80* %8, align 16
  %48 = call x86_fp80 @frexpl(x86_fp80 %47, i32* %13) #2
  store x86_fp80 %48, x86_fp80* %8, align 16
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 64
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, -64
  br i1 %60, label %61, label %78

61:                                               ; preds = %58, %55, %45
  %62 = load x86_fp80, x86_fp80* %8, align 16
  %63 = fsub x86_fp80 %62, 0xK3FFEB504F333F9DE6433
  %64 = load x86_fp80, x86_fp80* %8, align 16
  %65 = fadd x86_fp80 %64, 0xK3FFEB504F333F9DE6433
  %66 = fdiv x86_fp80 %63, %65
  store x86_fp80 %66, x86_fp80* %8, align 16
  %67 = load x86_fp80, x86_fp80* %8, align 16
  %68 = fmul x86_fp80 0xK4000BA827999FCEF3161, %67
  %69 = fsub x86_fp80 %68, 0xK3FFE8000000000000000
  %70 = load i32, i32* %13, align 4
  %71 = sitofp i32 %70 to x86_fp80
  %72 = fadd x86_fp80 %69, %71
  %73 = load i32, i32* %5, align 4
  %74 = sitofp i32 %73 to x86_fp80
  %75 = fmul x86_fp80 %72, %74
  %76 = load x86_fp80, x86_fp80* @LOGE2L, align 16
  %77 = fmul x86_fp80 %75, %76
  store x86_fp80 %77, x86_fp80* %8, align 16
  br label %83

78:                                               ; preds = %58
  %79 = load x86_fp80, x86_fp80* @LOGE2L, align 16
  %80 = load i32, i32* %10, align 4
  %81 = sitofp i32 %80 to x86_fp80
  %82 = fmul x86_fp80 %79, %81
  store x86_fp80 %82, x86_fp80* %8, align 16
  br label %83

83:                                               ; preds = %78, %61
  %84 = load x86_fp80, x86_fp80* %8, align 16
  %85 = load x86_fp80, x86_fp80* @MAXLOGL, align 16
  %86 = fcmp ogt x86_fp80 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load x86_fp80, x86_fp80* @huge, align 16
  %89 = load x86_fp80, x86_fp80* @huge, align 16
  %90 = fmul x86_fp80 %88, %89
  store x86_fp80 %90, x86_fp80* %3, align 16
  br label %152

91:                                               ; preds = %83
  %92 = load x86_fp80, x86_fp80* %8, align 16
  %93 = load x86_fp80, x86_fp80* @MINLOGL, align 16
  %94 = fcmp olt x86_fp80 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load x86_fp80, x86_fp80* @twom10000, align 16
  %97 = load x86_fp80, x86_fp80* @twom10000, align 16
  %98 = fmul x86_fp80 %96, %97
  store x86_fp80 %98, x86_fp80* %3, align 16
  br label %152

99:                                               ; preds = %91
  %100 = load x86_fp80, x86_fp80* %8, align 16
  %101 = load x86_fp80, x86_fp80* @MAXLOGL, align 16
  %102 = fneg x86_fp80 %101
  %103 = fadd x86_fp80 %102, 0xK40008000000000000000
  %104 = fcmp olt x86_fp80 %100, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load x86_fp80, x86_fp80* %4, align 16
  %107 = fdiv x86_fp80 0xK3FFF8000000000000000, %106
  store x86_fp80 %107, x86_fp80* %4, align 16
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %105, %99
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %115, x86_fp80* %7, align 16
  br label %117

116:                                              ; preds = %110
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %7, align 16
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %116, %114
  %118 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %118, x86_fp80* %6, align 16
  %119 = load i32, i32* %9, align 4
  %120 = ashr i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %135, %117
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load x86_fp80, x86_fp80* %6, align 16
  %126 = load x86_fp80, x86_fp80* %6, align 16
  %127 = fmul x86_fp80 %125, %126
  store x86_fp80 %127, x86_fp80* %6, align 16
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load x86_fp80, x86_fp80* %6, align 16
  %133 = load x86_fp80, x86_fp80* %7, align 16
  %134 = fmul x86_fp80 %133, %132
  store x86_fp80 %134, x86_fp80* %7, align 16
  br label %135

135:                                              ; preds = %131, %124
  %136 = load i32, i32* %9, align 4
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %121

138:                                              ; preds = %121
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load x86_fp80, x86_fp80* %7, align 16
  %143 = fneg x86_fp80 %142
  store x86_fp80 %143, x86_fp80* %7, align 16
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load x86_fp80, x86_fp80* %7, align 16
  %149 = fdiv x86_fp80 0xK3FFF8000000000000000, %148
  store x86_fp80 %149, x86_fp80* %7, align 16
  br label %150

150:                                              ; preds = %147, %144
  %151 = load x86_fp80, x86_fp80* %7, align 16
  store x86_fp80 %151, x86_fp80* %3, align 16
  br label %152

152:                                              ; preds = %150, %95, %87, %29, %25, %23, %19
  %153 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %153
}

; Function Attrs: nounwind
declare dso_local x86_fp80 @frexpl(x86_fp80, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
