; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_bracket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_bracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32* }

@p_bracket.bow = internal global [6 x i8] c"[:<:]]", align 1
@p_bracket.eow = internal global [6 x i8] c"[:>:]]", align 1
@OBOW = common dso_local global i32 0, align 4
@OEOW = common dso_local global i32 0, align 4
@REG_EBRACK = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@OANYOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*)* @p_bracket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_bracket(%struct.parse* %0) #0 {
  %2 = alloca %struct.parse*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.parse*, %struct.parse** %2, align 8
  %9 = call %struct.TYPE_15__* @allocset(%struct.parse* %8)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = icmp eq %struct.TYPE_15__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %234

13:                                               ; preds = %1
  %14 = load %struct.parse*, %struct.parse** %2, align 8
  %15 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 5
  %18 = load %struct.parse*, %struct.parse** %2, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load %struct.parse*, %struct.parse** %2, align 8
  %24 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @MEMCMP(i64 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @p_bracket.bow, i64 0, i64 0), i32 6)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @OBOW, align 4
  %30 = call i32 @EMIT(i32 %29, i32 0)
  %31 = call i32 @NEXTn(i32 6)
  br label %234

32:                                               ; preds = %22, %13
  %33 = load %struct.parse*, %struct.parse** %2, align 8
  %34 = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 5
  %37 = load %struct.parse*, %struct.parse** %2, align 8
  %38 = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.parse*, %struct.parse** %2, align 8
  %43 = getelementptr inbounds %struct.parse, %struct.parse* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @MEMCMP(i64 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @p_bracket.eow, i64 0, i64 0), i32 6)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @OEOW, align 4
  %49 = call i32 @EMIT(i32 %48, i32 0)
  %50 = call i32 @NEXTn(i32 6)
  br label %234

51:                                               ; preds = %41, %32
  %52 = call i64 @EAT(i8 signext 94)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = call i64 @EAT(i8 signext 93)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i32 @CHadd(%struct.TYPE_15__* %61, i32 93)
  br label %70

63:                                               ; preds = %57
  %64 = call i64 @EAT(i8 signext 45)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = call i32 @CHadd(%struct.TYPE_15__* %67, i32 45)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %84, %70
  %72 = call i64 (...) @MORE()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = call signext i8 (...) @PEEK()
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 93
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = call i32 @SEETWO(i8 signext 45, i8 signext 93)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %78, %74, %71
  %83 = phi i1 [ false, %74 ], [ false, %71 ], [ %81, %78 ]
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = load %struct.parse*, %struct.parse** %2, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = call i32 @p_b_term(%struct.parse* %85, %struct.TYPE_15__* %86)
  br label %71

88:                                               ; preds = %82
  %89 = call i64 @EAT(i8 signext 45)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = call i32 @CHadd(%struct.TYPE_15__* %92, i32 45)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @REG_EBRACK, align 4
  %96 = call i32 @MUSTEAT(i8 signext 93, i32 %95)
  %97 = load %struct.parse*, %struct.parse** %2, align 8
  %98 = getelementptr inbounds %struct.parse, %struct.parse* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %234

102:                                              ; preds = %94
  %103 = load %struct.parse*, %struct.parse** %2, align 8
  %104 = getelementptr inbounds %struct.parse, %struct.parse* %103, i32 0, i32 3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @REG_ICASE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %155

111:                                              ; preds = %102
  %112 = load %struct.parse*, %struct.parse** %2, align 8
  %113 = getelementptr inbounds %struct.parse, %struct.parse* %112, i32 0, i32 3
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %142, %111
  %119 = load i32, i32* %5, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @CHIN(%struct.TYPE_15__* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load i32, i32* %5, align 4
  %128 = call i64 @isalpha(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @othercase(i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @CHadd(%struct.TYPE_15__* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %130
  br label %141

141:                                              ; preds = %140, %126, %121
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %5, align 4
  br label %118

145:                                              ; preds = %118
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.parse*, %struct.parse** %2, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = call i32 @mccase(%struct.parse* %151, %struct.TYPE_15__* %152)
  br label %154

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %154, %102
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %208

158:                                              ; preds = %155
  %159 = load %struct.parse*, %struct.parse** %2, align 8
  %160 = getelementptr inbounds %struct.parse, %struct.parse* %159, i32 0, i32 3
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %183, %158
  %166 = load i32, i32* %7, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %165
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i64 @CHIN(%struct.TYPE_15__* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = load i32, i32* %7, align 4
  %176 = trunc i32 %175 to i8
  %177 = call i32 @CHsub(%struct.TYPE_15__* %174, i8 signext %176)
  br label %182

178:                                              ; preds = %168
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @CHadd(%struct.TYPE_15__* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %173
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %7, align 4
  br label %165

186:                                              ; preds = %165
  %187 = load %struct.parse*, %struct.parse** %2, align 8
  %188 = getelementptr inbounds %struct.parse, %struct.parse* %187, i32 0, i32 3
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @REG_NEWLINE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %186
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %197 = call i32 @CHsub(%struct.TYPE_15__* %196, i8 signext 10)
  br label %198

198:                                              ; preds = %195, %186
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.parse*, %struct.parse** %2, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %206 = call i32 @mcinvert(%struct.parse* %204, %struct.TYPE_15__* %205)
  br label %207

207:                                              ; preds = %203, %198
  br label %208

208:                                              ; preds = %207, %155
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = icmp eq i32* %211, null
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  %215 = load %struct.parse*, %struct.parse** %2, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %217 = call i32 @nch(%struct.parse* %215, %struct.TYPE_15__* %216)
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %228

219:                                              ; preds = %208
  %220 = load %struct.parse*, %struct.parse** %2, align 8
  %221 = load %struct.parse*, %struct.parse** %2, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %223 = call i32 @firstch(%struct.parse* %221, %struct.TYPE_15__* %222)
  %224 = call i32 @ordinary(%struct.parse* %220, i32 %223)
  %225 = load %struct.parse*, %struct.parse** %2, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = call i32 @freeset(%struct.parse* %225, %struct.TYPE_15__* %226)
  br label %234

228:                                              ; preds = %208
  %229 = load i32, i32* @OANYOF, align 4
  %230 = load %struct.parse*, %struct.parse** %2, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %232 = call i32 @freezeset(%struct.parse* %230, %struct.TYPE_15__* %231)
  %233 = call i32 @EMIT(i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %12, %28, %47, %101, %228, %219
  ret void
}

declare dso_local %struct.TYPE_15__* @allocset(%struct.parse*) #1

declare dso_local i64 @MEMCMP(i64, i8*, i32) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i32 @NEXTn(i32) #1

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i32 @CHadd(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @MORE(...) #1

declare dso_local signext i8 @PEEK(...) #1

declare dso_local i32 @SEETWO(i8 signext, i8 signext) #1

declare dso_local i32 @p_b_term(%struct.parse*, %struct.TYPE_15__*) #1

declare dso_local i32 @MUSTEAT(i8 signext, i32) #1

declare dso_local i64 @CHIN(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @othercase(i32) #1

declare dso_local i32 @mccase(%struct.parse*, %struct.TYPE_15__*) #1

declare dso_local i32 @CHsub(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @mcinvert(%struct.parse*, %struct.TYPE_15__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nch(%struct.parse*, %struct.TYPE_15__*) #1

declare dso_local i32 @ordinary(%struct.parse*, i32) #1

declare dso_local i32 @firstch(%struct.parse*, %struct.TYPE_15__*) #1

declare dso_local i32 @freeset(%struct.parse*, %struct.TYPE_15__*) #1

declare dso_local i32 @freezeset(%struct.parse*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
