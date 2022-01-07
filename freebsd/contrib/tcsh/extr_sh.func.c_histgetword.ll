; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_histgetword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_histgetword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { i8*, %struct.wordent*, %struct.wordent* }
%struct.Strbuf = type { i32*, i64, i64 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wordent* (%struct.wordent*)* @histgetword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wordent* @histgetword(%struct.wordent* %0) #0 {
  %2 = alloca %struct.wordent*, align 8
  %3 = alloca %struct.wordent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.Strbuf*, align 8
  store %struct.wordent* %0, %struct.wordent** %3, align 8
  %9 = call i8* @xmalloc(i32 24)
  %10 = bitcast i8* %9 to %struct.Strbuf*
  store %struct.Strbuf* %10, %struct.Strbuf** %8, align 8
  %11 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %12 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %14 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = call signext i8 @readc(i32 1)
  store i8 %15, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %215, %1
  %17 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %18 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %20 = call i32 @Strbuf_terminate(%struct.Strbuf* %19)
  br label %21

21:                                               ; preds = %31, %16
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = call signext i8 @readc(i32 1)
  store i8 %32, i8* %5, align 1
  br label %21

33:                                               ; preds = %29
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %50, %37
  %39 = call signext i8 @readc(i32 1)
  store i8 %39, i8* %5, align 1
  br label %40

40:                                               ; preds = %38
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @CHAR_ERR, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br label %50

50:                                               ; preds = %46, %40
  %51 = phi i1 [ false, %40 ], [ %49, %46 ]
  br i1 %51, label %38, label %52

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i8, i8* %5, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @CHAR_ERR, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %216

60:                                               ; preds = %53
  %61 = load i8, i8* %5, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %199

65:                                               ; preds = %60
  %66 = load i8, i8* %5, align 1
  %67 = call i32 @unreadc(i8 signext %66)
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %162, %65
  %69 = load i8, i8* %5, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 92
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = call signext i8 @readc(i32 1)
  store i8 %73, i8* %5, align 1
  %74 = load i8, i8* %5, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %89

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = call signext i8 @readc(i32 1)
  store i8 %81, i8* %5, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  store i8 32, i8* %5, align 1
  br label %88

85:                                               ; preds = %80
  %86 = load i8, i8* %5, align 1
  %87 = call i32 @unreadc(i8 signext %86)
  store i8 92, i8* %5, align 1
  br label %88

88:                                               ; preds = %85, %84
  br label %89

89:                                               ; preds = %88, %77, %68
  %90 = load i8, i8* %5, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 39
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i8, i8* %5, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 34
  br i1 %96, label %97, label %115

97:                                               ; preds = %93, %89
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %97
  %101 = load i8, i8* %6, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8, i8* %5, align 1
  store i8 %105, i8* %6, align 1
  br label %114

106:                                              ; preds = %100
  %107 = load i8, i8* %6, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* %5, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i8 0, i8* %6, align 1
  br label %113

113:                                              ; preds = %112, %106
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %97, %93
  %116 = load i8, i8* %5, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8, i8* @CHAR_ERR, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %216

122:                                              ; preds = %115
  %123 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %124 = load i8, i8* %5, align 1
  %125 = sext i8 %124 to i32
  %126 = call i32 @Strbuf_append1(%struct.Strbuf* %123, i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %122
  %130 = load i8, i8* %6, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load i8, i8* %5, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 40
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  br label %164

140:                                              ; preds = %136, %132, %129, %122
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140
  %142 = load i8, i8* %6, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %162, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %162, label %148

148:                                              ; preds = %145
  %149 = load i8, i8* %5, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 32
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i8, i8* %5, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 9
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i8, i8* %5, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 10
  br label %160

160:                                              ; preds = %156, %152, %148
  %161 = phi i1 [ false, %152 ], [ false, %148 ], [ %159, %156 ]
  br label %162

162:                                              ; preds = %160, %145, %141
  %163 = phi i1 [ true, %145 ], [ true, %141 ], [ %161, %160 ]
  br i1 %163, label %68, label %164

164:                                              ; preds = %162, %139
  %165 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %166 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, -1
  store i64 %168, i64* %166, align 8
  %169 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %170 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %164
  %174 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %175 = call i32 @Strbuf_terminate(%struct.Strbuf* %174)
  %176 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %177 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i8* @Strsave(i32* %178)
  %180 = load %struct.wordent*, %struct.wordent** %3, align 8
  %181 = getelementptr inbounds %struct.wordent, %struct.wordent* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = call i8* @xmalloc(i32 24)
  %183 = bitcast i8* %182 to %struct.wordent*
  %184 = load %struct.wordent*, %struct.wordent** %3, align 8
  %185 = getelementptr inbounds %struct.wordent, %struct.wordent* %184, i32 0, i32 1
  store %struct.wordent* %183, %struct.wordent** %185, align 8
  %186 = load %struct.wordent*, %struct.wordent** %3, align 8
  %187 = load %struct.wordent*, %struct.wordent** %3, align 8
  %188 = getelementptr inbounds %struct.wordent, %struct.wordent* %187, i32 0, i32 1
  %189 = load %struct.wordent*, %struct.wordent** %188, align 8
  %190 = getelementptr inbounds %struct.wordent, %struct.wordent* %189, i32 0, i32 2
  store %struct.wordent* %186, %struct.wordent** %190, align 8
  %191 = load %struct.wordent*, %struct.wordent** %3, align 8
  %192 = getelementptr inbounds %struct.wordent, %struct.wordent* %191, i32 0, i32 1
  %193 = load %struct.wordent*, %struct.wordent** %192, align 8
  store %struct.wordent* %193, %struct.wordent** %3, align 8
  br label %194

194:                                              ; preds = %173, %164
  %195 = load i8, i8* %5, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 10
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  br label %199

199:                                              ; preds = %198, %64
  %200 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %201 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %203 = load i8, i8* %5, align 1
  %204 = sext i8 %203 to i32
  %205 = call i32 @Strbuf_append1(%struct.Strbuf* %202, i32 %204)
  %206 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %207 = call i32 @Strbuf_terminate(%struct.Strbuf* %206)
  %208 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %209 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = call i8* @Strsave(i32* %210)
  %212 = load %struct.wordent*, %struct.wordent** %3, align 8
  %213 = getelementptr inbounds %struct.wordent, %struct.wordent* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %214, %struct.wordent** %2, align 8
  br label %248

215:                                              ; preds = %194
  br label %16

216:                                              ; preds = %121, %59
  %217 = load i32, i32* @Stype, align 4
  switch i32 %217, label %246 [
    i32 129, label %218
    i32 131, label %223
    i32 132, label %228
    i32 128, label %228
    i32 133, label %233
    i32 130, label %238
  ]

218:                                              ; preds = %216
  %219 = load i32, i32* @ERR_NAME, align 4
  %220 = load i32, i32* @ERR_NOTFOUND, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @stderror(i32 %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %247

223:                                              ; preds = %216
  %224 = load i32, i32* @ERR_NAME, align 4
  %225 = load i32, i32* @ERR_NOTFOUND, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @stderror(i32 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %247

228:                                              ; preds = %216, %216
  %229 = load i32, i32* @ERR_NAME, align 4
  %230 = load i32, i32* @ERR_NOTFOUND, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @stderror(i32 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %247

233:                                              ; preds = %216
  %234 = load i32, i32* @ERR_NAME, align 4
  %235 = load i32, i32* @ERR_NOTFOUND, align 4
  %236 = or i32 %234, %235
  %237 = call i32 @stderror(i32 %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %247

238:                                              ; preds = %216
  %239 = load i32, i32* @Sgoal, align 4
  %240 = call i32 @short2str(i32 %239)
  %241 = call i32 @setname(i32 %240)
  %242 = load i32, i32* @ERR_NAME, align 4
  %243 = load i32, i32* @ERR_NOTFOUND, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @stderror(i32 %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %247

246:                                              ; preds = %216
  br label %247

247:                                              ; preds = %246, %238, %233, %228, %223, %218
  store %struct.wordent* null, %struct.wordent** %2, align 8
  br label %248

248:                                              ; preds = %247, %199
  %249 = load %struct.wordent*, %struct.wordent** %2, align 8
  ret %struct.wordent* %249
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local signext i8 @readc(i32) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

declare dso_local i32 @unreadc(i8 signext) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i32) #1

declare dso_local i8* @Strsave(i32*) #1

declare dso_local i32 @stderror(i32, i8*) #1

declare dso_local i32 @setname(i32) #1

declare dso_local i32 @short2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
