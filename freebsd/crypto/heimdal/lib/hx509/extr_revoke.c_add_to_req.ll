; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_add_to_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_add_to_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_add_ctx = type { %struct.TYPE_27__*, i32, i64, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_20__*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HX509_QUERY_FIND_ISSUER_CERT = common dso_local global i32 0, align 4
@HX509_REVOKE_NOT_SAME_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Not same parent certifate as last certificate in request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @add_to_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_req(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocsp_add_ctx*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_29__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.ocsp_add_ctx*
  store %struct.ocsp_add_ctx* %18, %struct.ocsp_add_ctx** %8, align 8
  store i32* null, i32** %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_20__* @_hx509_get_cert(i32* %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %12, align 8
  %21 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 16, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @realloc(%struct.TYPE_19__* %26, i32 %36)
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %191

42:                                               ; preds = %3
  %43 = load i8*, i8** %16, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_19__*
  %45 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 1
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %49, align 8
  %50 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %56, i32 0, i32 0
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i64 %62
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %9, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %65 = call i32 @memset(%struct.TYPE_19__* %64, i32 0, i32 16)
  %66 = call i32 @_hx509_query_clear(%struct.TYPE_28__* %15)
  %67 = load i32, i32* @HX509_QUERY_FIND_ISSUER_CERT, align 4
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @hx509_certs_find(i32 %73, i32 %76, %struct.TYPE_28__* %15, i32** %10)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %42
  br label %179

81:                                               ; preds = %42
  %82 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i64 @hx509_cert_cmp(i64 %89, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* @HX509_REVOKE_NOT_SAME_PARENT, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @hx509_set_error_string(i32 %95, i32 0, i32 %96, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %179

98:                                               ; preds = %86
  br label %104

99:                                               ; preds = %81
  %100 = load i32*, i32** %10, align 8
  %101 = call i64 @hx509_cert_ref(i32* %100)
  %102 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %98
  %105 = load i32*, i32** %10, align 8
  %106 = call %struct.TYPE_20__* @_hx509_get_cert(i32* %105)
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %11, align 8
  %107 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %108 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 2
  %113 = call i32 @copy_AlgorithmIdentifier(i32 %109, i32* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %179

117:                                              ; preds = %104
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 3
  %129 = call i32 @_hx509_create_signature(i32 %118, i32* null, i32* %121, %struct.TYPE_29__* %125, i32* null, i32* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  br label %179

133:                                              ; preds = %117
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  store i32 %139, i32* %140, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %146, 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  %156 = call i32 @_hx509_create_signature(i32 %149, i32* null, i32* %152, %struct.TYPE_29__* %13, i32* null, i32* %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %133
  br label %179

160:                                              ; preds = %133
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = call i32 @copy_CertificateSerialNumber(i32* %163, i32* %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %179

171:                                              ; preds = %160
  %172 = load %struct.ocsp_add_ctx*, %struct.ocsp_add_ctx** %8, align 8
  %173 = getelementptr inbounds %struct.ocsp_add_ctx, %struct.ocsp_add_ctx* %172, i32 0, i32 0
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %171, %170, %159, %132, %116, %93, %80
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @hx509_cert_free(i32* %180)
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %186 = call i32 @free_OCSPInnerRequest(%struct.TYPE_19__* %185)
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %188 = call i32 @memset(%struct.TYPE_19__* %187, i32 0, i32 16)
  br label %189

189:                                              ; preds = %184, %179
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %189, %40
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_20__* @_hx509_get_cert(i32*) #1

declare dso_local i8* @realloc(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @_hx509_query_clear(%struct.TYPE_28__*) #1

declare dso_local i32 @hx509_certs_find(i32, i32, %struct.TYPE_28__*, i32**) #1

declare dso_local i64 @hx509_cert_cmp(i64, i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i64 @hx509_cert_ref(i32*) #1

declare dso_local i32 @copy_AlgorithmIdentifier(i32, i32*) #1

declare dso_local i32 @_hx509_create_signature(i32, i32*, i32*, %struct.TYPE_29__*, i32*, i32*) #1

declare dso_local i32 @copy_CertificateSerialNumber(i32*, i32*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @free_OCSPInnerRequest(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
