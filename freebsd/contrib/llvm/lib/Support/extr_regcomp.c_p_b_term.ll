; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_b_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_b_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }

@REG_ERANGE = common dso_local global i32 0, align 4
@REG_EBRACK = common dso_local global i32 0, align 4
@REG_ECTYPE = common dso_local global i32 0, align 4
@REG_ECOLLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @p_b_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_b_term(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32 (...) @MORE()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @PEEK()
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  switch i32 %15, label %29 [
    i32 91, label %16
    i32 45, label %26
  ]

16:                                               ; preds = %14
  %17 = call i32 (...) @MORE2()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call signext i8 (...) @PEEK2()
  %21 = sext i8 %20 to i32
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  br label %30

26:                                               ; preds = %14
  %27 = load i32, i32* @REG_ERANGE, align 4
  %28 = call i32 @SETERROR(i32 %27)
  br label %136

29:                                               ; preds = %14
  store i8 0, i8* %5, align 1
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %89 [
    i32 58, label %33
    i32 61, label %61
  ]

33:                                               ; preds = %30
  %34 = call i32 (...) @NEXT2()
  %35 = call i32 (...) @MORE()
  %36 = load i32, i32* @REG_EBRACK, align 4
  %37 = call i32 @REQUIRE(i32 %35, i32 %36)
  %38 = call i32 (...) @PEEK()
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %5, align 1
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i8, i8* %5, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 93
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi i1 [ false, %33 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @REG_ECTYPE, align 4
  %51 = call i32 @REQUIRE(i32 %49, i32 %50)
  %52 = load %struct.parse*, %struct.parse** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @p_b_cclass(%struct.parse* %52, i32* %53)
  %55 = call i32 (...) @MORE()
  %56 = load i32, i32* @REG_EBRACK, align 4
  %57 = call i32 @REQUIRE(i32 %55, i32 %56)
  %58 = call i32 @EATTWO(i8 signext 58, i8 signext 93)
  %59 = load i32, i32* @REG_ECTYPE, align 4
  %60 = call i32 @REQUIRE(i32 %58, i32 %59)
  br label %136

61:                                               ; preds = %30
  %62 = call i32 (...) @NEXT2()
  %63 = call i32 (...) @MORE()
  %64 = load i32, i32* @REG_EBRACK, align 4
  %65 = call i32 @REQUIRE(i32 %63, i32 %64)
  %66 = call i32 (...) @PEEK()
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %5, align 1
  %68 = load i8, i8* %5, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 45
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load i8, i8* %5, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 93
  br label %75

75:                                               ; preds = %71, %61
  %76 = phi i1 [ false, %61 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* @REG_ECOLLATE, align 4
  %79 = call i32 @REQUIRE(i32 %77, i32 %78)
  %80 = load %struct.parse*, %struct.parse** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @p_b_eclass(%struct.parse* %80, i32* %81)
  %83 = call i32 (...) @MORE()
  %84 = load i32, i32* @REG_EBRACK, align 4
  %85 = call i32 @REQUIRE(i32 %83, i32 %84)
  %86 = call i32 @EATTWO(i8 signext 61, i8 signext 93)
  %87 = load i32, i32* @REG_ECOLLATE, align 4
  %88 = call i32 @REQUIRE(i32 %86, i32 %87)
  br label %136

89:                                               ; preds = %30
  %90 = load %struct.parse*, %struct.parse** %3, align 8
  %91 = call signext i8 @p_b_symbol(%struct.parse* %90)
  store i8 %91, i8* %6, align 1
  %92 = call i32 @SEE(i8 signext 45)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = call i32 (...) @MORE2()
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = call signext i8 (...) @PEEK2()
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 93
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = call i32 (...) @NEXT()
  %103 = call i32 @EAT(i8 signext 45)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i8 45, i8* %7, align 1
  br label %109

106:                                              ; preds = %101
  %107 = load %struct.parse*, %struct.parse** %3, align 8
  %108 = call signext i8 @p_b_symbol(%struct.parse* %107)
  store i8 %108, i8* %7, align 1
  br label %109

109:                                              ; preds = %106, %105
  br label %112

110:                                              ; preds = %97, %94, %89
  %111 = load i8, i8* %6, align 1
  store i8 %111, i8* %7, align 1
  br label %112

112:                                              ; preds = %110, %109
  %113 = load i8, i8* %6, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* %7, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 %114, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* @REG_ERANGE, align 4
  %120 = call i32 @REQUIRE(i32 %118, i32 %119)
  %121 = load i8, i8* %6, align 1
  %122 = sext i8 %121 to i32
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %132, %112
  %124 = load i32, i32* %8, align 4
  %125 = load i8, i8* %7, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sle i32 %124, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @CHadd(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %123

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %26, %135, %75, %47
  ret void
}

declare dso_local i32 @MORE(...) #1

declare dso_local i32 @PEEK(...) #1

declare dso_local i32 @MORE2(...) #1

declare dso_local signext i8 @PEEK2(...) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i32 @NEXT2(...) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

declare dso_local i32 @p_b_cclass(%struct.parse*, i32*) #1

declare dso_local i32 @EATTWO(i8 signext, i8 signext) #1

declare dso_local i32 @p_b_eclass(%struct.parse*, i32*) #1

declare dso_local signext i8 @p_b_symbol(%struct.parse*) #1

declare dso_local i32 @SEE(i8 signext) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @EAT(i8 signext) #1

declare dso_local i32 @CHadd(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
