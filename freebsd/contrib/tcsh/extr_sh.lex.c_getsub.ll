; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_getsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_getsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }
%struct.wordent = type { i32 }

@exclnxt = common dso_local global i64 0, align 8
@FLAG_G = common dso_local global i32 0, align 4
@FLAG_A = common dso_local global i32 0, align 4
@justpr = common dso_local global i32 0, align 4
@slhs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ERR_NOSUBST = common dso_local global i32 0, align 4
@lhsb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@ERR_BADSUBST = common dso_local global i32 0, align 4
@ERR_LHS = common dso_local global i32 0, align 4
@rhsb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ERR_BADBANGMOD = common dso_local global i32 0, align 4
@exclc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wordent* (%struct.wordent*)* @getsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wordent* @getsub(%struct.wordent* %0) #0 {
  %2 = alloca %struct.wordent*, align 8
  %3 = alloca %struct.wordent*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %3, align 8
  br label %8

8:                                                ; preds = %198, %1
  store i64 0, i64* @exclnxt, align 8
  store i32 0, i32* %7, align 4
  %9 = call signext i8 @getC(i32 0)
  store i8 %9, i8* %5, align 1
  store i8 %9, i8* %6, align 1
  br label %10

10:                                               ; preds = %28, %8
  %11 = load i8, i8* %5, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 103
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %5, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 97
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ true, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 103
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @FLAG_G, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @FLAG_A, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = call signext i8 @getC(i32 0)
  store i8 %32, i8* %5, align 1
  store i8 %32, i8* %6, align 1
  br label %10

33:                                               ; preds = %18
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %166 [
    i32 112, label %36
    i32 120, label %40
    i32 113, label %40
    i32 104, label %44
    i32 114, label %44
    i32 116, label %44
    i32 101, label %44
    i32 117, label %44
    i32 108, label %44
    i32 38, label %45
    i32 115, label %56
  ]

36:                                               ; preds = %33
  %37 = load i32, i32* @justpr, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @justpr, align 4
  %39 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %39, %struct.wordent** %2, align 8
  br label %206

40:                                               ; preds = %33, %33
  %41 = load i32, i32* @FLAG_G, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %33, %33, %33, %33, %33, %33, %40
  br label %179

45:                                               ; preds = %33
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @slhs, i32 0, i32 0), align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @ERR_NOSUBST, align 4
  %50 = call i32 (i32, ...) @seterror(i32 %49)
  %51 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %51, %struct.wordent** %2, align 8
  br label %206

52:                                               ; preds = %45
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 0), align 8
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @slhs, i32 0, i32 1), align 8
  %54 = call i32 @Strbuf_append(%struct.TYPE_7__* @lhsb, i32* %53)
  %55 = call i32 @Strbuf_terminate(%struct.TYPE_7__* @lhsb)
  br label %179

56:                                               ; preds = %33
  %57 = call signext i8 @getC(i32 0)
  store i8 %57, i8* %4, align 1
  %58 = load i8, i8* %4, align 1
  %59 = call i32 @letter(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load i8, i8* %4, align 1
  %63 = call i32 @Isdigit(i8 signext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8, i8* %4, align 1
  %67 = call i32 @any(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %61, %56
  %70 = load i8, i8* %4, align 1
  %71 = call i32 @unreadc(i8 signext %70)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 0), align 8
  %72 = load i32, i32* @ERR_BADSUBST, align 4
  %73 = call i32 (i32, ...) @seterror(i32 %72)
  %74 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %74, %struct.wordent** %2, align 8
  br label %206

75:                                               ; preds = %65
  %76 = call i32 @Strbuf_terminate(%struct.TYPE_7__* @lhsb)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 0), align 8
  br label %77

77:                                               ; preds = %110, %75
  %78 = call signext i8 @getC(i32 0)
  store i8 %78, i8* %5, align 1
  %79 = load i8, i8* %5, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8, i8* %5, align 1
  %84 = call i32 @unreadc(i8 signext %83)
  br label %113

85:                                               ; preds = %77
  %86 = load i8, i8* %5, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* %4, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %113

92:                                               ; preds = %85
  %93 = load i8, i8* %5, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 92
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = call signext i8 @getC(i32 0)
  store i8 %97, i8* %5, align 1
  %98 = load i8, i8* %5, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* %4, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i8, i8* %5, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 92
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @Strbuf_append1(%struct.TYPE_7__* @lhsb, i8 signext 92)
  br label %109

109:                                              ; preds = %107, %103, %96
  br label %110

110:                                              ; preds = %109, %92
  %111 = load i8, i8* %5, align 1
  %112 = call i32 @Strbuf_append1(%struct.TYPE_7__* @lhsb, i8 signext %111)
  br label %77

113:                                              ; preds = %91, %82
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 0), align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 @Strbuf_terminate(%struct.TYPE_7__* @lhsb)
  br label %131

118:                                              ; preds = %113
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 1), align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @ERR_LHS, align 4
  %125 = call i32 (i32, ...) @seterror(i32 %124)
  %126 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %126, %struct.wordent** %2, align 8
  br label %206

127:                                              ; preds = %118
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 1), align 8
  %129 = call i64 @Strlen(i32* %128)
  store i64 %129, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 0), align 8
  br label %130

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130, %116
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rhsb, i32 0, i32 0), align 8
  br label %132

132:                                              ; preds = %161, %131
  %133 = call signext i8 @getC(i32 0)
  store i8 %133, i8* %5, align 1
  %134 = load i8, i8* %5, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 10
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i8, i8* %5, align 1
  %139 = call i32 @unreadc(i8 signext %138)
  br label %164

140:                                              ; preds = %132
  %141 = load i8, i8* %5, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* %4, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %164

147:                                              ; preds = %140
  %148 = load i8, i8* %5, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 92
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = call signext i8 @getC(i32 0)
  store i8 %152, i8* %5, align 1
  %153 = load i8, i8* %5, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* %4, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 @Strbuf_append1(%struct.TYPE_7__* @rhsb, i8 signext 92)
  br label %160

160:                                              ; preds = %158, %151
  br label %161

161:                                              ; preds = %160, %147
  %162 = load i8, i8* %5, align 1
  %163 = call i32 @Strbuf_append1(%struct.TYPE_7__* @rhsb, i8 signext %162)
  br label %132

164:                                              ; preds = %146, %137
  %165 = call i32 @Strbuf_terminate(%struct.TYPE_7__* @rhsb)
  br label %179

166:                                              ; preds = %33
  %167 = load i8, i8* %5, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 10
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i8, i8* %5, align 1
  %172 = call i32 @unreadc(i8 signext %171)
  br label %173

173:                                              ; preds = %170, %166
  %174 = load i32, i32* @ERR_BADBANGMOD, align 4
  %175 = load i8, i8* %5, align 1
  %176 = sext i8 %175 to i32
  %177 = call i32 (i32, ...) @seterror(i32 %174, i32 %176)
  %178 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %178, %struct.wordent** %2, align 8
  br label %206

179:                                              ; preds = %164, %52, %44
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @slhs, i32 0, i32 0), align 8
  %180 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 1), align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 0), align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lhsb, i32 0, i32 1), align 8
  %187 = call i32 @Strbuf_append(%struct.TYPE_7__* @slhs, i32* %186)
  br label %188

188:                                              ; preds = %185, %182, %179
  %189 = call i32 @Strbuf_terminate(%struct.TYPE_7__* @slhs)
  %190 = load i64, i64* @exclc, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i8, i8* %6, align 1
  %194 = load %struct.wordent*, %struct.wordent** %3, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call %struct.wordent* @dosub(i8 signext %193, %struct.wordent* %194, i32 %195)
  store %struct.wordent* %196, %struct.wordent** %3, align 8
  br label %197

197:                                              ; preds = %192, %188
  br label %198

198:                                              ; preds = %197
  %199 = call signext i8 @getC(i32 0)
  store i8 %199, i8* %5, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 58
  br i1 %201, label %8, label %202

202:                                              ; preds = %198
  %203 = load i8, i8* %5, align 1
  %204 = call i32 @unreadc(i8 signext %203)
  %205 = load %struct.wordent*, %struct.wordent** %3, align 8
  store %struct.wordent* %205, %struct.wordent** %2, align 8
  br label %206

206:                                              ; preds = %202, %173, %123, %69, %48, %36
  %207 = load %struct.wordent*, %struct.wordent** %2, align 8
  ret %struct.wordent* %207
}

declare dso_local signext i8 @getC(i32) #1

declare dso_local i32 @seterror(i32, ...) #1

declare dso_local i32 @Strbuf_append(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @Strbuf_terminate(%struct.TYPE_7__*) #1

declare dso_local i32 @letter(i8 signext) #1

declare dso_local i32 @Isdigit(i8 signext) #1

declare dso_local i32 @any(i8*, i8 signext) #1

declare dso_local i32 @unreadc(i8 signext) #1

declare dso_local i32 @Strbuf_append1(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i64 @Strlen(i32*) #1

declare dso_local %struct.wordent* @dosub(i8 signext, %struct.wordent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
