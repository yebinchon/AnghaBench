; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_encode_bitsring.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_encode_bitsring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@digitvalue = common dso_local global i32* null, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@DNS_LABELTYPE_BITSTRING = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8**, i8**, i8*)* @encode_bitsring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_bitsring(i8** %0, i8* %1, i8** %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i8**, i8*** %7, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %16, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = icmp slt i64 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %221

33:                                               ; preds = %5
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %13, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 120
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %221

41:                                               ; preds = %33
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  %47 = call i32 @isxdigit(i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %6, align 4
  br label %221

51:                                               ; preds = %41
  %52 = load i8**, i8*** %10, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %14, align 8
  br label %55

55:                                               ; preds = %165, %51
  %56 = load i8*, i8** %13, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ult i8* %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %168

65:                                               ; preds = %63
  %66 = load i8*, i8** %13, align 8
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %15, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %102 [
    i32 93, label %69
    i32 47, label %101
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i8*, i8** %16, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %6, align 4
  br label %221

77:                                               ; preds = %72
  %78 = load i8*, i8** %16, align 8
  %79 = call i64 @strtol(i8* %78, i8** %17, i32 10)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %21, align 4
  %81 = load i8*, i8** %17, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 93
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %6, align 4
  br label %221

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %18, align 4
  %93 = shl i32 %92, 4
  %94 = and i32 %93, 255
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %14, align 8
  store i8 %95, i8* %96, align 1
  br label %98

98:                                               ; preds = %91, %88
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  br label %169

101:                                              ; preds = %65
  store i32 1, i32* %12, align 4
  br label %164

102:                                              ; preds = %65
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load i8, i8* %15, align 1
  %107 = sext i8 %106 to i32
  %108 = and i32 %107, 255
  %109 = trunc i32 %108 to i8
  %110 = call i32 @isdigit(i8 signext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %6, align 4
  br label %221

114:                                              ; preds = %105
  %115 = load i8*, i8** %16, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i8, i8* %15, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 48
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %6, align 4
  br label %221

123:                                              ; preds = %117
  %124 = load i8*, i8** %13, align 8
  store i8* %124, i8** %16, align 8
  br label %125

125:                                              ; preds = %123, %114
  br label %163

126:                                              ; preds = %102
  %127 = load i8, i8* %15, align 1
  %128 = sext i8 %127 to i32
  %129 = and i32 %128, 255
  %130 = trunc i32 %129 to i8
  %131 = call i32 @isxdigit(i8 signext %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %6, align 4
  br label %221

135:                                              ; preds = %126
  %136 = load i32, i32* %18, align 4
  %137 = shl i32 %136, 4
  store i32 %137, i32* %18, align 4
  %138 = load i32*, i32** @digitvalue, align 8
  %139 = load i8, i8* %15, align 1
  %140 = sext i8 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 4
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp sgt i32 %150, 256
  br i1 %151, label %152, label %154

152:                                              ; preds = %135
  %153 = load i32, i32* @EINVAL, align 4
  store i32 %153, i32* %6, align 4
  br label %221

154:                                              ; preds = %135
  %155 = load i32, i32* %19, align 4
  %156 = icmp eq i32 %155, 8
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32, i32* %18, align 4
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %14, align 8
  store i8 %159, i8* %160, align 1
  store i32 0, i32* %19, align 4
  br label %162

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %125
  br label %164

164:                                              ; preds = %163, %101
  br label %165

165:                                              ; preds = %164
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %13, align 8
  br label %55

168:                                              ; preds = %63
  br label %169

169:                                              ; preds = %168, %98
  %170 = load i8*, i8** %13, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = icmp uge i8* %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i8*, i8** %14, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = icmp uge i8* %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173, %169
  %178 = load i32, i32* @EMSGSIZE, align 4
  store i32 %178, i32* %6, align 4
  br label %221

179:                                              ; preds = %173
  %180 = load i32, i32* %21, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %203

182:                                              ; preds = %179
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 3
  %185 = and i32 %184, -4
  %186 = load i32, i32* %20, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* @EINVAL, align 4
  store i32 %189, i32* %6, align 4
  br label %221

190:                                              ; preds = %182
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %21, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %22, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %22, align 4
  %196 = sub nsw i32 8, %195
  %197 = shl i32 %194, %196
  %198 = and i32 %197, 255
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %190
  %201 = load i32, i32* @EINVAL, align 4
  store i32 %201, i32* %6, align 4
  br label %221

202:                                              ; preds = %190
  br label %205

203:                                              ; preds = %179
  %204 = load i32, i32* %20, align 4
  store i32 %204, i32* %21, align 4
  br label %205

205:                                              ; preds = %203, %202
  %206 = load i32, i32* %21, align 4
  %207 = icmp eq i32 %206, 256
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 0, i32* %21, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i8, i8* @DNS_LABELTYPE_BITSTRING, align 1
  %211 = load i8**, i8*** %9, align 8
  %212 = load i8*, i8** %211, align 8
  store i8 %210, i8* %212, align 1
  %213 = load i32, i32* %21, align 4
  %214 = trunc i32 %213 to i8
  %215 = load i8**, i8*** %10, align 8
  %216 = load i8*, i8** %215, align 8
  store i8 %214, i8* %216, align 1
  %217 = load i8*, i8** %13, align 8
  %218 = load i8**, i8*** %7, align 8
  store i8* %217, i8** %218, align 8
  %219 = load i8*, i8** %14, align 8
  %220 = load i8**, i8*** %10, align 8
  store i8* %219, i8** %220, align 8
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %209, %200, %188, %177, %152, %133, %121, %112, %85, %75, %49, %39, %31
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
