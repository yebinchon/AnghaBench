; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_d2i_ECPrivateKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_d2i_ECPrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_18__*)* }
%struct.TYPE_17__ = type { i32*, i32*, i32, i64 }

@EC_F_D2I_ECPRIVATEKEY = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EC_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_PKEY_NO_PUBKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @d2i_ECPrivateKey(%struct.TYPE_18__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.TYPE_17__* @d2i_EC_PRIVATEKEY(i32* null, i8** %10, i64 %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %9, align 8
  %18 = icmp eq %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @EC_F_D2I_ECPRIVATEKEY, align 4
  %21 = load i32, i32* @ERR_R_EC_LIB, align 4
  %22 = call i32 @ECerr(i32 %20, i32 %21)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  br label %189

23:                                               ; preds = %3
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %25 = icmp eq %struct.TYPE_18__** %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %23
  %31 = call %struct.TYPE_18__* (...) @EC_KEY_new()
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %8, align 8
  %32 = icmp eq %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @EC_F_D2I_ECPRIVATEKEY, align 4
  %35 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  br label %175

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %26
  %39 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %8, align 8
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = call i32 @EC_GROUP_free(%struct.TYPE_19__* %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.TYPE_19__* @EC_GROUP_new_from_ecpkparameters(i64 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %56, align 8
  br label %57

57:                                               ; preds = %46, %41
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = icmp eq %struct.TYPE_19__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @EC_F_D2I_ECPRIVATEKEY, align 4
  %64 = load i32, i32* @ERR_R_EC_LIB, align 4
  %65 = call i32 @ECerr(i32 %63, i32 %64)
  br label %175

66:                                               ; preds = %57
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %66
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %11, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i8* @ASN1_STRING_get0_data(i32* %81)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @ASN1_STRING_length(i32* %83)
  %85 = call i64 @EC_KEY_oct2priv(%struct.TYPE_18__* %80, i8* %82, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %175

88:                                               ; preds = %76
  br label %93

89:                                               ; preds = %66
  %90 = load i32, i32* @EC_F_D2I_ECPRIVATEKEY, align 4
  %91 = load i32, i32* @EC_R_MISSING_PRIVATE_KEY, align 4
  %92 = call i32 @ECerr(i32 %90, i32 %91)
  br label %175

93:                                               ; preds = %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @EC_POINT_clear_free(i32* %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = call i32* @EC_POINT_new(%struct.TYPE_19__* %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %93
  %109 = load i32, i32* @EC_F_D2I_ECPRIVATEKEY, align 4
  %110 = load i32, i32* @ERR_R_EC_LIB, align 4
  %111 = call i32 @ECerr(i32 %109, i32 %110)
  br label %175

112:                                              ; preds = %93
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i8* @ASN1_STRING_get0_data(i32* %120)
  store i8* %121, i8** %12, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @ASN1_STRING_length(i32* %124)
  store i32 %125, i32* %13, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @EC_KEY_oct2key(%struct.TYPE_18__* %126, i8* %127, i32 %128, i32* null)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %117
  %132 = load i32, i32* @EC_F_D2I_ECPRIVATEKEY, align 4
  %133 = load i32, i32* @ERR_R_EC_LIB, align 4
  %134 = call i32 @ECerr(i32 %132, i32 %133)
  br label %175

135:                                              ; preds = %117
  br label %163

136:                                              ; preds = %112
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %142, align 8
  %144 = icmp eq i64 (%struct.TYPE_18__*)* %143, null
  br i1 %144, label %156, label %145

145:                                              ; preds = %136
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %154 = call i64 %152(%struct.TYPE_18__* %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %145, %136
  br label %175

157:                                              ; preds = %145
  %158 = load i32, i32* @EC_PKEY_NO_PUBKEY, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %135
  %164 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %165 = icmp ne %struct.TYPE_18__** %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %168 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  store %struct.TYPE_18__* %167, %struct.TYPE_18__** %168, align 8
  br label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %171 = call i32 @EC_PRIVATEKEY_free(%struct.TYPE_17__* %170)
  %172 = load i8*, i8** %10, align 8
  %173 = load i8**, i8*** %6, align 8
  store i8* %172, i8** %173, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %174, %struct.TYPE_18__** %4, align 8
  br label %189

175:                                              ; preds = %156, %131, %108, %89, %87, %62, %33
  %176 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %177 = icmp eq %struct.TYPE_18__** %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %182 = icmp ne %struct.TYPE_18__* %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178, %175
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %185 = call i32 @EC_KEY_free(%struct.TYPE_18__* %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %188 = call i32 @EC_PRIVATEKEY_free(%struct.TYPE_17__* %187)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  br label %189

189:                                              ; preds = %186, %169, %19
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  ret %struct.TYPE_18__* %190
}

declare dso_local %struct.TYPE_17__* @d2i_EC_PRIVATEKEY(i32*, i8**, i64) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local %struct.TYPE_18__* @EC_KEY_new(...) #1

declare dso_local i32 @EC_GROUP_free(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @EC_GROUP_new_from_ecpkparameters(i64) #1

declare dso_local i64 @EC_KEY_oct2priv(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i32 @EC_POINT_clear_free(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_KEY_oct2key(%struct.TYPE_18__*, i8*, i32, i32*) #1

declare dso_local i32 @EC_PRIVATEKEY_free(%struct.TYPE_17__*) #1

declare dso_local i32 @EC_KEY_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
