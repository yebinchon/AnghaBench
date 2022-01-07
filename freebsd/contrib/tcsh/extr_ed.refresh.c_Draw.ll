; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_Draw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR = common dso_local global i32 0, align 4
@vcursor_h = common dso_local global i32 0, align 4
@vcursor_v = common dso_local global i32 0, align 4
@_toebcdic = common dso_local global i32* null, align 8
@_toascii = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@Vdisplay = common dso_local global i32** null, align 8
@CHAR_DBWIDTH = common dso_local global i32 0, align 4
@ATTRIBUTES = common dso_local global i32 0, align 4
@BOLD = common dso_local global i32 0, align 4
@STANDOUT = common dso_local global i32 0, align 4
@UNDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Draw(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CHAR, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CHAR, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @NLSClassify(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %200 [
    i32 129, label %27
    i32 128, label %31
    i32 135, label %39
    i32 134, label %65
    i32 133, label %89
    i32 132, label %89
    i32 131, label %89
    i32 130, label %89
    i32 0, label %117
  ]

27:                                               ; preds = %3
  %28 = call i32 @Vdraw(i32 0, i32 0)
  store i32 0, i32* @vcursor_h, align 4
  %29 = load i32, i32* @vcursor_v, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @vcursor_v, align 4
  br label %205

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %34, %31
  %33 = call i32 @Vdraw(i32 32, i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* @vcursor_h, align 4
  %36 = and i32 %35, 7
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %32, label %38

38:                                               ; preds = %34
  br label %205

39:                                               ; preds = %3
  %40 = load i32, i32* %12, align 4
  %41 = or i32 94, %40
  %42 = call i32 @Vdraw(i32 %41, i32 1)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @CTL_ESC(i8 signext 127)
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = or i32 63, %47
  %49 = call i32 @Vdraw(i32 %48, i32 1)
  br label %64

50:                                               ; preds = %39
  %51 = load i32*, i32** @_toebcdic, align 8
  %52 = load i32*, i32** @_toascii, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 64
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %51, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @Vdraw(i32 %62, i32 1)
  br label %64

64:                                               ; preds = %50, %46
  br label %205

65:                                               ; preds = %3
  %66 = load i32, i32* %12, align 4
  %67 = or i32 92, %66
  %68 = call i32 @Vdraw(i32 %67, i32 1)
  %69 = load i32, i32* %11, align 4
  %70 = ashr i32 %69, 6
  %71 = and i32 %70, 7
  %72 = add nsw i32 %71, 48
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @Vdraw(i32 %74, i32 1)
  %76 = load i32, i32* %11, align 4
  %77 = ashr i32 %76, 3
  %78 = and i32 %77, 7
  %79 = add nsw i32 %78, 48
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @Vdraw(i32 %81, i32 1)
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 7
  %85 = add nsw i32 %84, 48
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @Vdraw(i32 %87, i32 1)
  br label %205

89:                                               ; preds = %3, %3, %3, %3
  %90 = call i32 @Vdraw(i32 92, i32 1)
  %91 = call i32 @Vdraw(i32 85, i32 1)
  %92 = call i32 @Vdraw(i32 43, i32 1)
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 0, %93
  %95 = sub nsw i32 %94, 5
  %96 = mul nsw i32 4, %95
  %97 = add nsw i32 16, %96
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %113, %89
  %99 = load i32, i32* %8, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %8, align 4
  %104 = ashr i32 %102, %103
  %105 = and i32 %104, 15
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @Vdraw(i32 %111, i32 1)
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 4
  store i32 %115, i32* %8, align 4
  br label %98

116:                                              ; preds = %98
  br label %205

117:                                              ; preds = %3
  %118 = load i32, i32* @vcursor_v, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @vcursor_h, align 4
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %152, %117
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %153

131:                                              ; preds = %125
  %132 = load i32**, i32*** @Vdisplay, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @Strlen(i32* %136)
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %131, %120
  %140 = load i32**, i32*** @Vdisplay, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CHAR_DBWIDTH, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %153

152:                                              ; preds = %139
  br label %120

153:                                              ; preds = %151, %130
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = or i32 92, %157
  %159 = call i32 @Vdraw(i32 %158, i32 1)
  %160 = load i32, i32* %11, align 4
  %161 = ashr i32 %160, 6
  %162 = and i32 %161, 7
  %163 = add nsw i32 %162, 48
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @Vdraw(i32 %165, i32 1)
  %167 = load i32, i32* %11, align 4
  %168 = ashr i32 %167, 3
  %169 = and i32 %168, 7
  %170 = add nsw i32 %169, 48
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @Vdraw(i32 %172, i32 1)
  %174 = load i32, i32* %11, align 4
  %175 = and i32 %174, 7
  %176 = add nsw i32 %175, 48
  %177 = load i32, i32* %12, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @Vdraw(i32 %178, i32 1)
  br label %205

180:                                              ; preds = %153
  %181 = load i32*, i32** %4, align 8
  %182 = load i32**, i32*** @Vdisplay, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @MakeLiteral(i32* %181, i32 1, i32 %190)
  %192 = load i32**, i32*** @Vdisplay, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %191, i32* %199, align 4
  br label %205

200:                                              ; preds = %3
  %201 = load i32*, i32** %4, align 8
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @Vdraw(i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %200, %180, %156, %116, %65, %64, %38, %27
  ret i32 1
}

declare dso_local i32 @NLSClassify(i32, i32, i32) #1

declare dso_local i32 @Vdraw(i32, i32) #1

declare dso_local i32 @CTL_ESC(i8 signext) #1

declare dso_local i32 @Strlen(i32*) #1

declare dso_local i32 @MakeLiteral(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
