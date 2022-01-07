; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_dname_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_dname_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"ErrorMissingDname\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ErrorPartialDname\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ErrorComprPtrOutOfBounds\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ErrorComprPtrLooped\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ErrorLABELTYPE%xIsUnknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_dname_scan(i64** %0, i64* %1, i8** %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64** %0, i64*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i64**, i64*** %8, align 8
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 1000, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i8**, i8*** %10, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %28, i64* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %7, align 4
  br label %256

31:                                               ; preds = %6
  %32 = load i64*, i64** %15, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i64**, i64*** %8, align 8
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %36, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %42, i64* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %7, align 4
  br label %256

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %225, %136, %45
  %47 = load i64*, i64** %15, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %231

50:                                               ; preds = %46
  %51 = load i64*, i64** %15, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %15, align 8
  %53 = load i64, i64* %51, align 8
  store i64 %53, i64* %20, align 8
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i64**, i64*** %8, align 8
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %57, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i64, i64* %20, align 8
  %65 = and i64 %64, 192
  %66 = icmp eq i64 %65, 192
  br i1 %66, label %67, label %140

67:                                               ; preds = %63
  store i64 0, i64* %21, align 8
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = load i8**, i8*** %10, align 8
  %77 = load i64*, i64** %11, align 8
  %78 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %76, i64* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %7, align 4
  br label %256

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = load i64*, i64** %15, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64*, i64** %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = icmp ugt i64* %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  %92 = load i8**, i8*** %10, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %92, i64* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %7, align 4
  br label %256

96:                                               ; preds = %83, %80
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %20, align 8
  %99 = and i64 %98, 63
  %100 = shl i64 %99, 8
  %101 = load i64*, i64** %15, align 8
  %102 = load i64, i64* %101, align 8
  %103 = or i64 %100, %102
  store i64 %103, i64* %21, align 8
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load i64**, i64*** %8, align 8
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %107, align 8
  %110 = load i64*, i64** %9, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %106, %97
  %114 = load i64*, i64** %12, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp uge i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %14, align 4
  %122 = load i8**, i8*** %10, align 8
  %123 = load i64*, i64** %11, align 8
  %124 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %122, i64* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %7, align 4
  br label %256

126:                                              ; preds = %116
  %127 = load i32, i32* %17, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %17, align 4
  %129 = icmp ugt i32 %127, 1000
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* %14, align 4
  %132 = load i8**, i8*** %10, align 8
  %133 = load i64*, i64** %11, align 8
  %134 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %132, i64* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %135 = add nsw i32 %131, %134
  store i32 %135, i32* %7, align 4
  br label %256

136:                                              ; preds = %126
  store i32 0, i32* %19, align 4
  %137 = load i64*, i64** %12, align 8
  %138 = load i64, i64* %21, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  store i64* %139, i64** %15, align 8
  br label %46

140:                                              ; preds = %63
  %141 = load i64, i64* %20, align 8
  %142 = and i64 %141, 192
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load i8**, i8*** %10, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = load i64, i64* %20, align 8
  %148 = and i64 %147, 192
  %149 = trunc i64 %148 to i32
  %150 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %145, i64* %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %7, align 4
  br label %256

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %19, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i64*, i64** %9, align 8
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %20, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i64*, i64** %9, align 8
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %20, align 8
  br label %187

166:                                              ; preds = %158, %155
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %166
  %170 = load i64*, i64** %15, align 8
  %171 = load i64, i64* %20, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64*, i64** %12, align 8
  %174 = load i64, i64* %13, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = icmp ugt i64* %172, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %169
  %178 = load i64*, i64** %12, align 8
  %179 = load i64, i64* %13, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64*, i64** %15, align 8
  %182 = ptrtoint i64* %180 to i64
  %183 = ptrtoint i64* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 8
  store i64 %185, i64* %20, align 8
  br label %186

186:                                              ; preds = %177, %169, %166
  br label %187

187:                                              ; preds = %186, %163
  store i32 0, i32* %16, align 4
  br label %188

188:                                              ; preds = %205, %187
  %189 = load i32, i32* %16, align 4
  %190 = load i64, i64* %20, align 8
  %191 = trunc i64 %190 to i32
  %192 = icmp ult i32 %189, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = load i8**, i8*** %10, align 8
  %195 = load i64*, i64** %11, align 8
  %196 = load i64*, i64** %15, align 8
  %197 = getelementptr inbounds i64, i64* %196, i32 1
  store i64* %197, i64** %15, align 8
  %198 = load i64, i64* %196, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i64 @dname_char_print(i8** %194, i64* %195, i32 %199)
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, %200
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %193
  %206 = load i32, i32* %16, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %16, align 4
  br label %188

208:                                              ; preds = %188
  %209 = load i32, i32* %19, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %208
  %212 = load i64, i64* %20, align 8
  %213 = load i64**, i64*** %8, align 8
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 %212
  store i64* %215, i64** %213, align 8
  %216 = load i64, i64* %20, align 8
  %217 = load i64*, i64** %9, align 8
  %218 = load i64, i64* %217, align 8
  %219 = sub i64 %218, %216
  store i64 %219, i64* %217, align 8
  %220 = load i64*, i64** %9, align 8
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %211
  br label %231

224:                                              ; preds = %211
  br label %225

225:                                              ; preds = %224, %208
  %226 = load i8**, i8*** %10, align 8
  %227 = load i64*, i64** %11, align 8
  %228 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %226, i64* %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %14, align 4
  br label %46

231:                                              ; preds = %223, %46
  %232 = load i32, i32* %19, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %231
  %235 = load i64*, i64** %9, align 8
  %236 = load i64, i64* %235, align 8
  %237 = icmp ugt i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i64**, i64*** %8, align 8
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i32 1
  store i64* %241, i64** %239, align 8
  %242 = load i64*, i64** %9, align 8
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, -1
  store i64 %244, i64* %242, align 8
  br label %245

245:                                              ; preds = %238, %234, %231
  %246 = load i32, i32* %14, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load i8**, i8*** %10, align 8
  %250 = load i64*, i64** %11, align 8
  %251 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %249, i64* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %248, %245
  %255 = load i32, i32* %14, align 4
  store i32 %255, i32* %7, align 4
  br label %256

256:                                              ; preds = %254, %144, %130, %120, %90, %74, %35, %27
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @dname_char_print(i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
