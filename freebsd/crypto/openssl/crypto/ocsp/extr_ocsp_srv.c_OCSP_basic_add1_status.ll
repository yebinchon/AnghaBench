; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_srv.c_OCSP_basic_add1_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_srv.c_OCSP_basic_add1_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__*, i32*, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@OCSP_F_OCSP_BASIC_ADD1_STATUS = common dso_local global i32 0, align 4
@OCSP_R_NO_REVOKED_TIME = common dso_local global i32 0, align 4
@OCSP_REVOKED_STATUS_NOSTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @OCSP_basic_add1_status(%struct.TYPE_18__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %7
  %25 = call i32* (...) @sk_OCSP_SINGLERESP_new_null()
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = icmp eq i32* %25, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %141

31:                                               ; preds = %24, %7
  %32 = call %struct.TYPE_15__* (...) @OCSP_SINGLERESP_new()
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %16, align 8
  %33 = icmp eq %struct.TYPE_15__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %141

35:                                               ; preds = %31
  %36 = load i32*, i32** %14, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = call i32 @ASN1_TIME_to_generalizedtime(i32* %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %141

42:                                               ; preds = %35
  %43 = load i32*, i32** %15, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32*, i32** %15, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = call i32 @ASN1_TIME_to_generalizedtime(i32* %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %141

52:                                               ; preds = %45, %42
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @OCSP_CERTID_free(i32* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32* @OCSP_CERTID_dup(i32* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = icmp eq i32* %58, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %141

63:                                               ; preds = %52
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %17, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  switch i32 %67, label %129 [
    i32 129, label %70
    i32 130, label %111
    i32 128, label %120
  ]

70:                                               ; preds = %63
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @OCSP_F_OCSP_BASIC_ADD1_STATUS, align 4
  %75 = load i32, i32* @OCSP_R_NO_REVOKED_TIME, align 4
  %76 = call i32 @OCSPerr(i32 %74, i32 %75)
  br label %141

77:                                               ; preds = %70
  %78 = call %struct.TYPE_16__* (...) @OCSP_REVOKEDINFO_new()
  store %struct.TYPE_16__* %78, %struct.TYPE_16__** %18, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store %struct.TYPE_16__* %78, %struct.TYPE_16__** %81, align 8
  %82 = icmp eq %struct.TYPE_16__* %78, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %141

84:                                               ; preds = %77
  %85 = load i32*, i32** %13, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = call i32 @ASN1_TIME_to_generalizedtime(i32* %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %141

91:                                               ; preds = %84
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @OCSP_REVOKED_STATUS_NOSTATUS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = call i32* (...) @ASN1_ENUMERATED_new()
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = icmp eq i32* %96, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %141

101:                                              ; preds = %95
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @ASN1_ENUMERATED_set(i32* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %141

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %91
  br label %130

111:                                              ; preds = %63
  %112 = call i8* (...) @ASN1_NULL_new()
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i32* %113, i32** %116, align 8
  %117 = icmp eq i32* %113, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %141

119:                                              ; preds = %111
  br label %130

120:                                              ; preds = %63
  %121 = call i8* (...) @ASN1_NULL_new()
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  store i32* %122, i32** %125, align 8
  %126 = icmp eq i32* %122, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %141

128:                                              ; preds = %120
  br label %130

129:                                              ; preds = %63
  br label %141

130:                                              ; preds = %128, %119, %110
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %136 = call i32 @sk_OCSP_SINGLERESP_push(i32* %134, %struct.TYPE_15__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %130
  br label %141

139:                                              ; preds = %130
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %8, align 8
  br label %144

141:                                              ; preds = %138, %129, %127, %118, %108, %100, %90, %83, %73, %62, %51, %41, %34, %30
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %143 = call i32 @OCSP_SINGLERESP_free(%struct.TYPE_15__* %142)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  br label %144

144:                                              ; preds = %141, %139
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  ret %struct.TYPE_15__* %145
}

declare dso_local i32* @sk_OCSP_SINGLERESP_new_null(...) #1

declare dso_local %struct.TYPE_15__* @OCSP_SINGLERESP_new(...) #1

declare dso_local i32 @ASN1_TIME_to_generalizedtime(i32*, i32*) #1

declare dso_local i32 @OCSP_CERTID_free(i32*) #1

declare dso_local i32* @OCSP_CERTID_dup(i32*) #1

declare dso_local i32 @OCSPerr(i32, i32) #1

declare dso_local %struct.TYPE_16__* @OCSP_REVOKEDINFO_new(...) #1

declare dso_local i32* @ASN1_ENUMERATED_new(...) #1

declare dso_local i32 @ASN1_ENUMERATED_set(i32*, i32) #1

declare dso_local i8* @ASN1_NULL_new(...) #1

declare dso_local i32 @sk_OCSP_SINGLERESP_push(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @OCSP_SINGLERESP_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
