; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_rr_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_rr_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64, i64, i32, %struct.rr_parse*, i32, %struct.rr_parse* }
%struct.rr_parse = type { i64, %struct.rr_parse* }
%struct.packed_rrset_data = type { i64, i64, i64*, i32*, i32**, i32, i32, i32 }

@MAX_TTL = common dso_local global i32 0, align 4
@rrset_trust_none = common dso_local global i32 0, align 4
@sec_status_unchecked = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.rrset_parse*, %struct.packed_rrset_data*)* @parse_rr_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rr_copy(i32* %0, %struct.rrset_parse* %1, %struct.packed_rrset_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rrset_parse*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rr_parse*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.rrset_parse* %1, %struct.rrset_parse** %6, align 8
  store %struct.packed_rrset_data* %2, %struct.packed_rrset_data** %7, align 8
  %12 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %13 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %12, i32 0, i32 5
  %14 = load %struct.rr_parse*, %struct.rr_parse** %13, align 8
  store %struct.rr_parse* %14, %struct.rr_parse** %9, align 8
  %15 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %16 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %19 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @MAX_TTL, align 4
  %23 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %24 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %26 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %31 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %34 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @rrset_trust_none, align 4
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @sec_status_unchecked, align 4
  %39 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %40 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %42 = bitcast %struct.packed_rrset_data* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 56
  %44 = bitcast i32* %43 to i64*
  %45 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %46 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %45, i32 0, i32 2
  store i64* %44, i64** %46, align 8
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %48 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = bitcast i64* %51 to i32**
  %53 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %54 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %53, i32 0, i32 4
  store i32** %52, i32*** %54, align 8
  %55 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %56 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %55, i32 0, i32 4
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = bitcast i32** %59 to i32*
  %61 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %62 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %64 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %10, align 8
  store i64 0, i64* %8, align 8
  br label %68

68:                                               ; preds = %121, %3
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %71 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %124

74:                                               ; preds = %68
  %75 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %76 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %79 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %77, i64* %82, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %85 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %84, i32 0, i32 4
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  store i32* %83, i32** %88, align 8
  %89 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %90 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 %91
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %96 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %97 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %96, i32 0, i32 4
  %98 = load i32**, i32*** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %103 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %104 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %109 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %112 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @rdata_copy(i32* %94, %struct.packed_rrset_data* %95, i32* %101, %struct.rr_parse* %102, i32* %107, i32 %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %184

117:                                              ; preds = %74
  %118 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %119 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %118, i32 0, i32 1
  %120 = load %struct.rr_parse*, %struct.rr_parse** %119, align 8
  store %struct.rr_parse* %120, %struct.rr_parse** %9, align 8
  br label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %8, align 8
  br label %68

124:                                              ; preds = %68
  %125 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %126 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %125, i32 0, i32 3
  %127 = load %struct.rr_parse*, %struct.rr_parse** %126, align 8
  store %struct.rr_parse* %127, %struct.rr_parse** %9, align 8
  %128 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %129 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %8, align 8
  br label %131

131:                                              ; preds = %180, %124
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %11, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %183

135:                                              ; preds = %131
  %136 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %137 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %140 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 %138, i64* %143, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %146 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %145, i32 0, i32 4
  %147 = load i32**, i32*** %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds i32*, i32** %147, i64 %148
  store i32* %144, i32** %149, align 8
  %150 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %151 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 %152
  store i32* %154, i32** %10, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %157 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %158 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %157, i32 0, i32 4
  %159 = load i32**, i32*** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds i32*, i32** %159, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %164 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %165 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* @LDNS_RR_TYPE_RRSIG, align 4
  %170 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %171 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @rdata_copy(i32* %155, %struct.packed_rrset_data* %156, i32* %162, %struct.rr_parse* %163, i32* %168, i32 %169, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %184

176:                                              ; preds = %135
  %177 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %178 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %177, i32 0, i32 1
  %179 = load %struct.rr_parse*, %struct.rr_parse** %178, align 8
  store %struct.rr_parse* %179, %struct.rr_parse** %9, align 8
  br label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %8, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %8, align 8
  br label %131

183:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %184

184:                                              ; preds = %183, %175, %116
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @rdata_copy(i32*, %struct.packed_rrset_data*, i32*, %struct.rr_parse*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
