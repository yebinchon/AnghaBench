; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }

@CHAR_ERR = common dso_local global i8 0, align 1
@Stype = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_NOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"then/endif\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"endsw\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@Sgoal = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Strbuf*)* @getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getword(%struct.Strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Strbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.Strbuf* %0, %struct.Strbuf** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %9 = icmp ne %struct.Strbuf* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %12 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = call signext i8 @readc(i32 1)
  store i8 %14, i8* %6, align 1
  store i8 0, i8* %7, align 1
  br label %15

15:                                               ; preds = %174, %13
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call signext i8 @readc(i32 1)
  store i8 %27, i8* %6, align 1
  br label %16

28:                                               ; preds = %24
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 35
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %45, %32
  %34 = call signext i8 @readc(i32 1)
  store i8 %34, i8* %6, align 1
  br label %35

35:                                               ; preds = %33
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @CHAR_ERR, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ false, %35 ], [ %44, %41 ]
  br i1 %46, label %33, label %47

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i8, i8* %6, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @CHAR_ERR, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %192

55:                                               ; preds = %48
  %56 = load i8, i8* %6, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %61 = icmp ne %struct.Strbuf* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %177

63:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %224

64:                                               ; preds = %55
  %65 = load i8, i8* %6, align 1
  %66 = call i32 @unreadc(i8 signext %65)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %171, %64
  %68 = call signext i8 @readc(i32 1)
  store i8 %68, i8* %6, align 1
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 92
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = call signext i8 @readc(i32 1)
  store i8 %73, i8* %6, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8 32, i8* %6, align 1
  br label %77

77:                                               ; preds = %76, %72, %67
  %78 = load i8, i8* %6, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 39
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8, i8* %6, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 34
  br i1 %84, label %85, label %100

85:                                               ; preds = %81, %77
  %86 = load i8, i8* %7, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i8, i8* %6, align 1
  store i8 %90, i8* %7, align 1
  br label %99

91:                                               ; preds = %85
  %92 = load i8, i8* %7, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* %6, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i8 0, i8* %7, align 1
  br label %98

98:                                               ; preds = %97, %91
  br label %99

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %81
  %101 = load i8, i8* %6, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @CHAR_ERR, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %192

107:                                              ; preds = %100
  %108 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %109 = icmp ne %struct.Strbuf* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %112 = load i8, i8* %6, align 1
  %113 = sext i8 %112 to i32
  %114 = call i32 @Strbuf_append1(%struct.Strbuf* %111, i32 %113)
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i8, i8* %7, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %139, label %118

118:                                              ; preds = %115
  %119 = load i8, i8* %6, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 41
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %127 = icmp ne %struct.Strbuf* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %178

129:                                              ; preds = %125, %122
  %130 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %131 = icmp ne %struct.Strbuf* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %134 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %133, i32 0, i32 0
  store i32 1, i32* %134, align 4
  %135 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %136 = call i32 @Strbuf_terminate(%struct.Strbuf* %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %2, align 4
  br label %224

139:                                              ; preds = %118, %115
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %139
  %143 = load i8, i8* %7, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load i8, i8* %6, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 40
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %151 = icmp ne %struct.Strbuf* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %178

153:                                              ; preds = %149
  br label %173

154:                                              ; preds = %145, %142, %139
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %154
  %156 = load i8, i8* %7, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %155
  %160 = load i8, i8* %6, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 32
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i8, i8* %6, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 9
  br i1 %166, label %167, label %171

167:                                              ; preds = %163, %155
  %168 = load i8, i8* %6, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 10
  br label %171

171:                                              ; preds = %167, %163, %159
  %172 = phi i1 [ false, %163 ], [ false, %159 ], [ %170, %167 ]
  br i1 %172, label %67, label %173

173:                                              ; preds = %171, %153
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %176 = icmp eq %struct.Strbuf* %175, null
  br i1 %176, label %15, label %177

177:                                              ; preds = %174, %62
  br label %178

178:                                              ; preds = %177, %152, %128
  %179 = load i8, i8* %6, align 1
  %180 = call i32 @unreadc(i8 signext %179)
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %185 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %185, align 4
  %188 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %189 = call i32 @Strbuf_terminate(%struct.Strbuf* %188)
  br label %190

190:                                              ; preds = %183, %178
  %191 = load i32, i32* %4, align 4
  store i32 %191, i32* %2, align 4
  br label %224

192:                                              ; preds = %106, %54
  %193 = load i32, i32* @Stype, align 4
  switch i32 %193, label %222 [
    i32 129, label %194
    i32 131, label %199
    i32 132, label %204
    i32 128, label %204
    i32 133, label %209
    i32 130, label %214
  ]

194:                                              ; preds = %192
  %195 = load i32, i32* @ERR_NAME, align 4
  %196 = load i32, i32* @ERR_NOTFOUND, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @stderror(i32 %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %223

199:                                              ; preds = %192
  %200 = load i32, i32* @ERR_NAME, align 4
  %201 = load i32, i32* @ERR_NOTFOUND, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @stderror(i32 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %223

204:                                              ; preds = %192, %192
  %205 = load i32, i32* @ERR_NAME, align 4
  %206 = load i32, i32* @ERR_NOTFOUND, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @stderror(i32 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %223

209:                                              ; preds = %192
  %210 = load i32, i32* @ERR_NAME, align 4
  %211 = load i32, i32* @ERR_NOTFOUND, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @stderror(i32 %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %223

214:                                              ; preds = %192
  %215 = load i32, i32* @Sgoal, align 4
  %216 = call i32 @short2str(i32 %215)
  %217 = call i32 @setname(i32 %216)
  %218 = load i32, i32* @ERR_NAME, align 4
  %219 = load i32, i32* @ERR_NOTFOUND, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @stderror(i32 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %223

222:                                              ; preds = %192
  br label %223

223:                                              ; preds = %222, %214, %209, %204, %199, %194
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %223, %190, %137, %63
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local signext i8 @readc(i32) #1

declare dso_local i32 @unreadc(i8 signext) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i32) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

declare dso_local i32 @stderror(i32, i8*) #1

declare dso_local i32 @setname(i32) #1

declare dso_local i32 @short2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
