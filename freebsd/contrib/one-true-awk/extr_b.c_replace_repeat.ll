; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_replace_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_replace_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@basestr = common dso_local global i8* null, align 8
@REPEAT_PLUS_APPENDED = common dso_local global i32 0, align 4
@REPEAT_WITH_Q = common dso_local global i32 0, align 4
@REPEAT_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"out of space in reg expr %.10s..\00", align 1
@lastre = common dso_local global i32 0, align 4
@firstbasestr = common dso_local global i8* null, align 8
@prestr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32, i32)* @replace_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_repeat(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i8* null, i8** %17, align 8
  store i32 1, i32* %18, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %20, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** @basestr, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %21, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %22, align 4
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %22, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %7
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %47, 1
  %49 = mul nsw i32 %46, %48
  %50 = load i32, i32* %23, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %23, align 4
  br label %52

52:                                               ; preds = %45, %7
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @REPEAT_PLUS_APPENDED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %23, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %23, align 4
  br label %81

59:                                               ; preds = %52
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @REPEAT_WITH_Q, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %20, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %64, %68
  %70 = load i32, i32* %23, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %23, align 4
  br label %80

72:                                               ; preds = %59
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @REPEAT_ZERO, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %23, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %23, align 4
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %23, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i64 @malloc(i32 %83)
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %17, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @lastre, align 4
  %89 = call i32 @FATAL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i8*, i8** %17, align 8
  %92 = load i8*, i8** @basestr, align 8
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  %95 = load i32, i32* %21, align 4
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @REPEAT_ZERO, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %16, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %16, align 4
  %103 = load i8*, i8** %17, align 8
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 40, i8* %107, align 1
  %108 = load i8*, i8** %17, align 8
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8 41, i8* %112, align 1
  br label %113

113:                                              ; preds = %99, %90
  store i32 1, i32* %15, align 4
  br label %114

114:                                              ; preds = %129, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i8*, i8** %17, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @memcpy(i8* %122, i8* %123, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %114

132:                                              ; preds = %114
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @REPEAT_PLUS_APPENDED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8 43, i8* %141, align 1
  br label %181

142:                                              ; preds = %132
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @REPEAT_WITH_Q, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %180

146:                                              ; preds = %142
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i8*, i8** %17, align 8
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 63, i8* %154, align 1
  br label %155

155:                                              ; preds = %149, %146
  store i32 0, i32* %15, align 4
  br label %156

156:                                              ; preds = %176, %155
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %20, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %179

160:                                              ; preds = %156
  %161 = load i8*, i8** %17, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @memcpy(i8* %164, i8* %165, i32 %166)
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %16, align 4
  %171 = load i8*, i8** %17, align 8
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  store i8 63, i8* %175, align 1
  br label %176

176:                                              ; preds = %160
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %156

179:                                              ; preds = %156
  br label %180

180:                                              ; preds = %179, %142
  br label %181

181:                                              ; preds = %180, %136
  %182 = load i8*, i8** %17, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i32, i32* %22, align 4
  %191 = call i32 @memcpy(i8* %185, i8* %189, i32 %190)
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @REPEAT_ZERO, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %181
  %196 = load i8*, i8** %17, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %22, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  store i8 0, i8* %201, align 1
  br label %207

202:                                              ; preds = %181
  %203 = load i8*, i8** %17, align 8
  %204 = load i32, i32* %23, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  store i8 0, i8* %206, align 1
  br label %207

207:                                              ; preds = %202, %195
  %208 = load i8*, i8** @firstbasestr, align 8
  %209 = load i8*, i8** @basestr, align 8
  %210 = icmp ne i8* %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i8*, i8** @basestr, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i8*, i8** @basestr, align 8
  %216 = call i32 @xfree(i8* %215)
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %207
  %219 = load i8*, i8** %17, align 8
  store i8* %219, i8** @basestr, align 8
  %220 = load i8*, i8** %17, align 8
  %221 = load i32, i32* %21, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  store i8* %223, i8** @prestr, align 8
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* @REPEAT_ZERO, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %218
  %228 = load i32, i32* %11, align 4
  %229 = load i8*, i8** @prestr, align 8
  %230 = sext i32 %228 to i64
  %231 = sub i64 0, %230
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  store i8* %232, i8** @prestr, align 8
  %233 = load i32, i32* %18, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %18, align 4
  br label %235

235:                                              ; preds = %227, %218
  %236 = load i32, i32* %18, align 4
  ret i32 %236
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
