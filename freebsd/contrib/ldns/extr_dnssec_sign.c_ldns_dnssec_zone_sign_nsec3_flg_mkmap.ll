; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_dnssec_zone_sign_nsec3_flg_mkmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_dnssec_zone_sign_nsec3_flg_mkmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32* }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_dnssec_zone_sign_nsec3_flg_mkmap(%struct.TYPE_16__* %0, i32* %1, i32* %2, i32 (i32*, i8*)* %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32 %10, i32** %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32 (i32*, i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32**, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32 (i32*, i8*)* %3, i32 (i32*, i8*)** %17, align 8
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32** %11, i32*** %25, align 8
  %29 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %29, i64* %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %31 = call i64 @ldns_dnssec_zone_mark_glue(%struct.TYPE_16__* %30)
  store i64 %31, i64* %28, align 8
  %32 = load i64, i64* %28, align 8
  %33 = load i64, i64* @LDNS_STATUS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i64, i64* %28, align 8
  store i64 %36, i64* %13, align 8
  br label %139

37:                                               ; preds = %12
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = icmp ne %struct.TYPE_14__* %40, null
  br i1 %41, label %42, label %137

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %44 = call i64 @ldns_dnssec_zone_add_empty_nonterminals(%struct.TYPE_16__* %43)
  store i64 %44, i64* %28, align 8
  %45 = load i64, i64* %28, align 8
  %46 = load i64, i64* @LDNS_STATUS_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i64, i64* %28, align 8
  store i64 %49, i64* %13, align 8
  br label %139

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_17__*
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %26, align 8
  %61 = load i32*, i32** %26, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load i32*, i32** %26, align 8
  %65 = call i64 @ldns_rr_get_type(i32* %64)
  %66 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %129

69:                                               ; preds = %63, %50
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LDNS_RR_TYPE_NSEC3PARAM, align 4
  %77 = call i32 @ldns_dnssec_zone_find_rrset(%struct.TYPE_16__* %70, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %113, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @LDNS_RR_TYPE_NSEC3PARAM, align 4
  %81 = call i32* @ldns_rr_new_frm_type(i32 %80)
  store i32* %81, i32** %27, align 8
  %82 = load i32*, i32** %27, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ldns_rdf_clone(i32 %87)
  %89 = call i32 @ldns_rr_set_owner(i32* %82, i32 %88)
  %90 = load i32*, i32** %27, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32*, i32** %23, align 8
  %96 = call i32 @ldns_nsec3_add_param_rdfs(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32* %95)
  %97 = load i32*, i32** %27, align 8
  %98 = call i32 @ldns_rr_rdf(i32* %97, i32 1)
  %99 = call i32 @ldns_rdf_data(i32 %98)
  %100 = call i32 @ldns_set_bit(i32 %99, i32 0, i32 0)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %102 = load i32*, i32** %27, align 8
  %103 = call i64 @ldns_dnssec_zone_add_rr(%struct.TYPE_16__* %101, i32* %102)
  store i64 %103, i64* %28, align 8
  %104 = load i64, i64* %28, align 8
  %105 = load i64, i64* @LDNS_STATUS_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %79
  %108 = load i64, i64* %28, align 8
  store i64 %108, i64* %13, align 8
  br label %139

109:                                              ; preds = %79
  %110 = load i32*, i32** %15, align 8
  %111 = load i32*, i32** %27, align 8
  %112 = call i32 @ldns_rr_list_push_rr(i32* %110, i32* %111)
  br label %113

113:                                              ; preds = %109, %69
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32*, i32** %23, align 8
  %121 = load i32**, i32*** %25, align 8
  %122 = call i64 @ldns_dnssec_zone_create_nsec3s_mkmap(%struct.TYPE_16__* %114, i32* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32* %120, i32** %121)
  store i64 %122, i64* %28, align 8
  %123 = load i64, i64* %28, align 8
  %124 = load i64, i64* @LDNS_STATUS_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %113
  %127 = load i64, i64* %28, align 8
  store i64 %127, i64* %13, align 8
  br label %139

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128, %68
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %17, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = load i32, i32* %24, align 4
  %136 = call i64 @ldns_dnssec_zone_create_rrsigs_flg(%struct.TYPE_16__* %130, i32* %131, i32* %132, i32 (i32*, i8*)* %133, i8* %134, i32 %135)
  store i64 %136, i64* %28, align 8
  br label %137

137:                                              ; preds = %129, %37
  %138 = load i64, i64* %28, align 8
  store i64 %138, i64* %13, align 8
  br label %139

139:                                              ; preds = %137, %126, %107, %48, %35
  %140 = load i64, i64* %13, align 8
  ret i64 %140
}

declare dso_local i64 @ldns_dnssec_zone_mark_glue(%struct.TYPE_16__*) #1

declare dso_local i64 @ldns_dnssec_zone_add_empty_nonterminals(%struct.TYPE_16__*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_dnssec_zone_find_rrset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32* @ldns_rr_new_frm_type(i32) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32) #1

declare dso_local i32 @ldns_rdf_clone(i32) #1

declare dso_local i32 @ldns_nsec3_add_param_rdfs(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ldns_set_bit(i32, i32, i32) #1

declare dso_local i32 @ldns_rdf_data(i32) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i32) #1

declare dso_local i64 @ldns_dnssec_zone_add_rr(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32*) #1

declare dso_local i64 @ldns_dnssec_zone_create_nsec3s_mkmap(%struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i64 @ldns_dnssec_zone_create_rrsigs_flg(%struct.TYPE_16__*, i32*, i32*, i32 (i32*, i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
