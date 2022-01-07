; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_res_pquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_res_pquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c";; ns_initparse: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ns_f_opcode = common dso_local global i32 0, align 4
@ns_f_rcode = common dso_local global i32 0, align 4
@ns_s_qd = common dso_local global i32 0, align 4
@ns_s_an = common dso_local global i32 0, align 4
@ns_s_ns = common dso_local global i32 0, align 4
@ns_s_ar = common dso_local global i32 0, align 4
@RES_PRF_HEADX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c";; ->>HEADER<<- opcode: %s, status: %s, id: %d\0A\00", align 1
@_res_opcodes = common dso_local global i8** null, align 8
@RES_PRF_HEAD2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"; flags:\00", align 1
@ns_f_qr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" qr\00", align 1
@ns_f_aa = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" aa\00", align 1
@ns_f_tc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" tc\00", align 1
@ns_f_rd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" rd\00", align 1
@ns_f_ra = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" ra\00", align 1
@ns_f_z = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c" ??\00", align 1
@ns_f_ad = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c" ad\00", align 1
@ns_f_cd = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c" cd\00", align 1
@RES_PRF_HEAD1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"; %s: %d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c", %s: %d\00", align 1
@RES_PRF_QUES = common dso_local global i32 0, align 4
@RES_PRF_ANS = common dso_local global i32 0, align 4
@RES_PRF_AUTH = common dso_local global i32 0, align 4
@RES_PRF_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @res_pquery(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @ns_initparse(i32* %17, i32 %18, i32* %9)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i8* @strerror(i32 %23)
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %256

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ns_f_opcode, align 4
  %29 = call i64 @ns_msg_getflag(i32 %27, i32 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ns_f_rcode, align 4
  %32 = call i64 @ns_msg_getflag(i32 %30, i32 %31)
  store i64 %32, i64* %15, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @ns_msg_id(i32 %33)
  store i64 %34, i64* %16, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ns_s_qd, align 4
  %37 = call i32 @ns_msg_count(i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ns_s_an, align 4
  %40 = call i32 @ns_msg_count(i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ns_s_ns, align 4
  %43 = call i32 @ns_msg_count(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ns_s_ar, align 4
  %46 = call i32 @ns_msg_count(i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %26
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RES_PRF_HEADX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58, %51, %26
  %62 = load i32*, i32** %8, align 8
  %63 = load i8**, i8*** @_res_opcodes, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i8* @p_rcode(i64 %67)
  %69 = load i64, i64* %16, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %61, %58
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @RES_PRF_HEADX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76, %71
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @putc(i8 signext 59, i32* %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RES_PRF_HEAD2, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %165

98:                                               ; preds = %91, %86
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 (i32*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @ns_f_qr, align 4
  %103 = call i64 @ns_msg_getflag(i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %98
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @ns_f_aa, align 4
  %111 = call i64 @ns_msg_getflag(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @ns_f_tc, align 4
  %119 = call i64 @ns_msg_getflag(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @ns_f_rd, align 4
  %127 = call i64 @ns_msg_getflag(i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @ns_f_ra, align 4
  %135 = call i64 @ns_msg_getflag(i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @ns_f_z, align 4
  %143 = call i64 @ns_msg_getflag(i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @ns_f_ad, align 4
  %151 = call i64 @ns_msg_getflag(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @ns_f_cd, align 4
  %159 = call i64 @ns_msg_getflag(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %156
  br label %165

165:                                              ; preds = %164, %91
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RES_PRF_HEAD1, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %202

177:                                              ; preds = %170, %165
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* @ns_s_qd, align 4
  %180 = load i64, i64* %14, align 8
  %181 = call i8* @p_section(i32 %179, i64 %180)
  %182 = load i32, i32* %10, align 4
  %183 = call i32 (i32*, i8*, ...) @fprintf(i32* %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %181, i32 %182)
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* @ns_s_an, align 4
  %186 = load i64, i64* %14, align 8
  %187 = call i8* @p_section(i32 %185, i64 %186)
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i32*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %187, i32 %188)
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* @ns_s_ns, align 4
  %192 = load i64, i64* %14, align 8
  %193 = call i8* @p_section(i32 %191, i64 %192)
  %194 = load i32, i32* %12, align 4
  %195 = call i32 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %193, i32 %194)
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* @ns_s_ar, align 4
  %198 = load i64, i64* %14, align 8
  %199 = call i8* @p_section(i32 %197, i64 %198)
  %200 = load i32, i32* %13, align 4
  %201 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %199, i32 %200)
  br label %202

202:                                              ; preds = %177, %170
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %202
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @RES_PRF_HEADX, align 4
  %212 = load i32, i32* @RES_PRF_HEAD2, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @RES_PRF_HEAD1, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %210, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %207, %202
  %219 = load i32*, i32** %8, align 8
  %220 = call i32 @putc(i8 signext 10, i32* %219)
  br label %221

221:                                              ; preds = %218, %207
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %223 = load i32, i32* @ns_s_qd, align 4
  %224 = load i32, i32* @RES_PRF_QUES, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = call i32 @do_section(%struct.TYPE_4__* %222, i32* %9, i32 %223, i32 %224, i32* %225)
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %228 = load i32, i32* @ns_s_an, align 4
  %229 = load i32, i32* @RES_PRF_ANS, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = call i32 @do_section(%struct.TYPE_4__* %227, i32* %9, i32 %228, i32 %229, i32* %230)
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %233 = load i32, i32* @ns_s_ns, align 4
  %234 = load i32, i32* @RES_PRF_AUTH, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @do_section(%struct.TYPE_4__* %232, i32* %9, i32 %233, i32 %234, i32* %235)
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %238 = load i32, i32* @ns_s_ar, align 4
  %239 = load i32, i32* @RES_PRF_ADD, align 4
  %240 = load i32*, i32** %8, align 8
  %241 = call i32 @do_section(%struct.TYPE_4__* %237, i32* %9, i32 %238, i32 %239, i32* %240)
  %242 = load i32, i32* %10, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %221
  %245 = load i32, i32* %11, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %244
  %248 = load i32, i32* %12, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32, i32* %13, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32*, i32** %8, align 8
  %255 = call i32 @putc(i8 signext 10, i32* %254)
  br label %256

256:                                              ; preds = %21, %253, %250, %247, %244, %221
  ret void
}

declare dso_local i64 @ns_initparse(i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @ns_msg_getflag(i32, i32) #1

declare dso_local i64 @ns_msg_id(i32) #1

declare dso_local i32 @ns_msg_count(i32, i32) #1

declare dso_local i8* @p_rcode(i64) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i8* @p_section(i32, i64) #1

declare dso_local i32 @do_section(%struct.TYPE_4__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
