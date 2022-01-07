; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtGetNextLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtGetNextLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@AslGbl_CurrentLineBuffer = common dso_local global i8* null, align 8
@AslGbl_LineBufferSize = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"**** EOF within comment/string %u\0A\00", align 1
@ASL_EOF = common dso_local global i64 0, align 8
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Carriage return without linefeed detected\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AslGbl_NextLineOffset = common dso_local global i64 0, align 8
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@DT_ALLOW_MULTILINE_QUOTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"ERROR at line %u: Unterminated quoted string\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown input state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DtGetNextLine(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %6, align 4
  store i64 132, i64* %7, align 8
  %13 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %14 = load i64, i64* @AslGbl_LineBufferSize, align 8
  %15 = call i32 @memset(i8* %13, i32 0, i64 %14)
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %218, %2
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @AslGbl_LineBufferSize, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @UtExpandLineBuffers()
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @getc(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  switch i64 %29, label %33 [
    i64 128, label %30
    i64 131, label %30
  ]

30:                                               ; preds = %28, %28
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, i64* @ASL_EOF, align 8
  store i64 %38, i64* %3, align 8
  br label %219

39:                                               ; preds = %34
  store i32 10, i32* %10, align 4
  store i64 132, i64* %7, align 8
  br label %58

40:                                               ; preds = %22
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @getc(i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 10, i32* %10, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ungetc(i32 %50, i32* %51)
  %53 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %54 = call i32 @DtFatal(i32 %53, i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i64, i64* @ASL_EOF, align 8
  store i64 %55, i64* %3, align 8
  br label %219

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i64, i64* %7, align 8
  switch i64 %59, label %214 [
    i64 132, label %60
    i64 128, label %109
    i64 134, label %133
    i64 129, label %141
    i64 131, label %162
    i64 130, label %173
    i64 135, label %181
    i64 133, label %193
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %10, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 %62, i8* %65, align 1
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %100 [
    i32 47, label %67
    i32 34, label %68
    i32 92, label %72
    i32 10, label %73
  ]

67:                                               ; preds = %60
  store i64 129, i64* %7, align 8
  br label %108

68:                                               ; preds = %60
  store i64 128, i64* %7, align 8
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %108

72:                                               ; preds = %60
  store i64 133, i64* %7, align 8
  br label %108

73:                                               ; preds = %60
  %74 = load i64, i64* @AslGbl_NextLineOffset, align 8
  store i64 %74, i64* %8, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @ftell(i32* %75)
  %77 = sext i32 %76 to i64
  store i64 %77, i64* @AslGbl_NextLineOffset, align 8
  %78 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @AslGbl_CurrentLineNumber, align 4
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, 1
  %88 = load i64, i64* @AslGbl_LineBufferSize, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 (...) @UtExpandLineBuffers()
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %94, 1
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %3, align 8
  br label %219

98:                                               ; preds = %82, %73
  store i64 0, i64* %9, align 8
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %6, align 4
  br label %108

100:                                              ; preds = %60
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 32
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %9, align 8
  br label %108

108:                                              ; preds = %105, %98, %72, %68, %67
  br label %218

109:                                              ; preds = %58
  %110 = load i32, i32* %10, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 %111, i8* %114, align 1
  %115 = load i64, i64* %9, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %9, align 8
  %117 = load i32, i32* %10, align 4
  switch i32 %117, label %131 [
    i32 34, label %118
    i32 92, label %119
    i32 10, label %120
  ]

118:                                              ; preds = %109
  store i64 132, i64* %7, align 8
  br label %132

119:                                              ; preds = %109
  store i64 134, i64* %7, align 8
  br label %132

120:                                              ; preds = %109
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @DT_ALLOW_MULTILINE_QUOTES, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @AslGbl_CurrentLineNumber, align 4
  %128 = sext i32 %126 to i64
  %129 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  store i64 132, i64* %7, align 8
  br label %130

130:                                              ; preds = %125, %120
  br label %132

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131, %130, %119, %118
  br label %218

133:                                              ; preds = %58
  %134 = load i32, i32* %10, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8 %135, i8* %138, align 1
  %139 = load i64, i64* %9, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %9, align 8
  store i64 128, i64* %7, align 8
  br label %218

141:                                              ; preds = %58
  %142 = load i32, i32* %10, align 4
  switch i32 %142, label %145 [
    i32 42, label %143
    i32 47, label %144
  ]

143:                                              ; preds = %141
  store i64 131, i64* %7, align 8
  br label %161

144:                                              ; preds = %141
  store i64 130, i64* %7, align 8
  br label %161

145:                                              ; preds = %141
  %146 = load i64, i64* %9, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* @AslGbl_LineBufferSize, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = call i32 (...) @UtExpandLineBuffers()
  br label %153

153:                                              ; preds = %151, %145
  %154 = load i32, i32* %10, align 4
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8 %155, i8* %158, align 1
  %159 = load i64, i64* %9, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %9, align 8
  store i64 132, i64* %7, align 8
  br label %161

161:                                              ; preds = %153, %144, %143
  br label %218

162:                                              ; preds = %58
  %163 = load i32, i32* %10, align 4
  switch i32 %163, label %171 [
    i32 10, label %164
    i32 42, label %170
  ]

164:                                              ; preds = %162
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @ftell(i32* %165)
  %167 = sext i32 %166 to i64
  store i64 %167, i64* @AslGbl_NextLineOffset, align 8
  %168 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @AslGbl_CurrentLineNumber, align 4
  br label %172

170:                                              ; preds = %162
  store i64 135, i64* %7, align 8
  br label %172

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %170, %164
  br label %218

173:                                              ; preds = %58
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %174, 10
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @ungetc(i32 %177, i32* %178)
  store i64 132, i64* %7, align 8
  br label %180

180:                                              ; preds = %176, %173
  br label %218

181:                                              ; preds = %58
  %182 = load i32, i32* %10, align 4
  switch i32 %182, label %191 [
    i32 47, label %183
    i32 10, label %184
    i32 42, label %190
  ]

183:                                              ; preds = %181
  store i64 132, i64* %7, align 8
  br label %192

184:                                              ; preds = %181
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @ftell(i32* %185)
  %187 = sext i32 %186 to i64
  store i64 %187, i64* @AslGbl_NextLineOffset, align 8
  %188 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @AslGbl_CurrentLineNumber, align 4
  br label %192

190:                                              ; preds = %181
  br label %192

191:                                              ; preds = %181
  store i64 131, i64* %7, align 8
  br label %192

192:                                              ; preds = %191, %190, %184, %183
  br label %218

193:                                              ; preds = %58
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 10
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i64, i64* %9, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %9, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @ungetc(i32 %199, i32* %200)
  store i64 132, i64* %7, align 8
  br label %213

202:                                              ; preds = %193
  %203 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8 32, i8* %205, align 1
  %206 = load i64, i64* %9, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %9, align 8
  %208 = load i32*, i32** %4, align 8
  %209 = call i32 @ftell(i32* %208)
  %210 = sext i32 %209 to i64
  store i64 %210, i64* @AslGbl_NextLineOffset, align 8
  %211 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* @AslGbl_CurrentLineNumber, align 4
  store i64 132, i64* %7, align 8
  br label %213

213:                                              ; preds = %202, %196
  br label %218

214:                                              ; preds = %58
  %215 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %216 = call i32 @DtFatal(i32 %215, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %217 = load i64, i64* @ASL_EOF, align 8
  store i64 %217, i64* %3, align 8
  br label %219

218:                                              ; preds = %213, %192, %180, %172, %161, %133, %132, %108
  br label %16

219:                                              ; preds = %214, %92, %49, %37
  %220 = load i64, i64* %3, align 8
  ret i64 %220
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @UtExpandLineBuffers(...) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i64) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @DtFatal(i32, i32*, i8*) #1

declare dso_local i32 @ftell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
