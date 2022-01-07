; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_getsel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_getsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quesarg = common dso_local global i32 0, align 4
@ERR_BADBANGARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"-$*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @getsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsel(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 @getC(i32 0)
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %81 [
    i32 37, label %17
    i32 45, label %33
    i32 94, label %45
    i32 36, label %53
    i32 42, label %63
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @quesarg, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @ERR_BADBANGARG, align 4
  %22 = call i32 @seterror(i32 %21)
  store i32 0, i32* %4, align 4
  br label %156

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @quesarg, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @quesarg, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %129

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @unreadc(i32 %42)
  br label %44

44:                                               ; preds = %37, %33
  store i32 1, i32* %4, align 4
  br label %156

45:                                               ; preds = %3
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32*, i32** %6, align 8
  store i32 1, i32* %52, align 4
  br label %129

53:                                               ; preds = %3
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %129

63:                                               ; preds = %3
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32*, i32** %6, align 8
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 1, i32* %79, align 4
  store i32 1, i32* %4, align 4
  br label %156

80:                                               ; preds = %69
  br label %129

81:                                               ; preds = %3
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @Isdigit(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @Isdigit(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %91, 10
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %92, %93
  %95 = sub nsw i32 %94, 48
  store i32 %95, i32* %9, align 4
  %96 = call i32 @getC(i32 0)
  store i32 %96, i32* %8, align 4
  br label %86

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  br label %126

113:                                              ; preds = %81
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32*, i32** %5, align 8
  store i32 0, i32* %118, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  br label %125

121:                                              ; preds = %113
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %110
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @unreadc(i32 %127)
  br label %129

129:                                              ; preds = %126, %80, %60, %51, %30
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = call i32 @getC(i32 0)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @unreadc(i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @any(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 1, i32* %4, align 4
  br label %156

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %129
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %143, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %141
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %147, %141
  %153 = load i32, i32* @ERR_BADBANGARG, align 4
  %154 = call i32 @seterror(i32 %153)
  store i32 0, i32* %4, align 4
  br label %156

155:                                              ; preds = %147
  store i32 1, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %152, %139, %77, %44, %20
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @getC(i32) #1

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @unreadc(i32) #1

declare dso_local i32 @Isdigit(i32) #1

declare dso_local i64 @any(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
