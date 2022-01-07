; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_verify_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_verify_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_36__ = type { i8*, i8* }
%struct.TYPE_22__ = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@HX509_PARSING_NAME_FAILED = common dso_local global i32 0, align 4
@asn1_oid_id_at_commonName = common dso_local global i32 0, align 4
@HX509_NAME_CONSTRAINT_ERROR = common dso_local global i32 0, align 4
@HX509_VHN_F_ALLOW_NO_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_verify_hostname(i32 %0, %struct.TYPE_35__* %1, i32 %2, i32 %3, i8* %4, %struct.sockaddr* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_36__, align 8
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca %struct.TYPE_36__, align 8
  %26 = alloca %struct.TYPE_22__, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %14, align 8
  store i32 %6, i32* %15, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %28 = icmp ne %struct.sockaddr* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load i32, i32* %15, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %8, align 4
  br label %209

34:                                               ; preds = %29, %7
  %35 = call i32 @memset(%struct.TYPE_24__* %16, i32 0, i32 16)
  store i64 0, i64* %19, align 8
  br label %36

36:                                               ; preds = %89, %34
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %38, align 8
  %40 = call i32 @find_extension_subject_alt_name(%struct.TYPE_27__* %39, i64* %19, %struct.TYPE_24__* %16)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %90

45:                                               ; preds = %36
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @HX509_PARSING_NAME_FAILED, align 4
  store i32 %49, i32* %8, align 4
  br label %209

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  store i64 0, i64* %20, align 8
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i64, i64* %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %60 = load i64, i64* %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %82 [
    i32 128, label %64
  ]

64:                                               ; preds = %57
  %65 = load i8*, i8** %13, align 8
  %66 = call i8* @rk_UNCONST(i8* %65)
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i8* @strlen(i8* %68)
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %71, align 8
  %73 = load i64, i64* %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = call i32 @der_printable_string_cmp(i32* %76, %struct.TYPE_36__* %22)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = call i32 @free_GeneralNames(%struct.TYPE_24__* %16)
  store i32 0, i32* %8, align 4
  br label %209

81:                                               ; preds = %64
  br label %83

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %20, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %20, align 8
  br label %52

87:                                               ; preds = %52
  %88 = call i32 @free_GeneralNames(%struct.TYPE_24__* %16)
  br label %89

89:                                               ; preds = %87
  br i1 true, label %36, label %90

90:                                               ; preds = %89, %44
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  store %struct.TYPE_23__* %95, %struct.TYPE_23__** %17, align 8
  store i32 0, i32* %18, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %21, align 8
  br label %101

101:                                              ; preds = %197, %90
  %102 = load i32, i32* %18, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i64, i64* %21, align 8
  %106 = icmp ugt i64 %105, 0
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi i1 [ false, %101 ], [ %106, %104 ]
  br i1 %108, label %109, label %200

109:                                              ; preds = %107
  %110 = load i64, i64* %21, align 8
  %111 = sub i64 %110, 1
  store i64 %111, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %112

112:                                              ; preds = %193, %109
  %113 = load i32, i32* %18, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i64, i64* %20, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %120, align 8
  %122 = load i64, i64* %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %116, %125
  br label %127

127:                                              ; preds = %115, %112
  %128 = phi i1 [ false, %112 ], [ %126, %115 ]
  br i1 %128, label %129, label %196

129:                                              ; preds = %127
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %133, align 8
  %135 = load i64, i64* %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  %139 = load i64, i64* %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i64 %139
  store %struct.TYPE_26__* %140, %struct.TYPE_26__** %23, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 1
  %143 = call i64 @der_heim_oid_cmp(i32* %142, i32* @asn1_oid_id_at_commonName)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %192

145:                                              ; preds = %129
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  store %struct.TYPE_25__* %147, %struct.TYPE_25__** %24, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %189 [
    i32 130, label %151
    i32 131, label %165
    i32 129, label %179
  ]

151:                                              ; preds = %145
  %152 = load i8*, i8** %13, align 8
  %153 = call i8* @rk_UNCONST(i8* %152)
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %25, i32 0, i32 1
  store i8* %153, i8** %154, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = call i8* @strlen(i8* %155)
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %25, i32 0, i32 0
  store i8* %156, i8** %157, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 2
  %161 = call i32 @der_printable_string_cmp(i32* %160, %struct.TYPE_36__* %25)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  store i32 0, i32* %8, align 4
  br label %209

164:                                              ; preds = %151
  br label %190

165:                                              ; preds = %145
  %166 = load i8*, i8** %13, align 8
  %167 = call i8* @rk_UNCONST(i8* %166)
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  store i8* %167, i8** %168, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = call i8* @strlen(i8* %169)
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  store i8* %170, i8** %171, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 1
  %175 = call i32 @der_ia5_string_cmp(i32* %174, %struct.TYPE_22__* %26)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  br label %209

178:                                              ; preds = %165
  br label %190

179:                                              ; preds = %145
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i8*, i8** %13, align 8
  %185 = call i32 @strcasecmp(i32 %183, i8* %184)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  store i32 0, i32* %8, align 4
  br label %209

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %145, %188
  br label %190

190:                                              ; preds = %189, %178, %164
  %191 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %191, i32* %18, align 4
  br label %192

192:                                              ; preds = %190, %129
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %20, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %20, align 8
  br label %112

196:                                              ; preds = %127
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %21, align 8
  %199 = add i64 %198, -1
  store i64 %199, i64* %21, align 8
  br label %101

200:                                              ; preds = %107
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @HX509_VHN_F_ALLOW_NO_MATCH, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %206, i32* %18, align 4
  br label %207

207:                                              ; preds = %205, %200
  %208 = load i32, i32* %18, align 4
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %207, %187, %177, %163, %79, %48, %32
  %210 = load i32, i32* %8, align 4
  ret i32 %210
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @find_extension_subject_alt_name(%struct.TYPE_27__*, i64*, %struct.TYPE_24__*) #1

declare dso_local i8* @rk_UNCONST(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @der_printable_string_cmp(i32*, %struct.TYPE_36__*) #1

declare dso_local i32 @free_GeneralNames(%struct.TYPE_24__*) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @der_ia5_string_cmp(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
