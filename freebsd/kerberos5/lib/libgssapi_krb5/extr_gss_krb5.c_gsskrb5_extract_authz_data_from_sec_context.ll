; ModuleID = '/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gsskrb5_extract_authz_data_from_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gsskrb5_extract_authz_data_from_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32*, i32 }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32, i32* }

@GSS_C_NO_BUFFER_SET = common dso_local global %struct.TYPE_20__* null, align 8
@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_KRB5_EXTRACT_AUTHZ_DATA_FROM_SEC_CONTEXT_X = common dso_local global %struct.TYPE_16__* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gsskrb5_extract_authz_data_from_sec_context(i64* %0, i64 %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** @GSS_C_NO_BUFFER_SET, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = load i64*, i64** %6, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %23, i64* %5, align 8
  br label %197

24:                                               ; preds = %4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @GSS_KRB5_EXTRACT_AUTHZ_DATA_FROM_SEC_CONTEXT_X, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** @GSS_KRB5_EXTRACT_AUTHZ_DATA_FROM_SEC_CONTEXT_X, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @der_get_oid(i32 %27, i32 %30, %struct.TYPE_18__* %13, i32* null)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i64, i64* @EINVAL, align 8
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %36, i64* %5, align 8
  br label %197

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @calloc(i32 %43, i32 4)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = call i32 @der_free_oid(%struct.TYPE_18__* %13)
  %51 = load i64, i64* @ENOMEM, align 8
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %53, i64* %5, align 8
  br label %197

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i32* %56, i32* %58, i32 %63)
  %65 = call i32 @der_free_oid(%struct.TYPE_18__* %13)
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %66, i32* %73, align 4
  %74 = call i64 @der_length_oid(%struct.TYPE_18__* %14)
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @malloc(i64 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store i32* %79, i32** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %54
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @free(i32* %86)
  %88 = load i64, i64* @ENOMEM, align 8
  %89 = load i64*, i64** %6, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %90, i64* %5, align 8
  br label %197

91:                                               ; preds = %54
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @der_put_oid(i8* %98, i64 %100, %struct.TYPE_18__* %14, i64* %15)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @free(i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @free(i32* %108)
  %110 = load i64, i64* @EINVAL, align 8
  %111 = load i64*, i64** %6, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %112, i64* %5, align 8
  br label %197

113:                                              ; preds = %91
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 (...) @abort() #3
  unreachable

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @free(i32* %122)
  %124 = load i64*, i64** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i64 @gss_inquire_sec_context_by_oid(i64* %124, i64 %125, %struct.TYPE_21__* %12, %struct.TYPE_20__** %10)
  store i64 %126, i64* %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @free(i32* %128)
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %120
  %133 = load i64, i64* %11, align 8
  store i64 %133, i64* %5, align 8
  br label %197

134:                                              ; preds = %120
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** @GSS_C_NO_BUFFER_SET, align 8
  %137 = icmp eq %struct.TYPE_20__* %135, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %149

143:                                              ; preds = %138, %134
  %144 = load i64*, i64** %6, align 8
  %145 = call i32 @gss_release_buffer_set(i64* %144, %struct.TYPE_20__** %10)
  %146 = load i64, i64* @EINVAL, align 8
  %147 = load i64*, i64** %6, align 8
  store i64 %146, i64* %147, align 8
  %148 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %148, i64* %5, align 8
  br label %197

149:                                              ; preds = %138
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @malloc(i64 %155)
  %157 = bitcast i8* %156 to i32*
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %149
  %165 = load i64*, i64** %6, align 8
  %166 = call i32 @gss_release_buffer_set(i64* %165, %struct.TYPE_20__** %10)
  %167 = load i64, i64* @ENOMEM, align 8
  %168 = load i64*, i64** %6, align 8
  store i64 %167, i64* %168, align 8
  %169 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %169, i64* %5, align 8
  br label %197

170:                                              ; preds = %149
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @memcpy(i32* %182, i32* %188, i32 %191)
  %193 = load i64*, i64** %6, align 8
  %194 = call i32 @gss_release_buffer_set(i64* %193, %struct.TYPE_20__** %10)
  %195 = load i64*, i64** %6, align 8
  store i64 0, i64* %195, align 8
  %196 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %196, i64* %5, align 8
  br label %197

197:                                              ; preds = %170, %164, %143, %132, %103, %84, %49, %33, %20
  %198 = load i64, i64* %5, align 8
  ret i64 %198
}

declare dso_local i64 @der_get_oid(i32, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @der_free_oid(%struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @der_length_oid(%struct.TYPE_18__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @der_put_oid(i8*, i64, %struct.TYPE_18__*, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @gss_inquire_sec_context_by_oid(i64*, i64, %struct.TYPE_21__*, %struct.TYPE_20__**) #1

declare dso_local i32 @gss_release_buffer_set(i64*, %struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
