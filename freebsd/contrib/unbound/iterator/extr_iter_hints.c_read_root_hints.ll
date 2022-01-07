; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_read_root_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_read_root_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.sldns_file_parse_state = type { i32, i32, i8*, i32, i32, i8*, i32 }
%struct.delegpt = type { i32, i32 }
%struct.sockaddr_in = type { i32, i32, i8*, i32, i32, i8*, i32 }
%struct.sockaddr_in6 = type { i32, i32, i8*, i32, i32, i8*, i32 }
%struct.sockaddr_storage = type { i32 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not read root hints %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"out of memory reading root hints\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Reading root hints from %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"reading root hints %s %d:%d: %s\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"out of memory.\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@INET_SIZE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@INET6_SIZE = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"root hints %s:%d skipping type %s\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"root hints %s: no NS content\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_hints*, i8*)* @read_root_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_root_hints(%struct.iter_hints* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_hints*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sldns_file_parse_state, align 8
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr_in6, align 8
  %19 = alloca i32, align 4
  %20 = alloca [17 x i8], align 16
  store %struct.iter_hints* %0, %struct.iter_hints** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %33)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %223

35:                                               ; preds = %2
  %36 = call %struct.delegpt* @delegpt_create_mlc(i32* null)
  store %struct.delegpt* %36, %struct.delegpt** %7, align 8
  %37 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %38 = icmp ne %struct.delegpt* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @fclose(i32* %41)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %223

43:                                               ; preds = %35
  %44 = load i32, i32* @VERB_QUERY, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @verbose(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = bitcast %struct.sldns_file_parse_state* %6 to %struct.sockaddr_in6*
  %48 = call i32 @memset(%struct.sockaddr_in6* %47, i32 0, i32 40)
  %49 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %6, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %51 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %194, %76, %43
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @feof(i32* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %195

57:                                               ; preds = %52
  %58 = mul nuw i64 4, %22
  store i64 %58, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = bitcast %struct.sldns_file_parse_state* %6 to %struct.sockaddr_in6*
  %61 = call i32 @sldns_fp2wire_rr_buf(i32* %59, i32* %24, i64* %10, i64* %11, %struct.sockaddr_in6* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @sldns_get_errorstr_parse(i32 %70)
  %72 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %65, i32 %67, i32 %69, i32 %71)
  br label %218

73:                                               ; preds = %57
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %52

77:                                               ; preds = %73
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @sldns_wirerr_get_type(i32* %24, i64 %78, i64 %79)
  %81 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %77
  %84 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @sldns_wirerr_get_rdata(i32* %24, i64 %85, i64 %86)
  %88 = call i32 @delegpt_add_ns_mlc(%struct.delegpt* %84, i32 %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %218

92:                                               ; preds = %83
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @sldns_wirerr_get_class(i32* %24, i64 %93, i64 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %97 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %92
  %101 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %102 = call i32 @delegpt_set_name_mlc(%struct.delegpt* %101, i32* %24)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %218

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %92
  br label %194

108:                                              ; preds = %77
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i64 @sldns_wirerr_get_type(i32* %24, i64 %109, i64 %110)
  %112 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %108
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i64 @sldns_wirerr_get_rdatalen(i32* %24, i64 %115, i64 %116)
  %118 = load i64, i64* @INET_SIZE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %114
  store i32 40, i32* %17, align 4
  %121 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr_in6*
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @memset(%struct.sockaddr_in6* %121, i32 0, i32 %122)
  %124 = load i32, i32* @AF_INET, align 4
  %125 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 6
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %127 = call i64 @htons(i32 %126)
  %128 = inttoptr i64 %127 to i8*
  %129 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 4
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @sldns_wirerr_get_rdata(i32* %24, i64 %131, i64 %132)
  %134 = load i64, i64* @INET_SIZE, align 8
  %135 = call i32 @memmove(i32* %130, i32 %133, i64 %134)
  %136 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %137 = load i64, i64* %11, align 8
  %138 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr_storage*
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @delegpt_add_target_mlc(%struct.delegpt* %136, i32* %24, i64 %137, %struct.sockaddr_storage* %138, i32 %139, i32 0, i32 0)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %120
  %143 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %218

144:                                              ; preds = %120
  br label %193

145:                                              ; preds = %114, %108
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i64 @sldns_wirerr_get_type(i32* %24, i64 %146, i64 %147)
  %149 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %181

151:                                              ; preds = %145
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i64 @sldns_wirerr_get_rdatalen(i32* %24, i64 %152, i64 %153)
  %155 = load i64, i64* @INET6_SIZE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %181

157:                                              ; preds = %151
  store i32 40, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @memset(%struct.sockaddr_in6* %18, i32 0, i32 %158)
  %160 = load i32, i32* @AF_INET6, align 4
  %161 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 3
  store i32 %160, i32* %161, align 8
  %162 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %163 = call i64 @htons(i32 %162)
  %164 = inttoptr i64 %163 to i8*
  %165 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 2
  store i8* %164, i8** %165, align 8
  %166 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 1
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @sldns_wirerr_get_rdata(i32* %24, i64 %167, i64 %168)
  %170 = load i64, i64* @INET6_SIZE, align 8
  %171 = call i32 @memmove(i32* %166, i32 %169, i64 %170)
  %172 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %173 = load i64, i64* %11, align 8
  %174 = bitcast %struct.sockaddr_in6* %18 to %struct.sockaddr_storage*
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @delegpt_add_target_mlc(%struct.delegpt* %172, i32* %24, i64 %173, %struct.sockaddr_storage* %174, i32 %175, i32 0, i32 0)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %157
  %179 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %218

180:                                              ; preds = %157
  br label %192

181:                                              ; preds = %151, %145
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* %11, align 8
  %184 = call i64 @sldns_wirerr_get_type(i32* %24, i64 %182, i64 %183)
  %185 = getelementptr inbounds [17 x i8], [17 x i8]* %20, i64 0, i64 0
  %186 = call i32 @sldns_wire2str_type_buf(i64 %184, i8* %185, i32 17)
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %6, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds [17 x i8], [17 x i8]* %20, i64 0, i64 0
  %191 = call i32 (i8*, i8*, ...) @log_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %187, i32 %189, i8* %190)
  br label %192

192:                                              ; preds = %181, %180
  br label %193

193:                                              ; preds = %192, %144
  br label %194

194:                                              ; preds = %193, %107
  br label %52

195:                                              ; preds = %52
  %196 = load i32*, i32** %14, align 8
  %197 = call i32 @fclose(i32* %196)
  %198 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %199 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %195
  %203 = load i8*, i8** %5, align 8
  %204 = call i32 (i8*, i8*, ...) @log_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %203)
  %205 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %206 = call i32 @delegpt_free_mlc(%struct.delegpt* %205)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %223

207:                                              ; preds = %195
  %208 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %211 = call i32 @hints_insert(%struct.iter_hints* %208, i32 %209, %struct.delegpt* %210, i32 0)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %207
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %223

214:                                              ; preds = %207
  %215 = load i32, i32* @VERB_QUERY, align 4
  %216 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %217 = call i32 @delegpt_log(i32 %215, %struct.delegpt* %216)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %223

218:                                              ; preds = %178, %142, %104, %90, %64
  %219 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %220 = call i32 @delegpt_free_mlc(%struct.delegpt* %219)
  %221 = load i32*, i32** %14, align 8
  %222 = call i32 @fclose(i32* %221)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %223

223:                                              ; preds = %218, %214, %213, %202, %39, %30
  %224 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @log_err(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local %struct.delegpt* @delegpt_create_mlc(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @verbose(i32, i8*, i8*) #2

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @sldns_fp2wire_rr_buf(i32*, i32*, i64*, i64*, %struct.sockaddr_in6*) #2

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i64) #2

declare dso_local i32 @delegpt_add_ns_mlc(%struct.delegpt*, i32, i32) #2

declare dso_local i32 @sldns_wirerr_get_rdata(i32*, i64, i64) #2

declare dso_local i32 @sldns_wirerr_get_class(i32*, i64, i64) #2

declare dso_local i32 @delegpt_set_name_mlc(%struct.delegpt*, i32*) #2

declare dso_local i64 @sldns_wirerr_get_rdatalen(i32*, i64, i64) #2

declare dso_local i64 @htons(i32) #2

declare dso_local i32 @memmove(i32*, i32, i64) #2

declare dso_local i32 @delegpt_add_target_mlc(%struct.delegpt*, i32*, i64, %struct.sockaddr_storage*, i32, i32, i32) #2

declare dso_local i32 @sldns_wire2str_type_buf(i64, i8*, i32) #2

declare dso_local i32 @log_warn(i8*, i8*, ...) #2

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #2

declare dso_local i32 @hints_insert(%struct.iter_hints*, i32, %struct.delegpt*, i32) #2

declare dso_local i32 @delegpt_log(i32, %struct.delegpt*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
