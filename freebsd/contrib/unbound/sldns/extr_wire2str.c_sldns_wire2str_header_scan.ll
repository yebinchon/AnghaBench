; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_header_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_header_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c";; ->>HEADER<<- \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error empty packet\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error header too short 0x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"opcode: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rcode: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"id: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c";; flags:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" qr\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" aa\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" tc\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" rd\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" cd\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" ra\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" ad\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" z\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" ; \00", align 1
@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"QUERY: %d, \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"ANSWER: %d, \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"AUTHORITY: %d, \00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"ADDITIONAL: %d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_header_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8**, i8*** %8, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %13, i64* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %10, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = load i8**, i8*** %8, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %23, i64* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %5, align 4
  br label %249

27:                                               ; preds = %4
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32**, i32*** %6, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = call i32 @print_remainder_hex(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32** %33, i64* %34, i8** %35, i64* %36)
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %5, align 4
  br label %249

39:                                               ; preds = %27
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @LDNS_OPCODE_WIRE(i32* %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @LDNS_RCODE_WIRE(i32* %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i8**, i8*** %8, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %48, i64* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i8**, i8*** %8, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @sldns_wire2str_opcode_print(i8** %53, i64* %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i8**, i8*** %8, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %61, i64* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i8**, i8*** %8, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %66, i64* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i8**, i8*** %8, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @sldns_wire2str_rcode_print(i8** %71, i64* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i8**, i8*** %8, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %79, i64* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i8**, i8*** %8, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i32**, i32*** %6, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @LDNS_ID_WIRE(i32* %87)
  %89 = trunc i64 %88 to i32
  %90 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %84, i64* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i8**, i8*** %8, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %93, i64* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32**, i32*** %6, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @LDNS_QR_WIRE(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %39
  %103 = load i8**, i8*** %8, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %103, i64* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %102, %39
  %109 = load i32**, i32*** %6, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = call i64 @LDNS_AA_WIRE(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i8**, i8*** %8, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %114, i64* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i32**, i32*** %6, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @LDNS_TC_WIRE(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i8**, i8*** %8, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %125, i64* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32**, i32*** %6, align 8
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @LDNS_RD_WIRE(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i8**, i8*** %8, align 8
  %137 = load i64*, i64** %9, align 8
  %138 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %136, i64* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %135, %130
  %142 = load i32**, i32*** %6, align 8
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @LDNS_CD_WIRE(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i8**, i8*** %8, align 8
  %148 = load i64*, i64** %9, align 8
  %149 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %147, i64* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32**, i32*** %6, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @LDNS_RA_WIRE(i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i8**, i8*** %8, align 8
  %159 = load i64*, i64** %9, align 8
  %160 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %158, i64* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %157, %152
  %164 = load i32**, i32*** %6, align 8
  %165 = load i32*, i32** %164, align 8
  %166 = call i64 @LDNS_AD_WIRE(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i8**, i8*** %8, align 8
  %170 = load i64*, i64** %9, align 8
  %171 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %169, i64* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32**, i32*** %6, align 8
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @LDNS_Z_WIRE(i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i8**, i8*** %8, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %180, i64* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %179, %174
  %186 = load i8**, i8*** %8, align 8
  %187 = load i64*, i64** %9, align 8
  %188 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %186, i64* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load i64*, i64** %7, align 8
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %185
  %196 = load i32, i32* %10, align 4
  %197 = load i32**, i32*** %6, align 8
  %198 = load i64*, i64** %7, align 8
  %199 = load i8**, i8*** %8, align 8
  %200 = load i64*, i64** %9, align 8
  %201 = call i32 @print_remainder_hex(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32** %197, i64* %198, i8** %199, i64* %200)
  %202 = add nsw i32 %196, %201
  store i32 %202, i32* %5, align 4
  br label %249

203:                                              ; preds = %185
  %204 = load i8**, i8*** %8, align 8
  %205 = load i64*, i64** %9, align 8
  %206 = load i32**, i32*** %6, align 8
  %207 = load i32*, i32** %206, align 8
  %208 = call i64 @LDNS_QDCOUNT(i32* %207)
  %209 = trunc i64 %208 to i32
  %210 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %204, i64* %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %10, align 4
  %213 = load i8**, i8*** %8, align 8
  %214 = load i64*, i64** %9, align 8
  %215 = load i32**, i32*** %6, align 8
  %216 = load i32*, i32** %215, align 8
  %217 = call i64 @LDNS_ANCOUNT(i32* %216)
  %218 = trunc i64 %217 to i32
  %219 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %213, i64* %214, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %10, align 4
  %222 = load i8**, i8*** %8, align 8
  %223 = load i64*, i64** %9, align 8
  %224 = load i32**, i32*** %6, align 8
  %225 = load i32*, i32** %224, align 8
  %226 = call i64 @LDNS_NSCOUNT(i32* %225)
  %227 = trunc i64 %226 to i32
  %228 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %222, i64* %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %10, align 4
  %231 = load i8**, i8*** %8, align 8
  %232 = load i64*, i64** %9, align 8
  %233 = load i32**, i32*** %6, align 8
  %234 = load i32*, i32** %233, align 8
  %235 = call i64 @LDNS_ARCOUNT(i32* %234)
  %236 = trunc i64 %235 to i32
  %237 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %231, i64* %232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %10, align 4
  %240 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %241 = load i32**, i32*** %6, align 8
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 %240
  store i32* %243, i32** %241, align 8
  %244 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %245 = load i64*, i64** %7, align 8
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 %246, %244
  store i64 %247, i64* %245, align 8
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %203, %195, %31, %21
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i32 @print_remainder_hex(i8*, i32**, i64*, i8**, i64*) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i32*) #1

declare dso_local i64 @LDNS_RCODE_WIRE(i32*) #1

declare dso_local i64 @sldns_wire2str_opcode_print(i8**, i64*, i32) #1

declare dso_local i64 @sldns_wire2str_rcode_print(i8**, i64*, i32) #1

declare dso_local i64 @LDNS_ID_WIRE(i32*) #1

declare dso_local i64 @LDNS_QR_WIRE(i32*) #1

declare dso_local i64 @LDNS_AA_WIRE(i32*) #1

declare dso_local i64 @LDNS_TC_WIRE(i32*) #1

declare dso_local i64 @LDNS_RD_WIRE(i32*) #1

declare dso_local i64 @LDNS_CD_WIRE(i32*) #1

declare dso_local i64 @LDNS_RA_WIRE(i32*) #1

declare dso_local i64 @LDNS_AD_WIRE(i32*) #1

declare dso_local i64 @LDNS_Z_WIRE(i32*) #1

declare dso_local i64 @LDNS_QDCOUNT(i32*) #1

declare dso_local i64 @LDNS_ANCOUNT(i32*) #1

declare dso_local i64 @LDNS_NSCOUNT(i32*) #1

declare dso_local i64 @LDNS_ARCOUNT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
