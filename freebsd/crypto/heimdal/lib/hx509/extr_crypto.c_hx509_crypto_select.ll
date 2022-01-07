; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_crypto_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_crypto_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32*, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }
%struct.hx509cipher = type { %struct.TYPE_15__* (...)* }

@HX509_SELECT_DIGEST = common dso_local global i32 0, align 4
@SIG_DIGEST = common dso_local global i32 0, align 4
@_hx509_crypto_default_digest_alg = common dso_local global %struct.TYPE_15__* null, align 8
@HX509_SELECT_PUBLIC_SIG = common dso_local global i32 0, align 4
@SIG_PUBLIC_SIG = common dso_local global i32 0, align 4
@_hx509_crypto_default_sig_alg = common dso_local global %struct.TYPE_15__* null, align 8
@HX509_SELECT_SECRET_ENC = common dso_local global i32 0, align 4
@SIG_SECRET = common dso_local global i32 0, align 4
@_hx509_crypto_default_secret_alg = common dso_local global %struct.TYPE_15__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown type %d of selection\00", align 1
@sig_algs = common dso_local global %struct.TYPE_16__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_crypto_select(i32 %0, i32 %1, i64 %2, %struct.TYPE_14__* %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.hx509cipher*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %20 = call i32 @memset(%struct.TYPE_15__* %19, i32 0, i32 4)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @HX509_SELECT_DIGEST, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %5
  %25 = load i32, i32* @SIG_DIGEST, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.TYPE_15__* @alg_for_privatekey(i64 %29, i32 %30)
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %12, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %34 = icmp eq %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @_hx509_crypto_default_digest_alg, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %12, align 8
  br label %37

37:                                               ; preds = %35, %32
  br label %71

38:                                               ; preds = %5
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @HX509_SELECT_PUBLIC_SIG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32, i32* @SIG_PUBLIC_SIG, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.TYPE_15__* @alg_for_privatekey(i64 %47, i32 %48)
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %12, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %52 = icmp eq %struct.TYPE_15__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** @_hx509_crypto_default_sig_alg, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %12, align 8
  br label %55

55:                                               ; preds = %53, %50
  br label %70

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @HX509_SELECT_SECRET_ENC, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @SIG_SECRET, align 4
  store i32 %61, i32* %16, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** @_hx509_crypto_default_secret_alg, align 8
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %12, align 8
  br label %69

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @EINVAL, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @hx509_set_error_string(i32 %64, i32 0, i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %6, align 4
  br label %210

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = icmp ne %struct.TYPE_14__* %72, null
  br i1 %73, label %74, label %199

74:                                               ; preds = %71
  store i32* null, i32** %17, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32* @find_keytype(i64 %75)
  store i32* %76, i32** %17, align 8
  store i64 0, i64* %13, align 8
  br label %77

77:                                               ; preds = %195, %74
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %198

83:                                               ; preds = %77
  store i64 0, i64* %14, align 8
  br label %84

84:                                               ; preds = %155, %83
  %85 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @sig_algs, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %85, i64 %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = icmp ne %struct.TYPE_16__* %88, null
  br i1 %89, label %90, label %158

90:                                               ; preds = %84
  %91 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @sig_algs, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %91, i64 %92
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %155

102:                                              ; preds = %90
  %103 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @sig_algs, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %103, i64 %104
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = call i64 @der_heim_oid_cmp(i32* %108, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %155

118:                                              ; preds = %102
  %119 = load i32*, i32** %17, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @sig_algs, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %122, i64 %123
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  %130 = load i32*, i32** %17, align 8
  %131 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @sig_algs, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %131, i64 %132
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @der_heim_oid_cmp(i32* %130, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %155

140:                                              ; preds = %129, %121, %118
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i64 %144
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %147 = call i32 @copy_AlgorithmIdentifier(%struct.TYPE_15__* %145, %struct.TYPE_15__* %146)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %140
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @hx509_clear_error_string(i32 %151)
  br label %153

153:                                              ; preds = %150, %140
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %6, align 4
  br label %210

155:                                              ; preds = %139, %117, %101
  %156 = load i64, i64* %14, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %14, align 8
  br label %84

158:                                              ; preds = %84
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @SIG_SECRET, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %194

163:                                              ; preds = %158
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load i64, i64* %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = call %struct.hx509cipher* @find_cipher_by_oid(i32* %169)
  store %struct.hx509cipher* %170, %struct.hx509cipher** %18, align 8
  %171 = load %struct.hx509cipher*, %struct.hx509cipher** %18, align 8
  %172 = icmp eq %struct.hx509cipher* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %195

174:                                              ; preds = %163
  %175 = load %struct.hx509cipher*, %struct.hx509cipher** %18, align 8
  %176 = getelementptr inbounds %struct.hx509cipher, %struct.hx509cipher* %175, i32 0, i32 0
  %177 = load %struct.TYPE_15__* (...)*, %struct.TYPE_15__* (...)** %176, align 8
  %178 = icmp eq %struct.TYPE_15__* (...)* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %195

180:                                              ; preds = %174
  %181 = load %struct.hx509cipher*, %struct.hx509cipher** %18, align 8
  %182 = getelementptr inbounds %struct.hx509cipher, %struct.hx509cipher* %181, i32 0, i32 0
  %183 = load %struct.TYPE_15__* (...)*, %struct.TYPE_15__* (...)** %182, align 8
  %184 = call %struct.TYPE_15__* (...) %183()
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %186 = call i32 @copy_AlgorithmIdentifier(%struct.TYPE_15__* %184, %struct.TYPE_15__* %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @hx509_clear_error_string(i32 %190)
  br label %192

192:                                              ; preds = %189, %180
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %6, align 4
  br label %210

194:                                              ; preds = %158
  br label %195

195:                                              ; preds = %194, %179, %173
  %196 = load i64, i64* %13, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %13, align 8
  br label %77

198:                                              ; preds = %77
  br label %199

199:                                              ; preds = %198, %71
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %202 = call i32 @copy_AlgorithmIdentifier(%struct.TYPE_15__* %200, %struct.TYPE_15__* %201)
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @hx509_clear_error_string(i32 %206)
  br label %208

208:                                              ; preds = %205, %199
  %209 = load i32, i32* %15, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %208, %192, %153, %63
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @alg_for_privatekey(i64, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, i32) #1

declare dso_local i32* @find_keytype(i64) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @copy_AlgorithmIdentifier(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local %struct.hx509cipher* @find_cipher_by_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
