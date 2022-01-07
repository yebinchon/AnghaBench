; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_rdata_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_rdata_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i32 }
%struct.rr_parse = type { i64*, i64, i64 }
%struct.TYPE_3__ = type { i64, i32* }

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i64 0, align 8
@MAX_NEG_TTL = common dso_local global i32 0, align 4
@MIN_TTL = common dso_local global i32 0, align 4
@MAX_TTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.packed_rrset_data*, i32*, %struct.rr_parse*, i32*, i64, i64)* @rdata_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdata_copy(i32* %0, %struct.packed_rrset_data* %1, i32* %2, %struct.rr_parse* %3, i32* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rr_parse*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.packed_rrset_data* %1, %struct.packed_rrset_data** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.rr_parse* %3, %struct.rr_parse** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %23 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @sldns_read_uint32(i64* %24)
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -2147483648
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32*, i32** %13, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %7
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @LDNS_SECTION_AUTHORITY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %45 = call i32 @soa_find_minttl(%struct.rr_parse* %44)
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %49 = call i32 @soa_find_minttl(%struct.rr_parse* %48)
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAX_NEG_TTL, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @MAX_NEG_TTL, align 4
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %37, %33
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MIN_TTL, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @MIN_TTL, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MAX_TTL, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @MAX_TTL, align 4
  %75 = load i32*, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %80 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %87 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %90 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %96 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 4
  %99 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %100 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @memmove(i32* %94, i64* %98, i64 %101)
  store i32 1, i32* %8, align 4
  br label %240

103:                                              ; preds = %88
  %104 = load i32*, i32** %9, align 8
  %105 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %106 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i64* @sldns_buffer_begin(i32* %108)
  %110 = ptrtoint i64* %107 to i64
  %111 = ptrtoint i64* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 8
  %114 = add i64 %113, 4
  %115 = call i32 @sldns_buffer_set_position(i32* %104, i64 %114)
  %116 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  %117 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 2
  %120 = call i64 @htons(i64 %119)
  store i64 %120, i64* %16, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @memmove(i32* %121, i64* %16, i64 8)
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32* %124, i32** %11, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = call i64 @sldns_buffer_read_u16(i32* %125)
  store i64 %126, i64* %16, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i64 @sldns_buffer_remaining(i32* %127)
  %129 = load i64, i64* %16, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %240

132:                                              ; preds = %103
  %133 = load i64, i64* %14, align 8
  %134 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %133)
  store %struct.TYPE_3__* %134, %struct.TYPE_3__** %17, align 8
  %135 = load i64, i64* %16, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %230

137:                                              ; preds = %132
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %139 = icmp ne %struct.TYPE_3__* %138, null
  br i1 %139, label %140, label %230

140:                                              ; preds = %137
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %230

145:                                              ; preds = %140
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %150

150:                                              ; preds = %226, %145
  %151 = load i64, i64* %16, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi i1 [ false, %150 ], [ %155, %153 ]
  br i1 %157, label %158, label %229

158:                                              ; preds = %156
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %193 [
    i32 129, label %166
    i32 128, label %187
  ]

166:                                              ; preds = %158
  %167 = load i32*, i32** %9, align 8
  %168 = call i64 @sldns_buffer_position(i32* %167)
  store i64 %168, i64* %21, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = call i64* @sldns_buffer_current(i32* %171)
  %173 = call i32 @dname_pkt_copy(i32* %169, i32* %170, i64* %172)
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @pkt_dname_len(i32* %174)
  %176 = load i32*, i32** %11, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %11, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = call i64 @sldns_buffer_position(i32* %179)
  %181 = load i64, i64* %21, align 8
  %182 = sub i64 %180, %181
  %183 = load i64, i64* %16, align 8
  %184 = sub i64 %183, %182
  store i64 %184, i64* %16, align 8
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %18, align 4
  store i64 0, i64* %20, align 8
  br label %202

187:                                              ; preds = %158
  %188 = load i32*, i32** %9, align 8
  %189 = call i64* @sldns_buffer_current(i32* %188)
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %20, align 8
  br label %202

193:                                              ; preds = %158
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @get_rdf_size(i32 %200)
  store i64 %201, i64* %20, align 8
  br label %202

202:                                              ; preds = %193, %187, %166
  %203 = load i64, i64* %20, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %226

205:                                              ; preds = %202
  %206 = load i32*, i32** %11, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = call i64* @sldns_buffer_current(i32* %207)
  %209 = load i64, i64* %20, align 8
  %210 = call i32 @memmove(i32* %206, i64* %208, i64 %209)
  %211 = load i64, i64* %20, align 8
  %212 = load i32*, i32** %11, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 %211
  store i32* %213, i32** %11, align 8
  %214 = load i32*, i32** %9, align 8
  %215 = load i64, i64* %20, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 @sldns_buffer_skip(i32* %214, i32 %216)
  %218 = load i64, i64* %20, align 8
  %219 = load i64, i64* %16, align 8
  %220 = icmp ule i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @log_assert(i32 %221)
  %223 = load i64, i64* %20, align 8
  %224 = load i64, i64* %16, align 8
  %225 = sub i64 %224, %223
  store i64 %225, i64* %16, align 8
  br label %226

226:                                              ; preds = %205, %202
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  br label %150

229:                                              ; preds = %156
  br label %230

230:                                              ; preds = %229, %140, %137, %132
  %231 = load i64, i64* %16, align 8
  %232 = icmp sgt i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load i32*, i32** %11, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = call i64* @sldns_buffer_current(i32* %235)
  %237 = load i64, i64* %16, align 8
  %238 = call i32 @memmove(i32* %234, i64* %236, i64 %237)
  br label %239

239:                                              ; preds = %233, %230
  store i32 1, i32* %8, align 4
  br label %240

240:                                              ; preds = %239, %131, %93
  %241 = load i32, i32* %8, align 4
  ret i32 %241
}

declare dso_local i32 @sldns_read_uint32(i64*) #1

declare dso_local i32 @soa_find_minttl(%struct.rr_parse*) #1

declare dso_local i32 @memmove(i32*, i64*, i64) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i64* @sldns_buffer_begin(i32*) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i64 @sldns_buffer_read_u16(i32*) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local %struct.TYPE_3__* @sldns_rr_descript(i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i64*) #1

declare dso_local i64* @sldns_buffer_current(i32*) #1

declare dso_local i32 @pkt_dname_len(i32*) #1

declare dso_local i64 @get_rdf_size(i32) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
