; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_isa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_isa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESTOP = common dso_local global i32 0, align 4
@ADDOP = common dso_local global i32 0, align 4
@MULOP = common dso_local global i32 0, align 4
@EQOP = common dso_local global i32 0, align 4
@EQEQ = common dso_local global i32 0, align 4
@EQMATCH = common dso_local global i32 0, align 4
@NOTEQ = common dso_local global i32 0, align 4
@NOTEQMATCH = common dso_local global i32 0, align 4
@RELOP = common dso_local global i32 0, align 4
@LSS = common dso_local global i32 0, align 4
@GTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @isa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RESTOP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %227

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %227

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %100

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ADDOP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  store i32 1, i32* %3, align 4
  br label %227

42:                                               ; preds = %36, %26
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MULOP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 42
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52, %47
  store i32 1, i32* %3, align 4
  br label %227

63:                                               ; preds = %57, %42
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @RESTOP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 40
  br i1 %72, label %98, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %4, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 41
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %4, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 33
  br i1 %82, label %98, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 126
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 94
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 34
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %88, %83, %78, %73, %68
  store i32 1, i32* %3, align 4
  br label %227

99:                                               ; preds = %93, %63
  br label %206

100:                                              ; preds = %20
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %205

106:                                              ; preds = %100
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @RESTOP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %106
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 124
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 38
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %3, align 4
  br label %227

124:                                              ; preds = %117, %111
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 60
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 60
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 1, i32* %3, align 4
  br label %227

137:                                              ; preds = %130, %124
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 62
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 62
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 1, i32* %3, align 4
  br label %227

150:                                              ; preds = %143, %137
  br label %151

151:                                              ; preds = %150, %106
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @EQOP, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %204

156:                                              ; preds = %151
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 61
  br i1 %161, label %162, label %179

162:                                              ; preds = %156
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 61
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @EQEQ, align 4
  store i32 %169, i32* %3, align 4
  br label %227

170:                                              ; preds = %162
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 126
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* @EQMATCH, align 4
  store i32 %177, i32* %3, align 4
  br label %227

178:                                              ; preds = %170
  br label %203

179:                                              ; preds = %156
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 33
  br i1 %184, label %185, label %202

185:                                              ; preds = %179
  %186 = load i8*, i8** %4, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 61
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* @NOTEQ, align 4
  store i32 %192, i32* %3, align 4
  br label %227

193:                                              ; preds = %185
  %194 = load i8*, i8** %4, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 126
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = load i32, i32* @NOTEQMATCH, align 4
  store i32 %200, i32* %3, align 4
  br label %227

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %179
  br label %203

203:                                              ; preds = %202, %178
  br label %204

204:                                              ; preds = %203, %151
  br label %205

205:                                              ; preds = %204, %100
  br label %206

206:                                              ; preds = %205, %99
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @RELOP, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %206
  %212 = load i8*, i8** %4, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 60
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* @LSS, align 4
  store i32 %217, i32* %3, align 4
  br label %227

218:                                              ; preds = %211
  %219 = load i8*, i8** %4, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 62
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* @GTR, align 4
  store i32 %224, i32* %3, align 4
  br label %227

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225, %206
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %226, %223, %216, %199, %191, %176, %168, %149, %136, %123, %98, %62, %41, %19, %8
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
