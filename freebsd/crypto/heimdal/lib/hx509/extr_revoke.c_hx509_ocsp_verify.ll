; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_ocsp_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_ocsp_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64*, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to parse OCSP response\00", align 1
@HX509_CERT_NOT_IN_OCSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Certificate %s not in OCSP response or not good\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_ocsp_verify(%struct.TYPE_26__* %0, i64 %1, i32 %2, i32 %3, i8* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_27__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.TYPE_18__* @_hx509_get_cert(i32 %22)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %16, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = call i64 @time(i32* null)
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %7
  %29 = load i64*, i64** %15, align 8
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @parse_ocsp_basic(i8* %30, i64 %31, %struct.TYPE_27__* %17)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %37 = load i32, i32* %18, align 4
  %38 = call i32 (%struct.TYPE_26__*, i32, i32, i8*, ...) @hx509_set_error_string(%struct.TYPE_26__* %36, i32 0, i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %8, align 4
  br label %187

40:                                               ; preds = %28
  store i64 0, i64* %19, align 8
  br label %41

41:                                               ; preds = %157, %40
  %42 = load i64, i64* %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %160

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = load i64, i64* %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = call i32 @der_heim_integer_cmp(i32* %56, i32* %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %157

64:                                               ; preds = %48
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = load i64, i64* %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = load i64, i64* %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = call i32 @_hx509_verify_signature(%struct.TYPE_26__* %65, i32* null, i32* %73, i32* %77, i32* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %64
  br label %157

90:                                               ; preds = %64
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = load i64, i64* %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %102 [
    i32 130, label %100
    i32 129, label %101
    i32 128, label %101
  ]

100:                                              ; preds = %90
  br label %102

101:                                              ; preds = %90, %90
  br label %157

102:                                              ; preds = %90, %100
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = load i64, i64* %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = icmp sgt i64 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %157

118:                                              ; preds = %102
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = load i64, i64* %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = icmp ne i64* %126, null
  br i1 %127, label %128, label %152

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = load i64, i64* %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %157

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = load i64, i64* %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %15, align 8
  store i64 %150, i64* %151, align 8
  br label %155

152:                                              ; preds = %118
  %153 = load i64, i64* %10, align 8
  %154 = load i64*, i64** %15, align 8
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %141
  %156 = call i32 @free_OCSPBasicOCSPResponse(%struct.TYPE_27__* %17)
  store i32 0, i32* %8, align 4
  br label %187

157:                                              ; preds = %140, %117, %101, %89, %63
  %158 = load i64, i64* %19, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %19, align 8
  br label %41

160:                                              ; preds = %41
  %161 = call i32 @free_OCSPBasicOCSPResponse(%struct.TYPE_27__* %17)
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @hx509_cert_get_subject(i32 %162, i32* %20)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %168 = call i32 @hx509_clear_error_string(%struct.TYPE_26__* %167)
  br label %185

169:                                              ; preds = %160
  %170 = load i32, i32* %20, align 4
  %171 = call i32 @hx509_name_to_string(i32 %170, i8** %21)
  store i32 %171, i32* %18, align 4
  %172 = call i32 @hx509_name_free(i32* %20)
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %177 = call i32 @hx509_clear_error_string(%struct.TYPE_26__* %176)
  br label %185

178:                                              ; preds = %169
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %180 = load i32, i32* @HX509_CERT_NOT_IN_OCSP, align 4
  %181 = load i8*, i8** %21, align 8
  %182 = call i32 (%struct.TYPE_26__*, i32, i32, i8*, ...) @hx509_set_error_string(%struct.TYPE_26__* %179, i32 0, i32 %180, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  %183 = load i8*, i8** %21, align 8
  %184 = call i32 @free(i8* %183)
  br label %185

185:                                              ; preds = %178, %175, %166
  %186 = load i32, i32* @HX509_CERT_NOT_IN_OCSP, align 4
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %185, %155, %35
  %188 = load i32, i32* %8, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_18__* @_hx509_get_cert(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @parse_ocsp_basic(i8*, i64, %struct.TYPE_27__*) #1

declare dso_local i32 @hx509_set_error_string(%struct.TYPE_26__*, i32, i32, i8*, ...) #1

declare dso_local i32 @der_heim_integer_cmp(i32*, i32*) #1

declare dso_local i32 @_hx509_verify_signature(%struct.TYPE_26__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free_OCSPBasicOCSPResponse(%struct.TYPE_27__*) #1

declare dso_local i32 @hx509_cert_get_subject(i32, i32*) #1

declare dso_local i32 @hx509_clear_error_string(%struct.TYPE_26__*) #1

declare dso_local i32 @hx509_name_to_string(i32, i8**) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
