; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_verify_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_verify_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, %struct._krb5_checksum_type* }
%struct._krb5_checksum_type = type { i32, i64, i64, i32, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)*, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)* }
%struct._krb5_key_data = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64 }

@F_DISABLED = common dso_local global i32 0, align 4
@KRB5_PROG_SUMTYPE_NOSUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"checksum type %d not supported\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5KRB_AP_ERR_BAD_INTEGRITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"Decrypt integrity check failed for checksum type %s, length was %u, expected %u\00", align 1
@F_KEYED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"Checksum type %s is keyed but no crypto context (key) was passed in\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"Checksum type %s is keyed, but the key type %s passed didnt have that checksum type as the keyed type\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Decrypt integrity check failed for checksum type %s, key type %s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"(unkeyed)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_14__*, i32, i8*, i64, %struct.TYPE_15__*)* @verify_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @verify_checksum(i32 %0, %struct.TYPE_14__* %1, i32 %2, i8* %3, i64 %4, %struct.TYPE_15__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._krb5_key_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca %struct._krb5_checksum_type*, align 8
  %19 = alloca %struct._krb5_checksum_type*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %13, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct._krb5_checksum_type* @_krb5_find_checksum(i32 %22)
  store %struct._krb5_checksum_type* %23, %struct._krb5_checksum_type** %18, align 8
  %24 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %25 = icmp eq %struct._krb5_checksum_type* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %6
  %27 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %28 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @F_DISABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26, %6
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  %36 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i64, i32, i32, ...) @krb5_set_error_message(i32 %34, i64 %35, i32 %36, i32 %39)
  %41 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  store i64 %41, i64* %7, align 8
  br label %231

42:                                               ; preds = %26
  %43 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %44 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @krb5_clear_error_message(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  %56 = call i32 @N_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %58 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %66 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i32, i64, i32, i32, ...) @krb5_set_error_message(i32 %54, i64 %55, i32 %56, i32 %59, i32 %64, i32 %68)
  %70 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  store i64 %70, i64* %7, align 8
  br label %231

71:                                               ; preds = %42
  %72 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %73 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @F_KEYED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %71
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = icmp eq %struct.TYPE_14__* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  %87 = call i32 @N_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %89 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i64, i32, i32, ...) @krb5_set_error_message(i32 %85, i64 %86, i32 %87, i32 %90)
  %92 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  store i64 %92, i64* %7, align 8
  br label %231

93:                                               ; preds = %81
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %97, align 8
  store %struct._krb5_checksum_type* %98, %struct._krb5_checksum_type** %19, align 8
  %99 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %19, align 8
  %100 = icmp eq %struct._krb5_checksum_type* %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %93
  %102 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %19, align 8
  %103 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %106 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %101, %93
  %110 = load i32, i32* %8, align 4
  %111 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  %112 = call i32 @N_(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %114 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32, i64, i32, i32, ...) @krb5_set_error_message(i32 %110, i64 %111, i32 %112, i32 %115, i8* %120)
  %122 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  store i64 %122, i64* %7, align 8
  br label %231

123:                                              ; preds = %101
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %128 = call i64 @get_checksum_key(i32 %124, %struct.TYPE_14__* %125, i32 %126, %struct._krb5_checksum_type* %127, %struct._krb5_key_data** %15)
  store i64 %128, i64* %14, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i64, i64* %14, align 8
  store i64 %132, i64* %7, align 8
  br label %231

133:                                              ; preds = %123
  br label %135

134:                                              ; preds = %71
  store %struct._krb5_key_data* null, %struct._krb5_key_data** %15, align 8
  br label %135

135:                                              ; preds = %134, %133
  %136 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %137 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %136, i32 0, i32 5
  %138 = load i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)*, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)** %137, align 8
  %139 = icmp ne i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)* %138, null
  br i1 %139, label %140, label %174

140:                                              ; preds = %135
  %141 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %142 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %141, i32 0, i32 5
  %143 = load i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)*, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load %struct._krb5_key_data*, %struct._krb5_key_data** %15, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %150 = call i64 %143(i32 %144, %struct._krb5_key_data* %145, i8* %146, i64 %147, i32 %148, %struct.TYPE_15__* %149)
  store i64 %150, i64* %14, align 8
  %151 = load i64, i64* %14, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %140
  %154 = load i32, i32* %8, align 4
  %155 = load i64, i64* %14, align 8
  %156 = call i32 @N_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %157 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %158 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %161 = icmp ne %struct.TYPE_14__* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  br label %169

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168, %162
  %170 = phi i8* [ %167, %162 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %168 ]
  %171 = call i32 (i32, i64, i32, i32, ...) @krb5_set_error_message(i32 %154, i64 %155, i32 %156, i32 %159, i8* %170)
  br label %172

172:                                              ; preds = %169, %140
  %173 = load i64, i64* %14, align 8
  store i64 %173, i64* %7, align 8
  br label %231

174:                                              ; preds = %135
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %176 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %177 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @krb5_data_alloc(%struct.TYPE_16__* %175, i64 %178)
  store i64 %179, i64* %14, align 8
  %180 = load i64, i64* %14, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i64, i64* %14, align 8
  store i64 %183, i64* %7, align 8
  br label %231

184:                                              ; preds = %174
  %185 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %186 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %185, i32 0, i32 4
  %187 = load i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)*, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_15__*)** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load %struct._krb5_key_data*, %struct._krb5_key_data** %15, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i64 %187(i32 %188, %struct._krb5_key_data* %189, i8* %190, i64 %191, i32 %192, %struct.TYPE_15__* %17)
  store i64 %193, i64* %14, align 8
  %194 = load i64, i64* %14, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %198 = call i32 @krb5_data_free(%struct.TYPE_16__* %197)
  %199 = load i64, i64* %14, align 8
  store i64 %199, i64* %7, align 8
  br label %231

200:                                              ; preds = %184
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = call i64 @krb5_data_ct_cmp(%struct.TYPE_16__* %201, %struct.TYPE_16__* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %226

206:                                              ; preds = %200
  %207 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  store i64 %207, i64* %14, align 8
  %208 = load i32, i32* %8, align 4
  %209 = load i64, i64* %14, align 8
  %210 = call i32 @N_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %211 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %18, align 8
  %212 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %215 = icmp ne %struct.TYPE_14__* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %206
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  br label %223

222:                                              ; preds = %206
  br label %223

223:                                              ; preds = %222, %216
  %224 = phi i8* [ %221, %216 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %222 ]
  %225 = call i32 (i32, i64, i32, i32, ...) @krb5_set_error_message(i32 %208, i64 %209, i32 %210, i32 %213, i8* %224)
  br label %227

226:                                              ; preds = %200
  store i64 0, i64* %14, align 8
  br label %227

227:                                              ; preds = %226, %223
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %229 = call i32 @krb5_data_free(%struct.TYPE_16__* %228)
  %230 = load i64, i64* %14, align 8
  store i64 %230, i64* %7, align 8
  br label %231

231:                                              ; preds = %227, %196, %182, %172, %131, %109, %84, %51, %33
  %232 = load i64, i64* %7, align 8
  ret i64 %232
}

declare dso_local %struct._krb5_checksum_type* @_krb5_find_checksum(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i64 @get_checksum_key(i32, %struct.TYPE_14__*, i32, %struct._krb5_checksum_type*, %struct._krb5_key_data**) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_16__*) #1

declare dso_local i64 @krb5_data_ct_cmp(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
