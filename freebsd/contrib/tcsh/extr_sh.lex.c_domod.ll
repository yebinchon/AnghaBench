; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_domod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_domod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRQNULL = common dso_local global i32* null, align 8
@QUOTE = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @domod(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %156 [
    i32 113, label %10
    i32 120, label %10
    i32 108, label %45
    i32 117, label %57
    i32 104, label %69
    i32 116, label %69
    i32 101, label %104
    i32 114, label %104
  ]

10:                                               ; preds = %2, %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** @STRQNULL, align 8
  %16 = call i32* @Strsave(i32* %15)
  store i32* %16, i32** %3, align 8
  br label %158

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @Strsave(i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %40, %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 113
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @QUOTE, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  br label %21

43:                                               ; preds = %21
  %44 = load i32*, i32** %6, align 8
  store i32* %44, i32** %3, align 8
  br label %158

45:                                               ; preds = %2
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @NLSChangeCase(i32* %46, i32 1)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  br label %55

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @Strsave(i32* %53)
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32* [ %51, %50 ], [ %54, %52 ]
  store i32* %56, i32** %3, align 8
  br label %158

57:                                               ; preds = %2
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @NLSChangeCase(i32* %58, i32 0)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  br label %67

64:                                               ; preds = %57
  %65 = load i32*, i32** %4, align 8
  %66 = call i32* @Strsave(i32* %65)
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i32* [ %63, %62 ], [ %66, %64 ]
  store i32* %68, i32** %3, align 8
  br label %158

69:                                               ; preds = %2, %2
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @short2str(i32* %70)
  %72 = call i32 @any(i32 %71, i8 signext 47)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 116
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = call i32* @Strsave(i32* %78)
  br label %81

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32* [ %79, %77 ], [ null, %80 ]
  store i32* %82, i32** %3, align 8
  br label %158

83:                                               ; preds = %69
  %84 = load i32*, i32** %4, align 8
  %85 = call i32* @Strrchr(i32* %84, i8 signext 47)
  store i32* %85, i32** %6, align 8
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 104
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32* @Strnsave(i32* %89, i32 %96)
  store i32* %97, i32** %7, align 8
  br label %102

98:                                               ; preds = %83
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = call i32* @Strsave(i32* %100)
  store i32* %101, i32** %7, align 8
  br label %102

102:                                              ; preds = %98, %88
  %103 = load i32*, i32** %7, align 8
  store i32* %103, i32** %3, align 8
  br label %158

104:                                              ; preds = %2, %2
  %105 = load i32*, i32** %4, align 8
  %106 = call i32* @Strend(i32* %105)
  store i32* %106, i32** %6, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 -1
  store i32* %108, i32** %6, align 8
  br label %109

109:                                              ; preds = %143, %104
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = icmp uge i32* %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 47
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i1 [ false, %109 ], [ %116, %113 ]
  br i1 %118, label %119, label %146

119:                                              ; preds = %117
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 46
  br i1 %122, label %123, label %142

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 101
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = call i32* @Strsave(i32* %128)
  store i32* %129, i32** %7, align 8
  br label %140

130:                                              ; preds = %123
  %131 = load i32*, i32** %4, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = ptrtoint i32* %132 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i32* @Strnsave(i32* %131, i32 %138)
  store i32* %139, i32** %7, align 8
  br label %140

140:                                              ; preds = %130, %126
  %141 = load i32*, i32** %7, align 8
  store i32* %141, i32** %3, align 8
  br label %158

142:                                              ; preds = %119
  br label %143

143:                                              ; preds = %142
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 -1
  store i32* %145, i32** %6, align 8
  br label %109

146:                                              ; preds = %117
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 101
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32*, i32** @STRNULL, align 8
  br label %153

151:                                              ; preds = %146
  %152 = load i32*, i32** %4, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32* [ %150, %149 ], [ %152, %151 ]
  %155 = call i32* @Strsave(i32* %154)
  store i32* %155, i32** %3, align 8
  br label %158

156:                                              ; preds = %2
  br label %157

157:                                              ; preds = %156
  store i32* null, i32** %3, align 8
  br label %158

158:                                              ; preds = %157, %153, %140, %102, %81, %67, %55, %43, %14
  %159 = load i32*, i32** %3, align 8
  ret i32* %159
}

declare dso_local i32* @Strsave(i32*) #1

declare dso_local i32* @NLSChangeCase(i32*, i32) #1

declare dso_local i32 @any(i32, i8 signext) #1

declare dso_local i32 @short2str(i32*) #1

declare dso_local i32* @Strrchr(i32*, i8 signext) #1

declare dso_local i32* @Strnsave(i32*, i32) #1

declare dso_local i32* @Strend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
