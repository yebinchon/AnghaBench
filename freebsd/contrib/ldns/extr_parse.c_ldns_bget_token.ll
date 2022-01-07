; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_parse.c_ldns_bget_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_parse.c_ldns_bget_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_PARSE_NORMAL = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_bget_token(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** @LDNS_PARSE_NORMAL, align 8
  store i8* %22, i8** %18, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %18, align 8
  br label %25

25:                                               ; preds = %23, %21
  store i32 0, i32* %12, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %15, align 8
  store i32 0, i32* %11, align 4
  %27 = load i8*, i8** %18, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %14, align 4
  br label %33

33:                                               ; preds = %32, %25
  br label %34

34:                                               ; preds = %185, %126, %117, %111, %75, %58, %33
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ldns_bgetc(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @EOF, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %186

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 32, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 40
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 92
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %11, align 4
  br label %34

60:                                               ; preds = %49, %46, %43
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 41
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 92
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %11, align 4
  br label %34

77:                                               ; preds = %66, %63, %60
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i8*, i8** %15, align 8
  store i8 0, i8* %81, align 1
  store i32 0, i32* %5, align 4
  br label %220

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 59
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 92
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %85, %82
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 34
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 92
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = sub nsw i32 1, %103
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %102, %99, %96, %93
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 10
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  store i32 0, i32* %13, align 4
  %112 = load i8*, i8** %15, align 8
  store i8 32, i8* %112, align 1
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %11, align 4
  br label %34

114:                                              ; preds = %108, %105
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i8*, i8** %15, align 8
  store i8 32, i8* %118, align 1
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %11, align 4
  br label %34

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %15, align 8
  store i8 32, i8* %127, align 1
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %11, align 4
  br label %34

130:                                              ; preds = %123, %120
  %131 = load i8*, i8** %18, align 8
  store i8* %131, i8** %17, align 8
  br label %132

132:                                              ; preds = %150, %130
  %133 = load i8*, i8** %17, align 8
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = load i8*, i8** %17, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 92
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %198

149:                                              ; preds = %145, %142, %136
  br label %150

150:                                              ; preds = %149
  %151 = load i8*, i8** %17, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %17, align 8
  br label %132

153:                                              ; preds = %132
  %154 = load i64, i64* %16, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %16, align 8
  %156 = load i64, i64* %9, align 8
  %157 = icmp ugt i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp uge i64 %159, %160
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load i8*, i8** %15, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = load i64, i64* %9, align 8
  %169 = icmp uge i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %162, %158
  %171 = load i8*, i8** %15, align 8
  store i8 0, i8* %171, align 1
  store i32 -1, i32* %5, align 4
  br label %220

172:                                              ; preds = %162, %153
  %173 = load i32, i32* %10, align 4
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %15, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %15, align 8
  store i8 %174, i8* %175, align 1
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %177, 92
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 92
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 0, i32* %11, align 4
  br label %185

183:                                              ; preds = %179, %172
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %183, %182
  br label %34

186:                                              ; preds = %34
  %187 = load i8*, i8** %15, align 8
  store i8 0, i8* %187, align 1
  %188 = load i64, i64* %16, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 -1, i32* %5, align 4
  br label %220

191:                                              ; preds = %186
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 -1, i32* %5, align 4
  br label %220

195:                                              ; preds = %191
  %196 = load i64, i64* %16, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %5, align 4
  br label %220

198:                                              ; preds = %148
  %199 = load i8*, i8** %18, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 34
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i32*, i32** %6, align 8
  %205 = load i8*, i8** %18, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = call i32 @ldns_bskipcs(i32* %204, i8* %206)
  br label %212

208:                                              ; preds = %198
  %209 = load i32*, i32** %6, align 8
  %210 = load i8*, i8** %18, align 8
  %211 = call i32 @ldns_bskipcs(i32* %209, i8* %210)
  br label %212

212:                                              ; preds = %208, %203
  %213 = load i8*, i8** %15, align 8
  store i8 0, i8* %213, align 1
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 -1, i32* %5, align 4
  br label %220

217:                                              ; preds = %212
  %218 = load i64, i64* %16, align 8
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %217, %216, %195, %194, %190, %170, %80
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @ldns_bgetc(i32*) #1

declare dso_local i32 @ldns_bskipcs(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
