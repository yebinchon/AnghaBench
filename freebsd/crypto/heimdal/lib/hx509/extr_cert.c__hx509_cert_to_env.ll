; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_cert_to_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_cert_to_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"oid-name-here\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"eku\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_cert_to_env(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_17__, align 4
  %17 = alloca %struct.TYPE_17__, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %12, align 8
  %19 = load i32**, i32*** %7, align 8
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_19__* @_hx509_get_cert(i32 %20)
  %22 = call i32 @_hx509_cert_get_version(%struct.TYPE_19__* %21)
  %23 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @hx509_env_add(i32 %24, i32** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %194

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @hx509_cert_get_subject(i32 %33, i32* %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %194

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @hx509_name_to_string(i32 %39, i8** %10)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @hx509_name_free(i32* %9)
  br label %194

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @hx509_env_add(i32 %46, i32** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %11, align 4
  %49 = call i32 @hx509_name_free(i32* %9)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %194

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @hx509_cert_get_issuer(i32 %54, i32* %9)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %194

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @hx509_name_to_string(i32 %60, i8** %10)
  store i32 %61, i32* %11, align 4
  %62 = call i32 @hx509_name_free(i32* %9)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %194

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @hx509_env_add(i32 %67, i32** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @hx509_xfree(i8* %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %194

75:                                               ; preds = %66
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @_hx509_cert_get_eku(i32 %76, i32 %77, %struct.TYPE_18__* %8)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %130

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %194

87:                                               ; preds = %83
  store i32* null, i32** %14, align 8
  store i64 0, i64* %13, align 8
  br label %88

88:                                               ; preds = %116, %87
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = call i32 @der_print_heim_oid(i32* %97, i8 signext 46, i8** %10)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = call i32 @free_ExtKeyUsage(%struct.TYPE_18__* %8)
  %103 = call i32 @hx509_env_free(i32** %14)
  br label %194

104:                                              ; preds = %93
  %105 = load i32, i32* %5, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @hx509_env_add(i32 %105, i32** %14, i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %107, i32* %11, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = call i32 @free_ExtKeyUsage(%struct.TYPE_18__* %8)
  %114 = call i32 @hx509_env_free(i32** %14)
  br label %194

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %13, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %13, align 8
  br label %88

119:                                              ; preds = %88
  %120 = call i32 @free_ExtKeyUsage(%struct.TYPE_18__* %8)
  %121 = load i32, i32* %5, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @hx509_env_add_binding(i32 %121, i32** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 @hx509_env_free(i32** %14)
  br label %194

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %82
  %131 = load i32, i32* %6, align 4
  %132 = call %struct.TYPE_19__* @_hx509_get_cert(i32 %131)
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %15, align 8
  store i32* null, i32** %18, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %145, 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (...) @hx509_signature_sha1()
  %150 = call i32 @_hx509_create_signature(i32 %148, i32* null, i32 %149, %struct.TYPE_17__* %16, i32* null, %struct.TYPE_17__* %17)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %130
  br label %194

154:                                              ; preds = %130
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @hex_encode(i32 %156, i32 %158, i8** %10)
  store i32 %159, i32* %11, align 4
  %160 = call i32 @der_free_octet_string(%struct.TYPE_17__* %17)
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = load i32, i32* @ENOMEM, align 4
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @hx509_set_error_string(i32 %165, i32 0, i32 %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %194

168:                                              ; preds = %154
  %169 = load i32, i32* %5, align 4
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @hx509_env_add(i32 %169, i32** %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %170)
  store i32 %171, i32* %11, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 @free(i8* %172)
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %194

177:                                              ; preds = %168
  %178 = load i32, i32* %5, align 4
  %179 = load i32*, i32** %18, align 8
  %180 = call i32 @hx509_env_add_binding(i32 %178, i32** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = call i32 @hx509_env_free(i32** %18)
  br label %194

185:                                              ; preds = %177
  %186 = load i32, i32* %5, align 4
  %187 = load i32**, i32*** %7, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = call i32 @hx509_env_add_binding(i32 %186, i32** %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %188)
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %194

193:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %197

194:                                              ; preds = %192, %183, %176, %163, %153, %126, %112, %101, %86, %74, %65, %58, %52, %43, %37, %31
  %195 = call i32 @hx509_env_free(i32** %12)
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %194, %193
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @_hx509_cert_get_version(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @_hx509_get_cert(i32) #1

declare dso_local i32 @hx509_env_add(i32, i32**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hx509_cert_get_subject(i32, i32*) #1

declare dso_local i32 @hx509_name_to_string(i32, i8**) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @hx509_cert_get_issuer(i32, i32*) #1

declare dso_local i32 @hx509_xfree(i8*) #1

declare dso_local i32 @_hx509_cert_get_eku(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @der_print_heim_oid(i32*, i8 signext, i8**) #1

declare dso_local i32 @free_ExtKeyUsage(%struct.TYPE_18__*) #1

declare dso_local i32 @hx509_env_free(i32**) #1

declare dso_local i32 @hx509_env_add_binding(i32, i32**, i8*, i32*) #1

declare dso_local i32 @_hx509_create_signature(i32, i32*, i32, %struct.TYPE_17__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @hx509_signature_sha1(...) #1

declare dso_local i32 @hex_encode(i32, i32, i8**) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_17__*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
