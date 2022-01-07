; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_fn.c_EVP_PKEY_derive_set_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_fn.c_EVP_PKEY_derive_set_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)*, i64, i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@EVP_F_EVP_PKEY_DERIVE_SET_PEER = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_DERIVE = common dso_local global i64 0, align 8
@EVP_PKEY_OP_ENCRYPT = common dso_local global i64 0, align 8
@EVP_PKEY_OP_DECRYPT = common dso_local global i64 0, align 8
@EVP_R_OPERATON_NOT_INITIALIZED = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_PEER_KEY = common dso_local global i32 0, align 4
@EVP_R_NO_KEY_SET = common dso_local global i32 0, align 4
@EVP_R_DIFFERENT_KEY_TYPES = common dso_local global i32 0, align 4
@EVP_R_DIFFERENT_PARAMETERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_derive_set_peer(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = icmp ne %struct.TYPE_17__* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28, %21, %14
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %35, %28, %9, %2
  %43 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %44 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %45 = call i32 @EVPerr(i32 %43, i32 %44)
  store i32 -2, i32* %3, align 4
  br label %150

46:                                               ; preds = %35
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EVP_PKEY_OP_DERIVE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EVP_PKEY_OP_ENCRYPT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @EVP_PKEY_OP_DECRYPT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %66 = load i32, i32* @EVP_R_OPERATON_NOT_INITIALIZED, align 4
  %67 = call i32 @EVPerr(i32 %65, i32 %66)
  store i32 -1, i32* %3, align 4
  br label %150

68:                                               ; preds = %58, %52, %46
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = load i32, i32* @EVP_PKEY_CTRL_PEER_KEY, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = call i32 %73(%struct.TYPE_17__* %74, i32 %75, i32 0, %struct.TYPE_18__* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %150

82:                                               ; preds = %68
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %150

86:                                               ; preds = %82
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = icmp ne %struct.TYPE_15__* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %93 = load i32, i32* @EVP_R_NO_KEY_SET, align 4
  %94 = call i32 @EVPerr(i32 %92, i32 %93)
  store i32 -1, i32* %3, align 4
  br label %150

95:                                               ; preds = %86
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %107 = load i32, i32* @EVP_R_DIFFERENT_KEY_TYPES, align 4
  %108 = call i32 @EVPerr(i32 %106, i32 %107)
  store i32 -1, i32* %3, align 4
  br label %150

109:                                              ; preds = %95
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %111 = call i32 @EVP_PKEY_missing_parameters(%struct.TYPE_18__* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = call i32 @EVP_PKEY_cmp_parameters(%struct.TYPE_15__* %116, %struct.TYPE_18__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %122 = load i32, i32* @EVP_R_DIFFERENT_PARAMETERS, align 4
  %123 = call i32 @EVPerr(i32 %121, i32 %122)
  store i32 -1, i32* %3, align 4
  br label %150

124:                                              ; preds = %113, %109
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = call i32 @EVP_PKEY_free(%struct.TYPE_18__* %127)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__*)** %135, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %138 = load i32, i32* @EVP_PKEY_CTRL_PEER_KEY, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = call i32 %136(%struct.TYPE_17__* %137, i32 %138, i32 1, %struct.TYPE_18__* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %124
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %145, align 8
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %150

147:                                              ; preds = %124
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_18__* %148)
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %147, %143, %120, %105, %91, %85, %80, %64, %42
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_missing_parameters(%struct.TYPE_18__*) #1

declare dso_local i32 @EVP_PKEY_cmp_parameters(%struct.TYPE_15__*, %struct.TYPE_18__*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_18__*) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
