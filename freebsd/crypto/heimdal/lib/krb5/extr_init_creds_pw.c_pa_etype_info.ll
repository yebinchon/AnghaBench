; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_etype_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_etype_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64* }
%struct.pa_info_data = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32 }

@KRB5_PW_SALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pa_info_data* (i32, i32, %struct.TYPE_23__*, %struct.pa_info_data*, %struct.TYPE_21__*)* @pa_etype_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pa_info_data* @pa_etype_info(i32 %0, i32 %1, %struct.TYPE_23__* %2, %struct.pa_info_data* %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca %struct.pa_info_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.pa_info_data*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_20__, align 4
  %18 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %9, align 8
  store %struct.pa_info_data* %3, %struct.pa_info_data** %10, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  %19 = call i32 @memset(%struct.TYPE_22__* %13, i32 0, i32 16)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @decode_ETYPE_INFO(i32 %22, i32 %25, %struct.TYPE_22__* %13, i64* %14)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %161

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %161

35:                                               ; preds = %30
  store i64 0, i64* %16, align 8
  br label %36

36:                                               ; preds = %157, %35
  %37 = load i64, i64* %16, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %160

44:                                               ; preds = %36
  store i64 0, i64* %15, align 8
  br label %45

45:                                               ; preds = %153, %44
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %156

50:                                               ; preds = %45
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %58, %64
  br i1 %65, label %66, label %152

66:                                               ; preds = %50
  %67 = load i32, i32* @KRB5_PW_SALT, align 4
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = icmp eq %struct.TYPE_18__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @krb5_get_pw_salt(i32 %77, i32 %78, %struct.TYPE_20__* %17)
  store i64 %79, i64* %12, align 8
  br label %90

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = bitcast %struct.TYPE_18__* %81 to i8*
  %89 = bitcast %struct.TYPE_18__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 8, i1 false)
  store i64 0, i64* %12, align 8
  br label %90

90:                                               ; preds = %80, %76
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %98, %90
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %145

110:                                              ; preds = %107
  %111 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  %112 = load i32, i32* %7, align 4
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @set_paid(%struct.pa_info_data* %111, i32 %112, i64 %118, i32 %120, i32 %123, i32 %126, i32* null)
  store i64 %127, i64* %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = load i64, i64* %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = icmp eq %struct.TYPE_18__* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %110
  %136 = load i32, i32* %7, align 4
  %137 = bitcast { i64, i32 }* %18 to i8*
  %138 = bitcast %struct.TYPE_20__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 12, i1 false)
  %139 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %140 = load i64, i64* %139, align 4
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @krb5_free_salt(i32 %136, i64 %140, i32 %142)
  br label %144

144:                                              ; preds = %135, %110
  br label %145

145:                                              ; preds = %144, %107
  %146 = load i64, i64* %12, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = call i32 @free_ETYPE_INFO(%struct.TYPE_22__* %13)
  %150 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  store %struct.pa_info_data* %150, %struct.pa_info_data** %6, align 8
  br label %163

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %50
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %15, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %15, align 8
  br label %45

156:                                              ; preds = %45
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %16, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %16, align 8
  br label %36

160:                                              ; preds = %36
  br label %161

161:                                              ; preds = %160, %34, %29
  %162 = call i32 @free_ETYPE_INFO(%struct.TYPE_22__* %13)
  store %struct.pa_info_data* null, %struct.pa_info_data** %6, align 8
  br label %163

163:                                              ; preds = %161, %148
  %164 = load %struct.pa_info_data*, %struct.pa_info_data** %6, align 8
  ret %struct.pa_info_data* %164
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @decode_ETYPE_INFO(i32, i32, %struct.TYPE_22__*, i64*) #1

declare dso_local i64 @krb5_get_pw_salt(i32, i32, %struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @set_paid(%struct.pa_info_data*, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @krb5_free_salt(i32, i64, i32) #1

declare dso_local i32 @free_ETYPE_INFO(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
