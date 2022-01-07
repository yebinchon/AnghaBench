; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_dolet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_dolet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.varent = type { i32* }

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_VARBEGIN = common dso_local global i32 0, align 4
@ERR_ASSIGN = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@ERR_UNKNOWNOP = common dso_local global i32 0, align 4
@STR1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@ERR_SYNTAX = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dolet(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.varent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %14 = load %struct.command*, %struct.command** %4, align 8
  %15 = call i32 @USE(%struct.command* %14)
  %16 = load i8**, i8*** %3, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %3, align 8
  %18 = load i8**, i8*** %3, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %3, align 8
  %20 = load i8*, i8** %18, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @prvars()
  br label %258

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %253, %25
  store i32 0, i32* %9, align 4
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @letter(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %39, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @alnum(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %33

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @letter(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* @ERR_NAME, align 4
  %54 = load i32, i32* @ERR_VARBEGIN, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @stderror(i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 91
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @getinx(i8* %65, i32* %10)
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i8**, i8*** %3, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8**, i8*** %3, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %3, align 8
  %79 = load i8*, i8** %77, align 8
  store i8* %79, i8** %5, align 8
  br label %80

80:                                               ; preds = %76, %72, %67
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %8, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8 0, i8* %86, align 1
  br label %93

88:                                               ; preds = %80
  %89 = load i32, i32* @ERR_NAME, align 4
  %90 = load i32, i32* @ERR_ASSIGN, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @stderror(i32 %91)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i8**, i8*** %3, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @ERR_NAME, align 4
  %104 = load i32, i32* @ERR_ASSIGN, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @stderror(i32 %105)
  br label %107

107:                                              ; preds = %102, %98, %93
  %108 = load i8*, i8** %6, align 8
  %109 = call i8* @Strsave(i8* %108)
  store i8* %109, i8** %6, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* @xfree, align 4
  %112 = call i32 @cleanup_push(i8* %110, i32 %111)
  %113 = load i8, i8* %8, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 61
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  store i8 61, i8* %7, align 1
  %117 = load i8*, i8** %5, align 8
  %118 = call i8* @xset(i8* %117, i8*** %3)
  store i8* %118, i8** %5, align 8
  br label %178

119:                                              ; preds = %107
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %5, align 8
  %122 = load i8, i8* %120, align 1
  store i8 %122, i8* %7, align 1
  %123 = load i8, i8* %7, align 1
  %124 = call i64 @any(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %119
  %127 = load i8, i8* %7, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* %8, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132, %126
  %138 = load i32, i32* @ERR_NAME, align 4
  %139 = load i32, i32* @ERR_UNKNOWNOP, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @stderror(i32 %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load i8*, i8** @STR1, align 8
  %144 = call i8* @Strsave(i8* %143)
  store i8* %144, i8** %5, align 8
  br label %177

145:                                              ; preds = %119
  %146 = load i8, i8* %8, align 1
  %147 = call i64 @any(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load i8, i8* %7, align 1
  %151 = sext i8 %150 to i32
  %152 = load i8, i8* %8, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i32, i32* @ERR_NAME, align 4
  %157 = load i32, i32* @ERR_UNKNOWNOP, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @stderror(i32 %158)
  br label %160

160:                                              ; preds = %155, %149
  %161 = load i32, i32* @ERR_NAME, align 4
  %162 = load i32, i32* @ERR_SYNTAX, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @stderror(i32 %163)
  br label %165

165:                                              ; preds = %160, %145
  %166 = load i8, i8* %7, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 61
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* @ERR_NAME, align 4
  %171 = load i32, i32* @ERR_UNKNOWNOP, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @stderror(i32 %172)
  br label %174

174:                                              ; preds = %169, %165
  %175 = load i8*, i8** %5, align 8
  %176 = call i8* @xset(i8* %175, i8*** %3)
  store i8* %176, i8** %5, align 8
  br label %177

177:                                              ; preds = %174, %142
  br label %178

178:                                              ; preds = %177, %116
  %179 = load i8*, i8** %5, align 8
  %180 = load i32, i32* @xfree, align 4
  %181 = call i32 @cleanup_push(i8* %179, i32 %180)
  %182 = load i8, i8* %8, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 61
  br i1 %184, label %185, label %201

185:                                              ; preds = %178
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 @asx(i8* %189, i32 %190, i8* %191)
  br label %198

193:                                              ; preds = %185
  %194 = load i8*, i8** %6, align 8
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* @VAR_READWRITE, align 4
  %197 = call i32 @setv(i8* %194, i8* %195, i32 %196)
  br label %198

198:                                              ; preds = %193, %188
  %199 = load i8*, i8** %5, align 8
  %200 = call i32 @cleanup_ignore(i8* %199)
  br label %248

201:                                              ; preds = %178
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %230

204:                                              ; preds = %201
  %205 = load i8*, i8** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call %struct.varent* @getvx(i8* %205, i32 %206)
  store %struct.varent* %207, %struct.varent** %11, align 8
  %208 = load i8, i8* %8, align 1
  %209 = load %struct.varent*, %struct.varent** %11, align 8
  %210 = getelementptr inbounds %struct.varent, %struct.varent* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %5, align 8
  %218 = call i8* @operate(i8 signext %208, i32 %216, i8* %217)
  store i8* %218, i8** %12, align 8
  %219 = load i8*, i8** %12, align 8
  %220 = load i32, i32* @xfree, align 4
  %221 = call i32 @cleanup_push(i8* %219, i32 %220)
  %222 = load i8*, i8** %6, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i8*, i8** %12, align 8
  %225 = call i32 @asx(i8* %222, i32 %223, i8* %224)
  %226 = load i8*, i8** %12, align 8
  %227 = call i32 @cleanup_ignore(i8* %226)
  %228 = load i8*, i8** %12, align 8
  %229 = call i32 @cleanup_until(i8* %228)
  br label %247

230:                                              ; preds = %201
  %231 = load i8, i8* %8, align 1
  %232 = load i8*, i8** %6, align 8
  %233 = call i32 @varval(i8* %232)
  %234 = load i8*, i8** %5, align 8
  %235 = call i8* @operate(i8 signext %231, i32 %233, i8* %234)
  store i8* %235, i8** %13, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load i32, i32* @xfree, align 4
  %238 = call i32 @cleanup_push(i8* %236, i32 %237)
  %239 = load i8*, i8** %6, align 8
  %240 = load i8*, i8** %13, align 8
  %241 = load i32, i32* @VAR_READWRITE, align 4
  %242 = call i32 @setv(i8* %239, i8* %240, i32 %241)
  %243 = load i8*, i8** %13, align 8
  %244 = call i32 @cleanup_ignore(i8* %243)
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @cleanup_until(i8* %245)
  br label %247

247:                                              ; preds = %230, %204
  br label %248

248:                                              ; preds = %247, %198
  %249 = load i8*, i8** %6, align 8
  %250 = call i32 @update_vars(i8* %249)
  %251 = load i8*, i8** %6, align 8
  %252 = call i32 @cleanup_until(i8* %251)
  br label %253

253:                                              ; preds = %248
  %254 = load i8**, i8*** %3, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i32 1
  store i8** %255, i8*** %3, align 8
  %256 = load i8*, i8** %254, align 8
  store i8* %256, i8** %5, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %26, label %258

258:                                              ; preds = %23, %253
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @prvars(...) #1

declare dso_local i64 @letter(i8 signext) #1

declare dso_local i64 @alnum(i8 signext) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i8* @getinx(i8*, i32*) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i8* @xset(i8*, i8***) #1

declare dso_local i64 @any(i8*, i8 signext) #1

declare dso_local i32 @asx(i8*, i32, i8*) #1

declare dso_local i32 @setv(i8*, i8*, i32) #1

declare dso_local i32 @cleanup_ignore(i8*) #1

declare dso_local %struct.varent* @getvx(i8*, i32) #1

declare dso_local i8* @operate(i8 signext, i32, i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @varval(i8*) #1

declare dso_local i32 @update_vars(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
