; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_init_tgs_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_init_tgs_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_27__, %struct.TYPE_30__, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64*, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32* }
%struct.TYPE_34__ = type { i32, %struct.TYPE_36__, %struct.TYPE_29__*, i32 }
%struct.TYPE_36__ = type { i32, i32*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, i32, %struct.TYPE_29__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { i32 }

@krb_tgs_req = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_PDU_TGS_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*, i32, i32*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32, %struct.TYPE_35__*, i32**, %struct.TYPE_34__*)* @init_tgs_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_tgs_req(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, %struct.TYPE_32__* %5, %struct.TYPE_32__* %6, i32 %7, %struct.TYPE_35__* %8, i32** %9, %struct.TYPE_34__* %10) #0 {
  %12 = alloca %struct.TYPE_31__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_35__*, align 8
  %21 = alloca i32**, align 8
  %22 = alloca %struct.TYPE_34__*, align 8
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  store i32 %3, i32* %26, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store %struct.TYPE_32__* %5, %struct.TYPE_32__** %17, align 8
  store %struct.TYPE_32__* %6, %struct.TYPE_32__** %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.TYPE_35__* %8, %struct.TYPE_35__** %20, align 8
  store i32** %9, i32*** %21, align 8
  store %struct.TYPE_34__* %10, %struct.TYPE_34__** %22, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %23, align 8
  store i64 0, i64* %24, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %28 = call i32 @memset(%struct.TYPE_34__* %27, i32 0, i32 88)
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  store i32 5, i32* %30, align 8
  %31 = load i32, i32* @krb_tgs_req, align 4
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %11
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 7
  %43 = call i32 @ALLOC_SEQ(%struct.TYPE_29__* %42, i32 1)
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = icmp eq i64* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load i64, i64* @ENOMEM, align 8
  store i64 %51, i64* %24, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i64, i64* %24, align 8
  %54 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @krb5_set_error_message(i32 %52, i64 %53, i32 %54)
  br label %339

56:                                               ; preds = %39
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 %60, i64* %66, align 8
  br label %79

67:                                               ; preds = %11
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @KRB5_PDU_TGS_REQUEST, align 4
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  %78 = call i64 @_krb5_init_etype(i32 %68, i32 %69, i32* %73, i64** %77, i32* null)
  store i64 %78, i64* %24, align 8
  br label %79

79:                                               ; preds = %67, %56
  %80 = load i64, i64* %24, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %339

83:                                               ; preds = %79
  %84 = load i32*, i32** %15, align 8
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 1
  store i32* %84, i32** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 6
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 5
  %100 = call i64 @copy_Realm(i32* %96, i32* %99)
  store i64 %100, i64* %24, align 8
  %101 = load i64, i64* %24, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  br label %339

104:                                              ; preds = %83
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %107, align 8
  %109 = call i32 @ALLOC(%struct.TYPE_29__* %108, i32 1)
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %112, align 8
  %114 = icmp eq %struct.TYPE_29__* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = load i64, i64* @ENOMEM, align 8
  store i64 %116, i64* %24, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i64, i64* %24, align 8
  %119 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %120 = call i32 @krb5_set_error_message(i32 %117, i64 %118, i32 %119)
  br label %339

121:                                              ; preds = %104
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = call i64 @copy_PrincipalName(i32* %125, %struct.TYPE_29__* %129)
  store i64 %130, i64* %24, align 8
  %131 = load i64, i64* %24, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %339

134:                                              ; preds = %121
  %135 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %137, align 8
  %139 = call i32 @ALLOC(%struct.TYPE_29__* %138, i32 1)
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %142, align 8
  %144 = icmp eq %struct.TYPE_29__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load i64, i64* @ENOMEM, align 8
  store i64 %146, i64* %24, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i64, i64* %24, align 8
  %149 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %150 = call i32 @krb5_set_error_message(i32 %147, i64 %148, i32 %149)
  br label %339

151:                                              ; preds = %134
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %154, align 8
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 0
  %159 = bitcast %struct.TYPE_29__* %155 to i8*
  %160 = bitcast %struct.TYPE_29__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 16, i1 false)
  %161 = load i32, i32* %19, align 4
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load i32*, i32** %16, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %216

167:                                              ; preds = %151
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %170, align 8
  %172 = call i32 @ALLOC(%struct.TYPE_29__* %171, i32 1)
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %175, align 8
  %177 = icmp eq %struct.TYPE_29__* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %167
  %179 = load i64, i64* @ENOMEM, align 8
  store i64 %179, i64* %24, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load i64, i64* %24, align 8
  %182 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %183 = call i32 @krb5_set_error_message(i32 %180, i64 %181, i32 %182)
  br label %339

184:                                              ; preds = %167
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %187, align 8
  %189 = call i32 @ALLOC_SEQ(%struct.TYPE_29__* %188, i32 1)
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = icmp eq i64* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %184
  %198 = load i64, i64* @ENOMEM, align 8
  store i64 %198, i64* %24, align 8
  %199 = load i32, i32* %13, align 4
  %200 = load i64, i64* %24, align 8
  %201 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %202 = call i32 @krb5_set_error_message(i32 %199, i64 %200, i32 %201)
  br label %339

203:                                              ; preds = %184
  %204 = load i32*, i32** %16, align 8
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = call i64 @copy_Ticket(i32* %204, i64* %210)
  store i64 %211, i64* %24, align 8
  %212 = load i64, i64* %24, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %203
  br label %339

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %151
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %218, align 8
  %220 = call i32 @ALLOC(%struct.TYPE_29__* %219, i32 1)
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %222, align 8
  %224 = icmp eq %struct.TYPE_29__* %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %216
  %226 = load i64, i64* @ENOMEM, align 8
  store i64 %226, i64* %24, align 8
  %227 = load i32, i32* %13, align 4
  %228 = load i64, i64* %24, align 8
  %229 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %230 = call i32 @krb5_set_error_message(i32 %227, i64 %228, i32 %229)
  br label %339

231:                                              ; preds = %216
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %233, align 8
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 1, %237
  %239 = call i32 @ALLOC_SEQ(%struct.TYPE_29__* %234, i32 %238)
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = icmp eq i64* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %231
  %247 = load i64, i64* @ENOMEM, align 8
  store i64 %247, i64* %24, align 8
  %248 = load i32, i32* %13, align 4
  %249 = load i64, i64* %24, align 8
  %250 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %251 = call i32 @krb5_set_error_message(i32 %248, i64 %249, i32 %250)
  br label %339

252:                                              ; preds = %231
  store i64 0, i64* %25, align 8
  br label %253

253:                                              ; preds = %283, %252
  %254 = load i64, i64* %25, align 8
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = icmp ult i64 %254, %258
  br i1 %259, label %260, label %286

260:                                              ; preds = %253
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* %25, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %267 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = load i64, i64* %25, align 8
  %272 = add i64 %271, 1
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = call i64 @copy_PA_DATA(i32* %265, i64* %273)
  store i64 %274, i64* %24, align 8
  %275 = load i64, i64* %24, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %260
  %278 = load i32, i32* %13, align 4
  %279 = load i64, i64* %24, align 8
  %280 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %281 = call i32 @krb5_set_error_message(i32 %278, i64 %279, i32 %280)
  br label %339

282:                                              ; preds = %260
  br label %283

283:                                              ; preds = %282
  %284 = load i64, i64* %25, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %25, align 8
  br label %253

286:                                              ; preds = %253
  %287 = load i32, i32* %13, align 4
  %288 = call i64 @krb5_auth_con_init(i32 %287, %struct.TYPE_33__** %23)
  store i64 %288, i64* %24, align 8
  %289 = load i64, i64* %24, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %339

292:                                              ; preds = %286
  %293 = load i32, i32* %13, align 4
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 1
  %297 = call i64 @krb5_auth_con_generatelocalsubkey(i32 %293, %struct.TYPE_33__* %294, %struct.TYPE_27__* %296)
  store i64 %297, i64* %24, align 8
  %298 = load i64, i64* %24, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %292
  br label %339

301:                                              ; preds = %292
  %302 = load i32, i32* %13, align 4
  %303 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %304 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @set_auth_data(i32 %302, %struct.TYPE_36__* %304, i32* %306, i32 %309)
  store i64 %310, i64* %24, align 8
  %311 = load i64, i64* %24, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %301
  br label %339

314:                                              ; preds = %301
  %315 = load i32, i32* %13, align 4
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %320 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %319, i32 0, i32 2
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 0
  %323 = load i64*, i64** %322, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 0
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %326 = call i64 @make_pa_tgs_req(i32 %315, %struct.TYPE_33__* %316, %struct.TYPE_36__* %318, i64* %324, %struct.TYPE_32__* %325)
  store i64 %326, i64* %24, align 8
  %327 = load i64, i64* %24, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %314
  br label %339

330:                                              ; preds = %314
  %331 = load i32, i32* %13, align 4
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %333 = load i32**, i32*** %21, align 8
  %334 = call i64 @krb5_auth_con_getlocalsubkey(i32 %331, %struct.TYPE_33__* %332, i32** %333)
  store i64 %334, i64* %24, align 8
  %335 = load i64, i64* %24, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %330
  br label %339

338:                                              ; preds = %330
  br label %339

339:                                              ; preds = %338, %337, %329, %313, %300, %291, %277, %246, %225, %214, %197, %178, %145, %133, %115, %103, %82, %50
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %341 = icmp ne %struct.TYPE_33__* %340, null
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = load i32, i32* %13, align 4
  %344 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %345 = call i32 @krb5_auth_con_free(i32 %343, %struct.TYPE_33__* %344)
  br label %346

346:                                              ; preds = %342, %339
  %347 = load i64, i64* %24, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %351 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %351, i32 0, i32 1
  store i32* null, i32** %352, align 8
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %354 = call i32 @free_TGS_REQ(%struct.TYPE_34__* %353)
  br label %355

355:                                              ; preds = %349, %346
  %356 = load i64, i64* %24, align 8
  ret i64 %356
}

declare dso_local i32 @memset(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @ALLOC_SEQ(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @_krb5_init_etype(i32, i32, i32*, i64**, i32*) #1

declare dso_local i64 @copy_Realm(i32*, i32*) #1

declare dso_local i32 @ALLOC(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @copy_PrincipalName(i32*, %struct.TYPE_29__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @copy_Ticket(i32*, i64*) #1

declare dso_local i64 @copy_PA_DATA(i32*, i64*) #1

declare dso_local i64 @krb5_auth_con_init(i32, %struct.TYPE_33__**) #1

declare dso_local i64 @krb5_auth_con_generatelocalsubkey(i32, %struct.TYPE_33__*, %struct.TYPE_27__*) #1

declare dso_local i64 @set_auth_data(i32, %struct.TYPE_36__*, i32*, i32) #1

declare dso_local i64 @make_pa_tgs_req(i32, %struct.TYPE_33__*, %struct.TYPE_36__*, i64*, %struct.TYPE_32__*) #1

declare dso_local i64 @krb5_auth_con_getlocalsubkey(i32, %struct.TYPE_33__*, i32**) #1

declare dso_local i32 @krb5_auth_con_free(i32, %struct.TYPE_33__*) #1

declare dso_local i32 @free_TGS_REQ(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
