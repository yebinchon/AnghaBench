; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gssapi_mic_cfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gssapi_mic_cfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }

@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i32 0, align 4
@CFXSentByAcceptor = common dso_local global i32 0, align 4
@ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@CFXAcceptorSubkey = common dso_local global i32 0, align 4
@KRB5_KU_USAGE_INITIATOR_SIGN = common dso_local global i32 0, align 4
@KRB5_KU_USAGE_ACCEPTOR_SIGN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_mic_cfx(i64* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, %struct.TYPE_19__* %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %13, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 24
  store i64 %25, i64* %19, align 8
  %26 = load i64, i64* %19, align 8
  %27 = call i8* @malloc(i64 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %18, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %30 = icmp eq %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = load i64*, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %34, i64* %7, align 8
  br label %196

35:                                               ; preds = %6
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memcpy(%struct.TYPE_17__* %36, %struct.TYPE_17__* %39, i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 %48
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %14, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 4, i32* %53, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 4, i32* %57, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @LOCAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %35
  %67 = load i32, i32* @CFXSentByAcceptor, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %35
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ACCEPTOR_SUBKEY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @CFXAcceptorSubkey, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memset(i32 %88, i32 255, i32 5)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = call i32 @HEIMDAL_MUTEX_lock(i32* %91)
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @krb5_auth_con_getlocalseqnumber(i32 %93, i32 %96, i32* %20)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = call i32 @_gsskrb5_encode_be_om_uint32(i32 0, i32* %101)
  %103 = load i32, i32* %20, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = call i32 @_gsskrb5_encode_be_om_uint32(i32 %103, i32* %107)
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %20, align 4
  %115 = call i32 @krb5_auth_con_setlocalseqnumber(i32 %109, i32 %112, i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = call i32 @HEIMDAL_MUTEX_unlock(i32* %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @LOCAL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %85
  %126 = load i32, i32* @KRB5_KU_USAGE_INITIATOR_SIGN, align 4
  store i32 %126, i32* %16, align 4
  br label %129

127:                                              ; preds = %85
  %128 = load i32, i32* @KRB5_KU_USAGE_ACCEPTOR_SIGN, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %136 = load i64, i64* %19, align 8
  %137 = call i64 @krb5_create_checksum(i32 %130, i32 %133, i32 %134, i32 0, %struct.TYPE_17__* %135, i64 %136, %struct.TYPE_20__* %17)
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %15, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %129
  %141 = load i64, i64* %15, align 8
  %142 = load i64*, i64** %8, align 8
  store i64 %141, i64* %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %144 = call i32 @free(%struct.TYPE_17__* %143)
  %145 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %145, i64* %7, align 8
  br label %196

146:                                              ; preds = %129
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = add i64 24, %150
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = call i8* @malloc(i64 %158)
  %160 = bitcast i8* %159 to %struct.TYPE_17__*
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  store %struct.TYPE_17__* %160, %struct.TYPE_17__** %162, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = icmp eq %struct.TYPE_17__* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %146
  %168 = load i64, i64* @ENOMEM, align 8
  %169 = load i64*, i64** %8, align 8
  store i64 %168, i64* %169, align 8
  %170 = call i32 @free_Checksum(%struct.TYPE_20__* %17)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %172 = call i32 @free(%struct.TYPE_17__* %171)
  %173 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %173, i64* %7, align 8
  br label %196

174:                                              ; preds = %146
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %179 = call i32 @memcpy(%struct.TYPE_17__* %177, %struct.TYPE_17__* %178, i32 24)
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i64 24
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @memcpy(%struct.TYPE_17__* %183, %struct.TYPE_17__* %186, i32 %189)
  %191 = call i32 @free_Checksum(%struct.TYPE_20__* %17)
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %193 = call i32 @free(%struct.TYPE_17__* %192)
  %194 = load i64*, i64** %8, align 8
  store i64 0, i64* %194, align 8
  %195 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %195, i64* %7, align 8
  br label %196

196:                                              ; preds = %174, %167, %140, %31
  %197 = load i64, i64* %7, align 8
  ret i64 %197
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @krb5_auth_con_getlocalseqnumber(i32, i32, i32*) #1

declare dso_local i32 @_gsskrb5_encode_be_om_uint32(i32, i32*) #1

declare dso_local i32 @krb5_auth_con_setlocalseqnumber(i32, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i64 @krb5_create_checksum(i32, i32, i32, i32, %struct.TYPE_17__*, i64, %struct.TYPE_20__*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @free_Checksum(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
