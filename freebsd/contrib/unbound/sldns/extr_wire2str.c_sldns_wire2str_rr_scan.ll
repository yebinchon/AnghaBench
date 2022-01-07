; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rr_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rr_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_OPT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" ; Error no ttl,rdata\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c";Error missing RR\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c";Error partial RR 0x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c";Error missing rdatalen\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c";Error missing rdatalen 0x\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\\# %u \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c";Error missing rdata\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c";Error partial rdata 0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rr_scan(i64** %0, i64* %1, i8** %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i64** %0, i64*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load i64**, i64*** %8, align 8
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %15, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  store i8* null, i8** %20, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %28, 3
  br i1 %29, label %30, label %51

30:                                               ; preds = %6
  %31 = load i64**, i64*** %8, align 8
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i64**, i64*** %8, align 8
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = call i8* @sldns_read_uint16(i64* %39)
  %41 = load i8*, i8** @LDNS_RR_TYPE_OPT, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i64**, i64*** %8, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = load i64*, i64** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @sldns_wire2str_edns_scan(i64** %44, i64* %45, i8** %46, i64* %47, i64* %48, i64 %49)
  store i32 %50, i32* %7, align 4
  br label %274

51:                                               ; preds = %36, %30, %6
  %52 = load i64**, i64*** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i8**, i8*** %10, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load i64*, i64** %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @sldns_wire2str_dname_scan(i64** %52, i64* %53, i8** %54, i64* %55, i64* %56, i64 %57)
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load i8**, i8*** %10, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %63, i64* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load i64, i64* %16, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %68, %70
  store i64 %71, i64* %17, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %116

75:                                               ; preds = %51
  %76 = load i64**, i64*** %8, align 8
  %77 = load i64*, i64** %76, align 8
  %78 = call i8* @sldns_read_uint16(i64* %77)
  store i8* %78, i8** %21, align 8
  %79 = load i64**, i64*** %8, align 8
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = call i8* @sldns_read_uint16(i64* %81)
  store i8* %82, i8** %22, align 8
  %83 = load i64**, i64*** %8, align 8
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 4
  store i64* %85, i64** %83, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, 4
  store i64 %88, i64* %86, align 8
  %89 = load i8**, i8*** %10, align 8
  %90 = load i64*, i64** %11, align 8
  %91 = load i8*, i8** %22, align 8
  %92 = call i64 @sldns_wire2str_class_print(i8** %89, i64* %90, i8* %91)
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %14, align 4
  %97 = load i8**, i8*** %10, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %97, i64* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %14, align 4
  %102 = load i8**, i8*** %10, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = call i64 @sldns_wire2str_type_print(i8** %102, i64* %103, i8* %104)
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %14, align 4
  %110 = load i8**, i8*** %10, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %110, i64* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %7, align 4
  br label %274

116:                                              ; preds = %51
  %117 = load i64*, i64** %9, align 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %118, 8
  br i1 %119, label %120, label %145

120:                                              ; preds = %116
  %121 = load i64*, i64** %9, align 8
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = load i8**, i8*** %10, align 8
  %127 = load i64*, i64** %11, align 8
  %128 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %126, i64* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %129 = add nsw i32 %125, %128
  store i32 %129, i32* %7, align 4
  br label %274

130:                                              ; preds = %120
  %131 = load i64**, i64*** %8, align 8
  %132 = load i64*, i64** %9, align 8
  %133 = load i8**, i8*** %10, align 8
  %134 = load i64*, i64** %11, align 8
  %135 = call i64 @print_remainder_hex(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64** %131, i64* %132, i8** %133, i64* %134)
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i8**, i8*** %10, align 8
  %142 = load i64*, i64** %11, align 8
  %143 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %141, i64* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %144 = add nsw i32 %140, %143
  store i32 %144, i32* %7, align 4
  br label %274

145:                                              ; preds = %116
  %146 = load i64**, i64*** %8, align 8
  %147 = load i64*, i64** %146, align 8
  %148 = call i8* @sldns_read_uint16(i64* %147)
  store i8* %148, i8** %20, align 8
  %149 = load i64**, i64*** %8, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = load i8**, i8*** %10, align 8
  %152 = load i64*, i64** %11, align 8
  %153 = call i64 @sldns_rr_tcttl_scan(i64** %149, i64* %150, i8** %151, i64* %152)
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %14, align 4
  %158 = load i8**, i8*** %10, align 8
  %159 = load i64*, i64** %11, align 8
  %160 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %158, i64* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %14, align 4
  %163 = load i64*, i64** %9, align 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ult i64 %164, 2
  br i1 %165, label %166, label %191

166:                                              ; preds = %145
  %167 = load i64*, i64** %9, align 8
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32, i32* %14, align 4
  %172 = load i8**, i8*** %10, align 8
  %173 = load i64*, i64** %11, align 8
  %174 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %172, i64* %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %175 = add nsw i32 %171, %174
  store i32 %175, i32* %7, align 4
  br label %274

176:                                              ; preds = %166
  %177 = load i64**, i64*** %8, align 8
  %178 = load i64*, i64** %9, align 8
  %179 = load i8**, i8*** %10, align 8
  %180 = load i64*, i64** %11, align 8
  %181 = call i64 @print_remainder_hex(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64** %177, i64* %178, i8** %179, i64* %180)
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i8**, i8*** %10, align 8
  %188 = load i64*, i64** %11, align 8
  %189 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %187, i64* %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %190 = add nsw i32 %186, %189
  store i32 %190, i32* %7, align 4
  br label %274

191:                                              ; preds = %145
  %192 = load i64**, i64*** %8, align 8
  %193 = load i64*, i64** %192, align 8
  %194 = call i8* @sldns_read_uint16(i64* %193)
  %195 = ptrtoint i8* %194 to i64
  store i64 %195, i64* %18, align 8
  %196 = load i64, i64* %18, align 8
  store i64 %196, i64* %19, align 8
  %197 = load i64**, i64*** %8, align 8
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 2
  store i64* %199, i64** %197, align 8
  %200 = load i64*, i64** %9, align 8
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 %201, 2
  store i64 %202, i64* %200, align 8
  %203 = load i64*, i64** %9, align 8
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %18, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %239

207:                                              ; preds = %191
  %208 = load i8**, i8*** %10, align 8
  %209 = load i64*, i64** %11, align 8
  %210 = load i64, i64* %18, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %208, i64* %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %14, align 4
  %215 = load i64*, i64** %9, align 8
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %207
  %219 = load i32, i32* %14, align 4
  %220 = load i8**, i8*** %10, align 8
  %221 = load i64*, i64** %11, align 8
  %222 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %220, i64* %221, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %223 = add nsw i32 %219, %222
  store i32 %223, i32* %7, align 4
  br label %274

224:                                              ; preds = %207
  %225 = load i64**, i64*** %8, align 8
  %226 = load i64*, i64** %9, align 8
  %227 = load i8**, i8*** %10, align 8
  %228 = load i64*, i64** %11, align 8
  %229 = call i64 @print_remainder_hex(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64** %225, i64* %226, i8** %227, i64* %228)
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %14, align 4
  %235 = load i8**, i8*** %10, align 8
  %236 = load i64*, i64** %11, align 8
  %237 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %235, i64* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %238 = add nsw i32 %234, %237
  store i32 %238, i32* %7, align 4
  br label %274

239:                                              ; preds = %191
  %240 = load i64**, i64*** %8, align 8
  %241 = load i8**, i8*** %10, align 8
  %242 = load i64*, i64** %11, align 8
  %243 = load i8*, i8** %20, align 8
  %244 = load i64*, i64** %12, align 8
  %245 = load i64, i64* %13, align 8
  %246 = call i64 @sldns_wire2str_rdata_scan(i64** %240, i64* %18, i8** %241, i64* %242, i8* %243, i64* %244, i64 %245)
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %14, align 4
  %251 = load i64, i64* %19, align 8
  %252 = load i64, i64* %18, align 8
  %253 = sub i64 %251, %252
  %254 = load i64*, i64** %9, align 8
  %255 = load i64, i64* %254, align 8
  %256 = sub i64 %255, %253
  store i64 %256, i64* %254, align 8
  %257 = load i8**, i8*** %10, align 8
  %258 = load i64*, i64** %11, align 8
  %259 = load i64*, i64** %15, align 8
  %260 = load i64, i64* %16, align 8
  %261 = load i64, i64* %17, align 8
  %262 = load i8*, i8** %20, align 8
  %263 = call i64 @sldns_wire2str_rr_comment_print(i8** %257, i64* %258, i64* %259, i64 %260, i64 %261, i8* %262)
  %264 = load i32, i32* %14, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %14, align 4
  %268 = load i8**, i8*** %10, align 8
  %269 = load i64*, i64** %11, align 8
  %270 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %268, i64* %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %271 = load i32, i32* %14, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  store i32 %273, i32* %7, align 4
  br label %274

274:                                              ; preds = %239, %224, %218, %176, %170, %130, %124, %75, %43
  %275 = load i32, i32* %7, align 4
  ret i32 %275
}

declare dso_local i8* @sldns_read_uint16(i64*) #1

declare dso_local i32 @sldns_wire2str_edns_scan(i64**, i64*, i8**, i64*, i64*, i64) #1

declare dso_local i64 @sldns_wire2str_dname_scan(i64**, i64*, i8**, i64*, i64*, i64) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @sldns_wire2str_class_print(i8**, i64*, i8*) #1

declare dso_local i64 @sldns_wire2str_type_print(i8**, i64*, i8*) #1

declare dso_local i64 @print_remainder_hex(i8*, i64**, i64*, i8**, i64*) #1

declare dso_local i64 @sldns_rr_tcttl_scan(i64**, i64*, i8**, i64*) #1

declare dso_local i64 @sldns_wire2str_rdata_scan(i64**, i64*, i8**, i64*, i8*, i64*, i64) #1

declare dso_local i64 @sldns_wire2str_rr_comment_print(i8**, i64*, i64*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
