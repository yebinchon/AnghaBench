; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_svn_x509_parse_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_svn_x509_parse_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN1_SEQUENCE = common dso_local global i32 0, align 4
@SVN_ERR_X509_CERT_INVALID_FORMAT = common dso_local global i32 0, align 4
@SVN_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SVN_ERR_X509_CERT_UNKNOWN_VERSION = common dso_local global i32 0, align 4
@SVN_ERR_X509_CERT_SIG_MISMATCH = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_x509_parse_cert(%struct.TYPE_7__** %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i8* @apr_pcalloc(i32* %18, i32 48)
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %16, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %14, align 8
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %29 = load i32, i32* @ASN1_SEQUENCE, align 4
  %30 = or i32 %28, %29
  %31 = call i32* @asn1_get_tag(i8** %14, i8* %27, i32* %13, i32 %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @svn_error_create(i32 %35, i32* %36, i32* null)
  store i32* %37, i32** %6, align 8
  br label %272

38:                                               ; preds = %5
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = load i8*, i8** %15, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i32, i32* @SVN_ERR_ASN1_LENGTH_MISMATCH, align 4
  %49 = call i32* @svn_error_create(i32 %48, i32* null, i32* null)
  store i32* %49, i32** %12, align 8
  %50 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = call i32* @svn_error_create(i32 %50, i32* %51, i32* null)
  store i32* %52, i32** %6, align 8
  br label %272

53:                                               ; preds = %38
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %56 = load i32, i32* @ASN1_SEQUENCE, align 4
  %57 = or i32 %55, %56
  %58 = call i32* @asn1_get_tag(i8** %14, i8* %54, i32* %13, i32 %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32* @svn_error_create(i32 %62, i32* %63, i32* null)
  store i32* %64, i32** %6, align 8
  br label %272

65:                                               ; preds = %53
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @x509_get_version(i8** %14, i8* %70, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i8*, i8** %15, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 11
  %78 = call i32 @x509_get_serial(i8** %14, i8* %75, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i8*, i8** %15, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  %83 = call i32 @x509_get_alg(i8** %14, i8* %80, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %65
  %94 = load i32, i32* @SVN_ERR_X509_CERT_UNKNOWN_VERSION, align 4
  %95 = call i32* @svn_error_create(i32 %94, i32* null, i32* null)
  store i32* %95, i32** %6, align 8
  br label %272

96:                                               ; preds = %65
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %99 = load i32, i32* @ASN1_SEQUENCE, align 4
  %100 = or i32 %98, %99
  %101 = call i32* @asn1_get_tag(i8** %14, i8* %97, i32* %13, i32 %100)
  store i32* %101, i32** %12, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = call i32* @svn_error_create(i32 %105, i32* %106, i32* null)
  store i32* %107, i32** %6, align 8
  br label %272

108:                                              ; preds = %96
  %109 = load i8*, i8** %14, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @x509_get_name(i8** %14, i8* %112, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i8*, i8** %15, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @x509_get_dates(i32* %119, i32* %121, i8** %14, i8* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %128 = load i32, i32* @ASN1_SEQUENCE, align 4
  %129 = or i32 %127, %128
  %130 = call i32* @asn1_get_tag(i8** %14, i8* %126, i32* %13, i32 %129)
  store i32* %130, i32** %12, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %108
  %134 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = call i32* @svn_error_create(i32 %134, i32* %135, i32* null)
  store i32* %136, i32** %6, align 8
  br label %272

137:                                              ; preds = %108
  %138 = load i8*, i8** %14, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @x509_get_name(i8** %14, i8* %141, i32* %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  %147 = load i8*, i8** %15, align 8
  %148 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %149 = load i32, i32* @ASN1_SEQUENCE, align 4
  %150 = or i32 %148, %149
  %151 = call i32* @asn1_get_tag(i8** %14, i8* %147, i32* %13, i32 %150)
  store i32* %151, i32** %12, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %137
  %155 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = call i32* @svn_error_create(i32 %155, i32* %156, i32* null)
  store i32* %157, i32** %6, align 8
  br label %272

158:                                              ; preds = %137
  %159 = load i32, i32* %13, align 4
  %160 = load i8*, i8** %14, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %14, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @apr_array_make(i32* %163, i32 3, i32 8)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 4
  %167 = load i8*, i8** %15, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 10
  %170 = call i32 @x509_get_uid(i8** %14, i8* %167, i32* %169, i32 1)
  %171 = call i32 @SVN_ERR(i32 %170)
  %172 = load i8*, i8** %15, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 9
  %175 = call i32 @x509_get_uid(i8** %14, i8* %172, i32* %174, i32 2)
  %176 = call i32 @SVN_ERR(i32 %175)
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load i8*, i8** %15, align 8
  %181 = call i32 @x509_get_ext(i32 %179, i8** %14, i8* %180)
  %182 = call i32 @SVN_ERR(i32 %181)
  %183 = load i8*, i8** %14, align 8
  %184 = load i8*, i8** %15, align 8
  %185 = icmp ne i8* %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %158
  %187 = load i32, i32* @SVN_ERR_ASN1_LENGTH_MISMATCH, align 4
  %188 = call i32* @svn_error_create(i32 %187, i32* null, i32* null)
  store i32* %188, i32** %12, align 8
  %189 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %190 = load i32*, i32** %12, align 8
  %191 = call i32* @svn_error_create(i32 %189, i32* %190, i32* null)
  store i32* %191, i32** %6, align 8
  br label %272

192:                                              ; preds = %158
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8* %196, i8** %15, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 6
  %200 = call i32 @x509_get_alg(i8** %14, i8* %197, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 7
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 6
  %206 = call i32 @oids_equal(i32* %203, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %192
  %209 = load i32, i32* @SVN_ERR_X509_CERT_SIG_MISMATCH, align 4
  %210 = call i32* @svn_error_create(i32 %209, i32* null, i32* null)
  store i32* %210, i32** %6, align 8
  br label %272

211:                                              ; preds = %192
  %212 = load i8*, i8** %15, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 5
  %215 = call i32 @x509_get_sig(i8** %14, i8* %212, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load i8*, i8** %14, align 8
  %218 = load i8*, i8** %15, align 8
  %219 = icmp ne i8* %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %211
  %221 = load i32, i32* @SVN_ERR_ASN1_LENGTH_MISMATCH, align 4
  %222 = call i32* @svn_error_create(i32 %221, i32* null, i32* null)
  store i32* %222, i32** %12, align 8
  %223 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_FORMAT, align 4
  %224 = load i32*, i32** %12, align 8
  %225 = call i32* @svn_error_create(i32 %223, i32* %224, i32* null)
  store i32* %225, i32** %6, align 8
  br label %272

226:                                              ; preds = %211
  %227 = load i32*, i32** %10, align 8
  %228 = call i8* @apr_pcalloc(i32* %227, i32 20)
  %229 = bitcast i8* %228 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %229, %struct.TYPE_7__** %17, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 4
  %234 = load i32*, i32** %11, align 8
  %235 = load i32*, i32** %10, align 8
  %236 = call i32 @x509_name_to_certinfo(i32* %231, i32* %233, i32* %234, i32* %235)
  %237 = call i32 @SVN_ERR(i32 %236)
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load i32*, i32** %11, align 8
  %243 = load i32*, i32** %10, align 8
  %244 = call i32 @x509_name_to_certinfo(i32* %239, i32* %241, i32* %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* @svn_checksum_sha1, align 4
  %259 = load i8*, i8** %8, align 8
  %260 = load i32, i32* %9, align 4
  %261 = load i32*, i32** %10, align 8
  %262 = call i32 @svn_checksum(i32* %257, i32 %258, i8* %259, i32 %260, i32* %261)
  %263 = call i32 @SVN_ERR(i32 %262)
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %266 = load i32*, i32** %10, align 8
  %267 = load i32*, i32** %11, align 8
  %268 = call i32 @x509parse_get_hostnames(%struct.TYPE_7__* %264, %struct.TYPE_6__* %265, i32* %266, i32* %267)
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %270 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %269, %struct.TYPE_7__** %270, align 8
  %271 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %271, i32** %6, align 8
  br label %272

272:                                              ; preds = %226, %220, %208, %186, %154, %133, %104, %93, %61, %47, %34
  %273 = load i32*, i32** %6, align 8
  ret i32* %273
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @asn1_get_tag(i8**, i8*, i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @x509_get_version(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_serial(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_alg(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_name(i8**, i8*, i32*, i32*) #1

declare dso_local i32 @x509_get_dates(i32*, i32*, i8**, i8*, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @x509_get_uid(i8**, i8*, i32*, i32) #1

declare dso_local i32 @x509_get_ext(i32, i8**, i8*) #1

declare dso_local i32 @oids_equal(i32*, i32*) #1

declare dso_local i32 @x509_get_sig(i8**, i8*, i32*) #1

declare dso_local i32 @x509_name_to_certinfo(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_checksum(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @x509parse_get_hostnames(%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
