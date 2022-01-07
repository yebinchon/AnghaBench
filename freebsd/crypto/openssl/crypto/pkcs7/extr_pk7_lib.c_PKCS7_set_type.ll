; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_set_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_lib.c_PKCS7_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_21__*, i32*, %struct.TYPE_22__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_22__ = type { i32 }

@PKCS7_F_PKCS7_SET_TYPE = common dso_local global i32 0, align 4
@PKCS7_R_UNSUPPORTED_CONTENT_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_set_type(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i8* @OBJ_nid2obj(i32 %7)
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %159 [
    i32 129, label %11
    i32 133, label %40
    i32 128, label %51
    i32 130, label %80
    i32 131, label %109
    i32 132, label %138
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = call %struct.TYPE_22__* (...) @PKCS7_SIGNED_new()
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %18, align 8
  %19 = icmp eq %struct.TYPE_22__* %15, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %164

21:                                               ; preds = %11
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ASN1_INTEGER_set(i32 %27, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = call i32 @PKCS7_SIGNED_free(%struct.TYPE_22__* %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 5
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %38, align 8
  br label %164

39:                                               ; preds = %21
  br label %163

40:                                               ; preds = %2
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = call i32* (...) @ASN1_OCTET_STRING_new()
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 4
  store i32* %44, i32** %47, align 8
  %48 = icmp eq i32* %44, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %164

50:                                               ; preds = %40
  br label %163

51:                                               ; preds = %2
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = call %struct.TYPE_21__* (...) @PKCS7_SIGN_ENVELOPE_new()
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %58, align 8
  %59 = icmp eq %struct.TYPE_21__* %55, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %164

61:                                               ; preds = %51
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ASN1_INTEGER_set(i32 %67, i32 1)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %164

71:                                               ; preds = %61
  %72 = call i8* @OBJ_nid2obj(i32 133)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i8* %72, i8** %79, align 8
  br label %163

80:                                               ; preds = %2
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = call %struct.TYPE_13__* (...) @PKCS7_ENVELOPE_new()
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %87, align 8
  %88 = icmp eq %struct.TYPE_13__* %84, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %164

90:                                               ; preds = %80
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ASN1_INTEGER_set(i32 %96, i32 0)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  br label %164

100:                                              ; preds = %90
  %101 = call i8* @OBJ_nid2obj(i32 133)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  store i8* %101, i8** %108, align 8
  br label %163

109:                                              ; preds = %2
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  store i32* %110, i32** %112, align 8
  %113 = call %struct.TYPE_14__* (...) @PKCS7_ENCRYPT_new()
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %116, align 8
  %117 = icmp eq %struct.TYPE_14__* %113, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %164

119:                                              ; preds = %109
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ASN1_INTEGER_set(i32 %125, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %119
  br label %164

129:                                              ; preds = %119
  %130 = call i8* @OBJ_nid2obj(i32 133)
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  store i8* %130, i8** %137, align 8
  br label %163

138:                                              ; preds = %2
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = call %struct.TYPE_15__* (...) @PKCS7_DIGEST_new()
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %145, align 8
  %146 = icmp eq %struct.TYPE_15__* %142, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %164

148:                                              ; preds = %138
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ASN1_INTEGER_set(i32 %154, i32 0)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  br label %164

158:                                              ; preds = %148
  br label %163

159:                                              ; preds = %2
  %160 = load i32, i32* @PKCS7_F_PKCS7_SET_TYPE, align 4
  %161 = load i32, i32* @PKCS7_R_UNSUPPORTED_CONTENT_TYPE, align 4
  %162 = call i32 @PKCS7err(i32 %160, i32 %161)
  br label %164

163:                                              ; preds = %158, %129, %100, %71, %50, %39
  store i32 1, i32* %3, align 4
  br label %165

164:                                              ; preds = %159, %157, %147, %128, %118, %99, %89, %70, %60, %49, %30, %20
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i8* @OBJ_nid2obj(i32) #1

declare dso_local %struct.TYPE_22__* @PKCS7_SIGNED_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32 @PKCS7_SIGNED_free(%struct.TYPE_22__*) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local %struct.TYPE_21__* @PKCS7_SIGN_ENVELOPE_new(...) #1

declare dso_local %struct.TYPE_13__* @PKCS7_ENVELOPE_new(...) #1

declare dso_local %struct.TYPE_14__* @PKCS7_ENCRYPT_new(...) #1

declare dso_local %struct.TYPE_15__* @PKCS7_DIGEST_new(...) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
