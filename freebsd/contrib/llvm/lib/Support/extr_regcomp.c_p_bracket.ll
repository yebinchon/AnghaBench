; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_bracket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_bracket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"[:<:]]\00", align 1
@OBOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"[:>:]]\00", align 1
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
  %9 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 5
  %12 = load %struct.parse*, %struct.parse** %2, align 8
  %13 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.parse*, %struct.parse** %2, align 8
  %18 = getelementptr inbounds %struct.parse, %struct.parse* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @strncmp(i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @OBOW, align 4
  %24 = call i32 @EMIT(i32 %23, i32 0)
  %25 = call i32 @NEXTn(i32 6)
  br label %236

26:                                               ; preds = %16, %1
  %27 = load %struct.parse*, %struct.parse** %2, align 8
  %28 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 5
  %31 = load %struct.parse*, %struct.parse** %2, align 8
  %32 = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.parse*, %struct.parse** %2, align 8
  %37 = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @strncmp(i64 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @OEOW, align 4
  %43 = call i32 @EMIT(i32 %42, i32 0)
  %44 = call i32 @NEXTn(i32 6)
  br label %236

45:                                               ; preds = %35, %26
  %46 = load %struct.parse*, %struct.parse** %2, align 8
  %47 = call %struct.TYPE_15__* @allocset(%struct.parse* %46)
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %3, align 8
  %48 = icmp eq %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %236

50:                                               ; preds = %45
  %51 = call i64 @EAT(i8 signext 94)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = call i64 @EAT(i8 signext 93)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = call i32 @CHadd(%struct.TYPE_15__* %60, i32 93)
  br label %69

62:                                               ; preds = %56
  %63 = call i64 @EAT(i8 signext 45)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call i32 @CHadd(%struct.TYPE_15__* %66, i32 45)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %59
  br label %70

70:                                               ; preds = %83, %69
  %71 = call i64 (...) @MORE()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = call signext i8 (...) @PEEK()
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 93
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i32 @SEETWO(i8 signext 45, i8 signext 93)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %77, %73, %70
  %82 = phi i1 [ false, %73 ], [ false, %70 ], [ %80, %77 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = load %struct.parse*, %struct.parse** %2, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = call i32 @p_b_term(%struct.parse* %84, %struct.TYPE_15__* %85)
  br label %70

87:                                               ; preds = %81
  %88 = call i64 @EAT(i8 signext 45)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = call i32 @CHadd(%struct.TYPE_15__* %91, i32 45)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @REG_EBRACK, align 4
  %95 = call i32 @MUSTEAT(i8 signext 93, i32 %94)
  %96 = load %struct.parse*, %struct.parse** %2, align 8
  %97 = getelementptr inbounds %struct.parse, %struct.parse* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.parse*, %struct.parse** %2, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = call i32 @freeset(%struct.parse* %101, %struct.TYPE_15__* %102)
  br label %236

104:                                              ; preds = %93
  %105 = load %struct.parse*, %struct.parse** %2, align 8
  %106 = getelementptr inbounds %struct.parse, %struct.parse* %105, i32 0, i32 3
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @REG_ICASE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %157

113:                                              ; preds = %104
  %114 = load %struct.parse*, %struct.parse** %2, align 8
  %115 = getelementptr inbounds %struct.parse, %struct.parse* %114, i32 0, i32 3
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %144, %113
  %121 = load i32, i32* %5, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i64 @CHIN(%struct.TYPE_15__* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @isalpha(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @othercase(i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @CHadd(%struct.TYPE_15__* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %132
  br label %143

143:                                              ; preds = %142, %128, %123
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %5, align 4
  br label %120

147:                                              ; preds = %120
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.parse*, %struct.parse** %2, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %155 = call i32 @mccase(%struct.parse* %153, %struct.TYPE_15__* %154)
  br label %156

156:                                              ; preds = %152, %147
  br label %157

157:                                              ; preds = %156, %104
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %210

160:                                              ; preds = %157
  %161 = load %struct.parse*, %struct.parse** %2, align 8
  %162 = getelementptr inbounds %struct.parse, %struct.parse* %161, i32 0, i32 3
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %185, %160
  %168 = load i32, i32* %7, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %167
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i64 @CHIN(%struct.TYPE_15__* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %177 = load i32, i32* %7, align 4
  %178 = trunc i32 %177 to i8
  %179 = call i32 @CHsub(%struct.TYPE_15__* %176, i8 signext %178)
  br label %184

180:                                              ; preds = %170
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @CHadd(%struct.TYPE_15__* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %175
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %7, align 4
  br label %167

188:                                              ; preds = %167
  %189 = load %struct.parse*, %struct.parse** %2, align 8
  %190 = getelementptr inbounds %struct.parse, %struct.parse* %189, i32 0, i32 3
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @REG_NEWLINE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %199 = call i32 @CHsub(%struct.TYPE_15__* %198, i8 signext 10)
  br label %200

200:                                              ; preds = %197, %188
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.parse*, %struct.parse** %2, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %208 = call i32 @mcinvert(%struct.parse* %206, %struct.TYPE_15__* %207)
  br label %209

209:                                              ; preds = %205, %200
  br label %210

210:                                              ; preds = %209, %157
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.parse*, %struct.parse** %2, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %219 = call i32 @nch(%struct.parse* %217, %struct.TYPE_15__* %218)
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %230

221:                                              ; preds = %210
  %222 = load %struct.parse*, %struct.parse** %2, align 8
  %223 = load %struct.parse*, %struct.parse** %2, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %225 = call i32 @firstch(%struct.parse* %223, %struct.TYPE_15__* %224)
  %226 = call i32 @ordinary(%struct.parse* %222, i32 %225)
  %227 = load %struct.parse*, %struct.parse** %2, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %229 = call i32 @freeset(%struct.parse* %227, %struct.TYPE_15__* %228)
  br label %236

230:                                              ; preds = %210
  %231 = load i32, i32* @OANYOF, align 4
  %232 = load %struct.parse*, %struct.parse** %2, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %234 = call i32 @freezeset(%struct.parse* %232, %struct.TYPE_15__* %233)
  %235 = call i32 @EMIT(i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %22, %41, %49, %100, %230, %221
  ret void
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i32 @NEXTn(i32) #1

declare dso_local %struct.TYPE_15__* @allocset(%struct.parse*) #1

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i32 @CHadd(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @MORE(...) #1

declare dso_local signext i8 @PEEK(...) #1

declare dso_local i32 @SEETWO(i8 signext, i8 signext) #1

declare dso_local i32 @p_b_term(%struct.parse*, %struct.TYPE_15__*) #1

declare dso_local i32 @MUSTEAT(i8 signext, i32) #1

declare dso_local i32 @freeset(%struct.parse*, %struct.TYPE_15__*) #1

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

declare dso_local i32 @freezeset(%struct.parse*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
