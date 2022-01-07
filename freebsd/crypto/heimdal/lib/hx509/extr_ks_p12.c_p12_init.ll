; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_p12_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_p12_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_pkcs12 = type { i64, %struct.ks_pkcs12* }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.hx509_collector = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@_hx509_empty_lock = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@HX509_CERTS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"MEMORY:ks-file-create\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to decode the PFX in %s\00", align 1
@asn1_oid_id_pkcs7_data = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"PKCS PFX isn't a pkcs7-data container\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"PKCS PFX missing data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i32, i8*, i32*)* @p12_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p12_init(i32 %0, i32 %1, i8** %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ks_pkcs12*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_20__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.hx509_collector*, align 8
  %22 = alloca %struct.TYPE_18__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i8**, i8*** %10, align 8
  store i8* null, i8** %23, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32*, i32** @_hx509_empty_lock, align 8
  store i32* %27, i32** %13, align 8
  br label %28

28:                                               ; preds = %26, %6
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @_hx509_collector_alloc(i32 %29, i32* %30, %struct.hx509_collector** %21)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %19, align 4
  store i32 %35, i32* %7, align 4
  br label %230

36:                                               ; preds = %28
  %37 = call %struct.ks_pkcs12* @calloc(i32 1, i32 16)
  store %struct.ks_pkcs12* %37, %struct.ks_pkcs12** %14, align 8
  %38 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %39 = icmp eq %struct.ks_pkcs12* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %42, i32 0, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %198

45:                                               ; preds = %36
  %46 = load i8*, i8** %12, align 8
  %47 = call %struct.ks_pkcs12* @strdup(i8* %46)
  %48 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %49 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %48, i32 0, i32 1
  store %struct.ks_pkcs12* %47, %struct.ks_pkcs12** %49, align 8
  %50 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %51 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %50, i32 0, i32 1
  %52 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %51, align 8
  %53 = icmp eq %struct.ks_pkcs12* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %19, align 4
  %58 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %56, i32 0, i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %198

59:                                               ; preds = %45
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @HX509_CERTS_CREATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %68 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %67, i32 0, i32 0
  %69 = call i32 @hx509_certs_init(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %66, i64* %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %74 = bitcast %struct.ks_pkcs12* %73 to i8*
  %75 = load i8**, i8*** %10, align 8
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %72, %64
  br label %198

77:                                               ; preds = %59
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @rk_undumpdata(i8* %78, i8** %16, i64* %15)
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @hx509_clear_error_string(i32 %83)
  br label %198

85:                                               ; preds = %77
  %86 = load i8*, i8** %16, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @decode_PKCS12_PFX(i8* %86, i64 %87, %struct.TYPE_19__* %17, i32* null)
  store i32 %88, i32* %19, align 4
  %89 = load i8*, i8** %16, align 8
  %90 = call i32 @rk_xfree(i8* %89)
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %94, i32 0, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  br label %198

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = call i64 @der_heim_oid_cmp(i32* %100, i32* @asn1_oid_id_pkcs7_data)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = call i32 @free_PKCS12_PFX(%struct.TYPE_19__* %17)
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %19, align 4
  %108 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %106, i32 0, i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %198

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = icmp eq %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = call i32 @free_PKCS12_PFX(%struct.TYPE_19__* %17)
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %19, align 4
  %119 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %117, i32 0, i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %198

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @decode_PKCS12_OctetString(i32 %125, i32 %130, %struct.TYPE_18__* %22, i32* null)
  store i32 %131, i32* %19, align 4
  %132 = call i32 @free_PKCS12_PFX(%struct.TYPE_19__* %17)
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %120
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @hx509_clear_error_string(i32 %136)
  br label %198

138:                                              ; preds = %120
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @decode_PKCS12_AuthenticatedSafe(i32 %140, i32 %142, %struct.TYPE_20__* %18, i32* null)
  store i32 %143, i32* %19, align 4
  %144 = call i32 @der_free_octet_string(%struct.TYPE_18__* %22)
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @hx509_clear_error_string(i32 %148)
  br label %198

150:                                              ; preds = %138
  store i64 0, i64* %20, align 8
  br label %151

151:                                              ; preds = %181, %150
  %152 = load i64, i64* %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ult i64 %152, %154
  br i1 %155, label %156, label %184

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.hx509_collector*, %struct.hx509_collector** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  %161 = load i64, i64* %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = load i64, i64* %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = load i64, i64* %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @parse_pkcs12_type(i32 %157, %struct.hx509_collector* %158, i32* %163, i32 %171, i32 %179, i32* null)
  br label %181

181:                                              ; preds = %156
  %182 = load i64, i64* %20, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %20, align 8
  br label %151

184:                                              ; preds = %151
  %185 = call i32 @free_PKCS12_AuthenticatedSafe(%struct.TYPE_20__* %18)
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.hx509_collector*, %struct.hx509_collector** %21, align 8
  %188 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %189 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %188, i32 0, i32 0
  %190 = call i32 @_hx509_collector_collect_certs(i32 %186, %struct.hx509_collector* %187, i64* %189)
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* %19, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %195 = bitcast %struct.ks_pkcs12* %194 to i8*
  %196 = load i8**, i8*** %10, align 8
  store i8* %195, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %184
  br label %198

198:                                              ; preds = %197, %147, %135, %114, %103, %93, %82, %76, %54, %40
  %199 = load %struct.hx509_collector*, %struct.hx509_collector** %21, align 8
  %200 = call i32 @_hx509_collector_free(%struct.hx509_collector* %199)
  %201 = load i32, i32* %19, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %198
  %204 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %205 = icmp ne %struct.ks_pkcs12* %204, null
  br i1 %205, label %206, label %228

206:                                              ; preds = %203
  %207 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %208 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %207, i32 0, i32 1
  %209 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %208, align 8
  %210 = icmp ne %struct.ks_pkcs12* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %213 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %212, i32 0, i32 1
  %214 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %213, align 8
  %215 = call i32 @free(%struct.ks_pkcs12* %214)
  br label %216

216:                                              ; preds = %211, %206
  %217 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %218 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %223 = getelementptr inbounds %struct.ks_pkcs12, %struct.ks_pkcs12* %222, i32 0, i32 0
  %224 = call i32 @hx509_certs_free(i64* %223)
  br label %225

225:                                              ; preds = %221, %216
  %226 = load %struct.ks_pkcs12*, %struct.ks_pkcs12** %14, align 8
  %227 = call i32 @free(%struct.ks_pkcs12* %226)
  br label %228

228:                                              ; preds = %225, %203, %198
  %229 = load i32, i32* %19, align 4
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %228, %34
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i32 @_hx509_collector_alloc(i32, i32*, %struct.hx509_collector**) #1

declare dso_local %struct.ks_pkcs12* @calloc(i32, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.ks_pkcs12* @strdup(i8*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i64*) #1

declare dso_local i32 @rk_undumpdata(i8*, i8**, i64*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @decode_PKCS12_PFX(i8*, i64, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @rk_xfree(i8*) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @free_PKCS12_PFX(%struct.TYPE_19__*) #1

declare dso_local i32 @decode_PKCS12_OctetString(i32, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @decode_PKCS12_AuthenticatedSafe(i32, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_18__*) #1

declare dso_local i32 @parse_pkcs12_type(i32, %struct.hx509_collector*, i32*, i32, i32, i32*) #1

declare dso_local i32 @free_PKCS12_AuthenticatedSafe(%struct.TYPE_20__*) #1

declare dso_local i32 @_hx509_collector_collect_certs(i32, %struct.hx509_collector*, i64*) #1

declare dso_local i32 @_hx509_collector_free(%struct.hx509_collector*) #1

declare dso_local i32 @free(%struct.ks_pkcs12*) #1

declare dso_local i32 @hx509_certs_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
