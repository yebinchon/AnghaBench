; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_pkt2buffer_str_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_pkt2buffer_str_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c";; QUESTION SECTION:\0A;; \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c";; ANSWER SECTION:\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c";; AUTHORITY SECTION:\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c";; ADDITIONAL SECTION:\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c";; Query time: %d msec\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c";; EDNS: version %u; flags:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" do\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c" ; ext-rcode: %d\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" ; udp: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c";; Data: \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c";; TSIG:\0A;; \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c";; SERVER: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c";; WHEN: %s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c";; MSG SIZE  rcvd: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_pkt2buffer_str_fmt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %20, i64* %4, align 8
  br label %243

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @ldns_buffer_status_ok(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %238

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @ldns_pktheader2buffer_str(i32* %26, i32* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @LDNS_STATUS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %4, align 8
  br label %243

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %58, %34
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @ldns_pkt_qdcount(i32* %41)
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ldns_pkt_question(i32* %47)
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @ldns_rr_list_rr(i32 %48, i64 %49)
  %51 = call i64 @ldns_rr2buffer_str_fmt(i32* %45, i32* %46, i64 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @LDNS_STATUS_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %4, align 8
  br label %243

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %39

61:                                               ; preds = %39
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %85, %61
  %67 = load i64, i64* %8, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @ldns_pkt_ancount(i32* %68)
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @ldns_pkt_answer(i32* %74)
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @ldns_rr_list_rr(i32 %75, i64 %76)
  %78 = call i64 @ldns_rr2buffer_str_fmt(i32* %72, i32* %73, i64 %77)
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @LDNS_STATUS_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %4, align 8
  br label %243

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %66

88:                                               ; preds = %66
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %93

93:                                               ; preds = %112, %88
  %94 = load i64, i64* %8, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i64 @ldns_pkt_nscount(i32* %95)
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @ldns_pkt_authority(i32* %101)
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @ldns_rr_list_rr(i32 %102, i64 %103)
  %105 = call i64 @ldns_rr2buffer_str_fmt(i32* %99, i32* %100, i64 %104)
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @LDNS_STATUS_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %4, align 8
  br label %243

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %8, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %93

115:                                              ; preds = %93
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %120

120:                                              ; preds = %139, %115
  %121 = load i64, i64* %8, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i64 @ldns_pkt_arcount(i32* %122)
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @ldns_pkt_additional(i32* %128)
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @ldns_rr_list_rr(i32 %129, i64 %130)
  %132 = call i64 @ldns_rr2buffer_str_fmt(i32* %126, i32* %127, i64 %131)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* @LDNS_STATUS_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %4, align 8
  br label %243

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %8, align 8
  br label %120

142:                                              ; preds = %120
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32*, i32** %5, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @ldns_pkt_querytime(i32* %146)
  %148 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = call i64 @ldns_pkt_edns(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %194

152:                                              ; preds = %142
  %153 = load i32*, i32** %5, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @ldns_pkt_edns_version(i32* %154)
  %156 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i64 @ldns_pkt_edns_do(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %152
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @ldns_pkt_edns_extended_rcode(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load i32*, i32** %5, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @ldns_pkt_edns_extended_rcode(i32* %169)
  %171 = shl i32 %170, 4
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @ldns_pkt_get_rcode(i32* %172)
  %174 = or i32 %171, %173
  %175 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %167, %163
  %177 = load i32*, i32** %5, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @ldns_pkt_edns_udp_size(i32* %178)
  %180 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %7, align 8
  %182 = call i64 @ldns_pkt_edns_data(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %176
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %187 = load i32*, i32** %5, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = call i64 @ldns_pkt_edns_data(i32* %188)
  %190 = call i32 @ldns_rdf2buffer_str(i32* %187, i64 %189)
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %193

193:                                              ; preds = %184, %176
  br label %194

194:                                              ; preds = %193, %142
  %195 = load i32*, i32** %7, align 8
  %196 = call i64 @ldns_pkt_tsig(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load i32*, i32** %5, align 8
  %200 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %201 = load i32*, i32** %5, align 8
  %202 = load i32*, i32** %6, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = call i64 @ldns_pkt_tsig(i32* %203)
  %205 = call i64 @ldns_rr2buffer_str_fmt(i32* %201, i32* %202, i64 %204)
  %206 = load i32*, i32** %5, align 8
  %207 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %208

208:                                              ; preds = %198, %194
  %209 = load i32*, i32** %7, align 8
  %210 = call i64 @ldns_pkt_answerfrom(i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %208
  %213 = load i32*, i32** %7, align 8
  %214 = call i64 @ldns_pkt_answerfrom(i32* %213)
  %215 = call i8* @ldns_rdf2str(i64 %214)
  store i8* %215, i8** %10, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %217)
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 @LDNS_FREE(i8* %219)
  br label %221

221:                                              ; preds = %212, %208
  %222 = load i32*, i32** %7, align 8
  %223 = call i64 @ldns_pkt_timestamp(i32* %222)
  %224 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 %223, i64* %224, align 8
  %225 = bitcast %struct.timeval* %11 to i8*
  %226 = bitcast %struct.timeval* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 8 %226, i64 8, i1 false)
  %227 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %12, align 8
  %229 = load i32*, i32** %5, align 8
  %230 = call i64 @ctime(i64* %12)
  %231 = inttoptr i64 %230 to i8*
  %232 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %231)
  %233 = load i32*, i32** %5, align 8
  %234 = load i32*, i32** %7, align 8
  %235 = call i64 @ldns_pkt_size(i32* %234)
  %236 = trunc i64 %235 to i32
  %237 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %236)
  br label %241

238:                                              ; preds = %21
  %239 = load i32*, i32** %5, align 8
  %240 = call i64 @ldns_buffer_status(i32* %239)
  store i64 %240, i64* %4, align 8
  br label %243

241:                                              ; preds = %221
  %242 = load i64, i64* %9, align 8
  store i64 %242, i64* %4, align 8
  br label %243

243:                                              ; preds = %241, %238, %136, %109, %82, %55, %32, %17
  %244 = load i64, i64* %4, align 8
  ret i64 %244
}

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i64 @ldns_buffer_status_ok(i32*) #1

declare dso_local i64 @ldns_pktheader2buffer_str(i32*, i32*) #1

declare dso_local i64 @ldns_pkt_qdcount(i32*) #1

declare dso_local i64 @ldns_rr2buffer_str_fmt(i32*, i32*, i64) #1

declare dso_local i64 @ldns_rr_list_rr(i32, i64) #1

declare dso_local i32 @ldns_pkt_question(i32*) #1

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i64 @ldns_pkt_nscount(i32*) #1

declare dso_local i32 @ldns_pkt_authority(i32*) #1

declare dso_local i64 @ldns_pkt_arcount(i32*) #1

declare dso_local i32 @ldns_pkt_additional(i32*) #1

declare dso_local i32 @ldns_pkt_querytime(i32*) #1

declare dso_local i64 @ldns_pkt_edns(i32*) #1

declare dso_local i32 @ldns_pkt_edns_version(i32*) #1

declare dso_local i64 @ldns_pkt_edns_do(i32*) #1

declare dso_local i32 @ldns_pkt_edns_extended_rcode(i32*) #1

declare dso_local i32 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i32 @ldns_pkt_edns_udp_size(i32*) #1

declare dso_local i64 @ldns_pkt_edns_data(i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str(i32*, i64) #1

declare dso_local i64 @ldns_pkt_tsig(i32*) #1

declare dso_local i64 @ldns_pkt_answerfrom(i32*) #1

declare dso_local i8* @ldns_rdf2str(i64) #1

declare dso_local i32 @LDNS_FREE(i8*) #1

declare dso_local i64 @ldns_pkt_timestamp(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ctime(i64*) #1

declare dso_local i64 @ldns_pkt_size(i32*) #1

declare dso_local i64 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
