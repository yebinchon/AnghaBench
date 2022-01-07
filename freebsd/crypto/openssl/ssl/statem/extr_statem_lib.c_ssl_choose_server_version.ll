; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl_choose_server_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl_choose_server_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* (...)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i64 }

@SSL_R_WRONG_SSL_VERSION = common dso_local global i32 0, align 4
@DOWNGRADE_NONE = common dso_local global i32 0, align 4
@tls_version_table = common dso_local global %struct.TYPE_19__* null, align 8
@dtls_version_table = common dso_local global %struct.TYPE_19__* null, align 8
@TLSEXT_IDX_supported_versions = common dso_local global i64 0, align 8
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@SSL_R_UNSUPPORTED_PROTOCOL = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i32 0, align 4
@SSL_R_BAD_LEGACY_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@SSL_R_VERSION_TOO_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_choose_server_version(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %31 [
    i32 128, label %49
    i32 129, label %51
  ]

31:                                               ; preds = %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = call i32 @SSL_IS_TLS13(%struct.TYPE_21__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @version_cmp(%struct.TYPE_21__* %36, i32 %37, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @SSL_R_WRONG_SSL_VERSION, align 4
  store i32 %44, i32* %4, align 4
  br label %214

45:                                               ; preds = %35
  %46 = load i32, i32* @DOWNGRADE_NONE, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %214

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %3, %48
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** @tls_version_table, align 8
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %11, align 8
  br label %53

51:                                               ; preds = %3
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dtls_version_table, align 8
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %11, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = load i64, i64* @TLSEXT_IDX_supported_versions, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %57
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %13, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %53
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SSL_HRR_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @SSL_R_UNSUPPORTED_PROTOCOL, align 4
  store i32 %70, i32* %4, align 4
  br label %214

71:                                               ; preds = %63, %53
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %148

76:                                               ; preds = %71
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = call i32 @SSL_IS_DTLS(%struct.TYPE_21__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %148, label %80

80:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %16, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = call i32 @PACKET_as_length_prefixed_1(i32* %84, i32* %17)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  store i32 %88, i32* %4, align 4
  br label %214

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SSL3_VERSION, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @SSL_R_BAD_LEGACY_VERSION, align 4
  store i32 %94, i32* %4, align 4
  br label %214

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %113, %105, %95
  %97 = call i64 @PACKET_get_net_2(i32* %17, i32* %14)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @version_cmp(%struct.TYPE_21__* %100, i32 %101, i32 %102)
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %96

106:                                              ; preds = %99
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @ssl_version_supported(%struct.TYPE_21__* %107, i32 %108, %struct.TYPE_20__** %16)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %111, %106
  br label %96

114:                                              ; preds = %96
  %115 = call i64 @PACKET_remaining(i32* %17)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  store i32 %118, i32* %4, align 4
  br label %214

119:                                              ; preds = %114
  %120 = load i32, i32* %15, align 4
  %121 = icmp ugt i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SSL_HRR_NONE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @TLS1_3_VERSION, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @SSL_R_UNSUPPORTED_PROTOCOL, align 4
  store i32 %133, i32* %4, align 4
  br label %214

134:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %214

135:                                              ; preds = %122
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @check_for_downgrade(%struct.TYPE_21__* %136, i32 %137, i32* %138)
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  store %struct.TYPE_20__* %143, %struct.TYPE_20__** %145, align 8
  store i32 0, i32* %4, align 4
  br label %214

146:                                              ; preds = %119
  %147 = load i32, i32* @SSL_R_UNSUPPORTED_PROTOCOL, align 4
  store i32 %147, i32* %4, align 4
  br label %214

148:                                              ; preds = %76, %71
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @TLS1_3_VERSION, align 4
  %152 = call i64 @version_cmp(%struct.TYPE_21__* %149, i32 %150, i32 %151)
  %153 = icmp sge i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @TLS1_2_VERSION, align 4
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %154, %148
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %157, %struct.TYPE_19__** %10, align 8
  br label %158

158:                                              ; preds = %202, %156
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %205

163:                                              ; preds = %158
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_20__* (...)*, %struct.TYPE_20__* (...)** %165, align 8
  %167 = icmp eq %struct.TYPE_20__* (...)* %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @version_cmp(%struct.TYPE_21__* %169, i32 %170, i32 %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168, %163
  br label %202

177:                                              ; preds = %168
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_20__* (...)*, %struct.TYPE_20__* (...)** %179, align 8
  %181 = call %struct.TYPE_20__* (...) %180()
  store %struct.TYPE_20__* %181, %struct.TYPE_20__** %18, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %184 = call i64 @ssl_method_error(%struct.TYPE_21__* %182, %struct.TYPE_20__* %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %177
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @check_for_downgrade(%struct.TYPE_21__* %187, i32 %190, i32* %191)
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 3
  store %struct.TYPE_20__* %198, %struct.TYPE_20__** %200, align 8
  store i32 0, i32* %4, align 4
  br label %214

201:                                              ; preds = %177
  store i32 1, i32* %12, align 4
  br label %202

202:                                              ; preds = %201, %176
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 1
  store %struct.TYPE_19__* %204, %struct.TYPE_19__** %10, align 8
  br label %158

205:                                              ; preds = %158
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* @SSL_R_UNSUPPORTED_PROTOCOL, align 4
  br label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @SSL_R_VERSION_TOO_LOW, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %212, %186, %146, %135, %134, %132, %117, %93, %87, %69, %45, %43
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_21__*) #1

declare dso_local i64 @version_cmp(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_21__*) #1

declare dso_local i32 @PACKET_as_length_prefixed_1(i32*, i32*) #1

declare dso_local i64 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i64 @ssl_version_supported(%struct.TYPE_21__*, i32, %struct.TYPE_20__**) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @check_for_downgrade(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i64 @ssl_method_error(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
