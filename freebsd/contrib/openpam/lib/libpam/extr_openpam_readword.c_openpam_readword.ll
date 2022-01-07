; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_readword.c_openpam_readword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_readword.c_openpam_readword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @openpam_readword(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* @errno, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %67, %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @getc(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %15
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %68

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %30, %27
  store i32 0, i32* %12, align 4
  br label %67

35:                                               ; preds = %20
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %68

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %52, %42
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @getc(i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @EOF, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %53

52:                                               ; preds = %48
  br label %43

53:                                               ; preds = %51, %43
  br label %68

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @is_ws(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %68

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %57
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %34
  br label %15

68:                                               ; preds = %62, %53, %38, %26, %15
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @EOF, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i8* null, i8** %4, align 8
  br label %227

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @ungetc(i32 %74, i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i8* null, i8** %4, align 8
  br label %227

80:                                               ; preds = %73
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %186, %80
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @fgetc(i32* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* @EOF, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @is_ws(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %93, %90, %86
  %97 = phi i1 [ true, %90 ], [ true, %86 ], [ %95, %93 ]
  br label %98

98:                                               ; preds = %96, %81
  %99 = phi i1 [ false, %81 ], [ %97, %96 ]
  br i1 %99, label %100, label %187

100:                                              ; preds = %98
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 92
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 39
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %12, align 4
  br label %176

111:                                              ; preds = %106, %103, %100
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 39
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 34
  br i1 %116, label %117, label %129

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %13, align 4
  %125 = call i64 @openpam_straddch(i8** %8, i64* %9, i64* %10, i32 0)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i8* null, i8** %4, align 8
  br label %227

128:                                              ; preds = %123
  br label %175

129:                                              ; preds = %120, %117, %114
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  store i32 0, i32* %13, align 4
  br label %174

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 10
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  br label %173

144:                                              ; preds = %140, %137
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 92
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = call i64 @openpam_straddch(i8** %8, i64* %9, i64* %10, i32 92)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load i32, i32* @ENOMEM, align 4
  store i32 %163, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %227

164:                                              ; preds = %157, %153, %150, %147, %144
  %165 = load i32, i32* %11, align 4
  %166 = call i64 @openpam_straddch(i8** %8, i64* %9, i64* %10, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i32, i32* @ENOMEM, align 4
  store i32 %171, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %227

172:                                              ; preds = %164
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %172, %143
  br label %174

174:                                              ; preds = %173, %136
  br label %175

175:                                              ; preds = %174, %128
  br label %176

176:                                              ; preds = %175, %109
  %177 = load i32*, i32** %6, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 10
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %182, %179, %176
  br label %81

187:                                              ; preds = %98
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @EOF, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i32*, i32** %5, align 8
  %193 = call i64 @ferror(i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i32, i32* @errno, align 4
  store i32 %196, i32* %14, align 4
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @free(i8* %197)
  %199 = load i32, i32* %14, align 4
  store i32 %199, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %227

200:                                              ; preds = %191, %187
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @EOF, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %200
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207, %204
  %211 = load i32, i32* @PAM_LOG_DEBUG, align 4
  %212 = call i32 @openpam_log(i32 %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @free(i8* %213)
  %215 = load i32, i32* @EINVAL, align 4
  store i32 %215, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %227

216:                                              ; preds = %207, %200
  %217 = load i32, i32* %11, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @ungetc(i32 %217, i32* %218)
  %220 = load i64*, i64** %7, align 8
  %221 = icmp ne i64* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i64, i64* %10, align 8
  %224 = load i64*, i64** %7, align 8
  store i64 %223, i64* %224, align 8
  br label %225

225:                                              ; preds = %222, %216
  %226 = load i8*, i8** %8, align 8
  store i8* %226, i8** %4, align 8
  br label %227

227:                                              ; preds = %225, %210, %195, %168, %160, %127, %79, %72
  %228 = load i8*, i8** %4, align 8
  ret i8* %228
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @is_ws(i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @openpam_straddch(i8**, i64*, i64*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @openpam_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
