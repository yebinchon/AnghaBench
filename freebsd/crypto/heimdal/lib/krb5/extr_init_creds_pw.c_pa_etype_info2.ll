; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_etype_info2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_etype_info2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64* }
%struct.pa_info_data = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@KRB5_PW_SALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pa_info_data* (i32, i32, %struct.TYPE_23__*, %struct.pa_info_data*, %struct.TYPE_21__*)* @pa_etype_info2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pa_info_data* @pa_etype_info2(i32 %0, i32 %1, %struct.TYPE_23__* %2, %struct.pa_info_data* %3, %struct.TYPE_21__* %4) #0 {
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
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %9, align 8
  store %struct.pa_info_data* %3, %struct.pa_info_data** %10, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  %18 = call i32 @memset(%struct.TYPE_22__* %13, i32 0, i32 16)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @decode_ETYPE_INFO2(i32 %21, i32 %24, %struct.TYPE_22__* %13, i64* %14)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %153

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %153

34:                                               ; preds = %29
  store i64 0, i64* %16, align 8
  br label %35

35:                                               ; preds = %149, %34
  %36 = load i64, i64* %16, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %36, %41
  br i1 %42, label %43, label %152

43:                                               ; preds = %35
  store i64 0, i64* %15, align 8
  br label %44

44:                                               ; preds = %145, %43
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %148

49:                                               ; preds = %44
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %57, %63
  br i1 %64, label %65, label %144

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @krb5_get_pw_salt(i32 %74, i32 %75, %struct.TYPE_20__* %17)
  store i64 %76, i64* %12, align 8
  br label %97

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strlen(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i64 0, i64* %12, align 8
  br label %97

97:                                               ; preds = %77, %73
  %98 = load i64, i64* %12, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  %102 = load i32, i32* %7, align 4
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @KRB5_PW_SALT, align 4
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @set_paid(%struct.pa_info_data* %101, i32 %102, i64 %108, i32 %109, i32 %112, i32 %115, i32 %121)
  store i64 %122, i64* %12, align 8
  br label %123

123:                                              ; preds = %100, %97
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %134 = bitcast %struct.TYPE_18__* %133 to i64*
  %135 = load i64, i64* %134, align 4
  %136 = call i32 @krb5_free_salt(i32 %132, i64 %135)
  br label %137

137:                                              ; preds = %131, %123
  %138 = load i64, i64* %12, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = call i32 @free_ETYPE_INFO2(%struct.TYPE_22__* %13)
  %142 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  store %struct.pa_info_data* %142, %struct.pa_info_data** %6, align 8
  br label %155

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %49
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %15, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %15, align 8
  br label %44

148:                                              ; preds = %44
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %16, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %16, align 8
  br label %35

152:                                              ; preds = %35
  br label %153

153:                                              ; preds = %152, %33, %28
  %154 = call i32 @free_ETYPE_INFO2(%struct.TYPE_22__* %13)
  store %struct.pa_info_data* null, %struct.pa_info_data** %6, align 8
  br label %155

155:                                              ; preds = %153, %140
  %156 = load %struct.pa_info_data*, %struct.pa_info_data** %6, align 8
  ret %struct.pa_info_data* %156
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @decode_ETYPE_INFO2(i32, i32, %struct.TYPE_22__*, i64*) #1

declare dso_local i64 @krb5_get_pw_salt(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @set_paid(%struct.pa_info_data*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @krb5_free_salt(i32, i64) #1

declare dso_local i32 @free_ETYPE_INFO2(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
