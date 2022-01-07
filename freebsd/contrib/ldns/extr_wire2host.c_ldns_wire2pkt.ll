; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_wire2host.c_ldns_wire2pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@status_error = common dso_local global i32 0, align 4
@LDNS_SECTION_QUESTION = common dso_local global i32 0, align 4
@LDNS_STATUS_PACKET_OVERFLOW = common dso_local global i64 0, align 8
@LDNS_STATUS_WIRE_INCOMPLETE_QUESTION = common dso_local global i64 0, align 8
@LDNS_STATUS_INTERNAL_ERR = common dso_local global i64 0, align 8
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_STATUS_WIRE_INCOMPLETE_ANSWER = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@LDNS_STATUS_WIRE_INCOMPLETE_AUTHORITY = common dso_local global i64 0, align 8
@LDNS_SECTION_ADDITIONAL = common dso_local global i32 0, align 4
@LDNS_STATUS_WIRE_INCOMPLETE_ADDITIONAL = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_OPT = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_TSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_wire2pkt(%struct.TYPE_22__** %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_22__**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4 x i64], align 16
  store %struct.TYPE_22__** %0, %struct.TYPE_22__*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %15 = call %struct.TYPE_22__* (...) @ldns_pkt_new()
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %11, align 8
  %16 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %16, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @ldns_wire2pkt_hdr(%struct.TYPE_22__* %17, i64* %18, i64 %19, i64* %8)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i32, i32* @status_error, align 4
  %23 = call i32 @LDNS_STATUS_CHECK_GOTO(i64 %21, i32 %22)
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %53, %3
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %27 = call i64 @ldns_pkt_qdcount(%struct.TYPE_22__* %26)
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @LDNS_SECTION_QUESTION, align 4
  %33 = call i64 @ldns_wire2rr(i32** %10, i64* %30, i64 %31, i64* %8, i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @LDNS_STATUS_PACKET_OVERFLOW, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @LDNS_STATUS_WIRE_INCOMPLETE_QUESTION, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* @status_error, align 4
  %42 = call i32 @LDNS_STATUS_CHECK_GOTO(i64 %40, i32 %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %44 = call i32 @ldns_pkt_question(%struct.TYPE_22__* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @ldns_rr_list_push_rr(i32 %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %50 = call i32 @ldns_pkt_free(%struct.TYPE_22__* %49)
  %51 = load i64, i64* @LDNS_STATUS_INTERNAL_ERR, align 8
  store i64 %51, i64* %4, align 8
  br label %235

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %24

56:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %86, %56
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %60 = call i64 @ldns_pkt_ancount(%struct.TYPE_22__* %59)
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %66 = call i64 @ldns_wire2rr(i32** %10, i64* %63, i64 %64, i64* %8, i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @LDNS_STATUS_PACKET_OVERFLOW, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, i64* @LDNS_STATUS_WIRE_INCOMPLETE_ANSWER, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %70, %62
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* @status_error, align 4
  %75 = call i32 @LDNS_STATUS_CHECK_GOTO(i64 %73, i32 %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %77 = call i32 @ldns_pkt_answer(%struct.TYPE_22__* %76)
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @ldns_rr_list_push_rr(i32 %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = call i32 @ldns_pkt_free(%struct.TYPE_22__* %82)
  %84 = load i64, i64* @LDNS_STATUS_INTERNAL_ERR, align 8
  store i64 %84, i64* %4, align 8
  br label %235

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %57

89:                                               ; preds = %57
  store i64 0, i64* %9, align 8
  br label %90

90:                                               ; preds = %119, %89
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %93 = call i64 @ldns_pkt_nscount(%struct.TYPE_22__* %92)
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load i64*, i64** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %99 = call i64 @ldns_wire2rr(i32** %10, i64* %96, i64 %97, i64* %8, i32 %98)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @LDNS_STATUS_PACKET_OVERFLOW, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i64, i64* @LDNS_STATUS_WIRE_INCOMPLETE_AUTHORITY, align 8
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %103, %95
  %106 = load i64, i64* %12, align 8
  %107 = load i32, i32* @status_error, align 4
  %108 = call i32 @LDNS_STATUS_CHECK_GOTO(i64 %106, i32 %107)
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %110 = call i32 @ldns_pkt_authority(%struct.TYPE_22__* %109)
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @ldns_rr_list_push_rr(i32 %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %116 = call i32 @ldns_pkt_free(%struct.TYPE_22__* %115)
  %117 = load i64, i64* @LDNS_STATUS_INTERNAL_ERR, align 8
  store i64 %117, i64* %4, align 8
  br label %235

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %9, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %9, align 8
  br label %90

122:                                              ; preds = %90
  store i64 0, i64* %9, align 8
  br label %123

123:                                              ; preds = %208, %122
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %126 = call i64 @ldns_pkt_arcount(%struct.TYPE_22__* %125)
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %128, label %211

128:                                              ; preds = %123
  %129 = load i64*, i64** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %132 = call i64 @ldns_wire2rr(i32** %10, i64* %129, i64 %130, i64* %8, i32 %131)
  store i64 %132, i64* %12, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* @LDNS_STATUS_PACKET_OVERFLOW, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i64, i64* @LDNS_STATUS_WIRE_INCOMPLETE_ADDITIONAL, align 8
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %136, %128
  %139 = load i64, i64* %12, align 8
  %140 = load i32, i32* @status_error, align 4
  %141 = call i32 @LDNS_STATUS_CHECK_GOTO(i64 %139, i32 %140)
  %142 = load i32*, i32** %10, align 8
  %143 = call i64 @ldns_rr_get_type(i32* %142)
  %144 = load i64, i64* @LDNS_RR_TYPE_OPT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %181

146:                                              ; preds = %138
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @ldns_rr_get_class(i32* %148)
  %150 = call i32 @ldns_pkt_set_edns_udp_size(%struct.TYPE_22__* %147, i32 %149)
  %151 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @ldns_rr_ttl(i32* %152)
  %154 = call i32 @ldns_write_uint32(i64* %151, i32 %153)
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %156 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %157 = load i64, i64* %156, align 16
  %158 = call i32 @ldns_pkt_set_edns_extended_rcode(%struct.TYPE_22__* %155, i64 %157)
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %160 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @ldns_pkt_set_edns_version(%struct.TYPE_22__* %159, i64 %161)
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %164 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 2
  %165 = call i32 @ldns_read_uint16(i64* %164)
  %166 = call i32 @ldns_pkt_set_edns_z(%struct.TYPE_22__* %163, i32 %165)
  %167 = load i32*, i32** %10, align 8
  %168 = call i64 @ldns_rr_rdf(i32* %167, i32 0)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %146
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = call i64 @ldns_rr_rdf(i32* %172, i32 0)
  %174 = call i32 @ldns_rdf_clone(i64 %173)
  %175 = call i32 @ldns_pkt_set_edns_data(%struct.TYPE_22__* %171, i32 %174)
  br label %176

176:                                              ; preds = %170, %146
  %177 = load i32*, i32** %10, align 8
  %178 = call i32 @ldns_rr_free(i32* %177)
  %179 = load i64, i64* %13, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %13, align 8
  br label %207

181:                                              ; preds = %138
  %182 = load i32*, i32** %10, align 8
  %183 = call i64 @ldns_rr_get_type(i32* %182)
  %184 = load i64, i64* @LDNS_RR_TYPE_TSIG, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @ldns_pkt_set_tsig(%struct.TYPE_22__* %187, i32* %188)
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %192 = call i64 @ldns_pkt_arcount(%struct.TYPE_22__* %191)
  %193 = sub nsw i64 %192, 1
  %194 = call i32 @ldns_pkt_set_arcount(%struct.TYPE_22__* %190, i64 %193)
  br label %206

195:                                              ; preds = %181
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %197 = call i32 @ldns_pkt_additional(%struct.TYPE_22__* %196)
  %198 = load i32*, i32** %10, align 8
  %199 = call i32 @ldns_rr_list_push_rr(i32 %197, i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %195
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %203 = call i32 @ldns_pkt_free(%struct.TYPE_22__* %202)
  %204 = load i64, i64* @LDNS_STATUS_INTERNAL_ERR, align 8
  store i64 %204, i64* %4, align 8
  br label %235

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %186
  br label %207

207:                                              ; preds = %206, %176
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %9, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %9, align 8
  br label %123

211:                                              ; preds = %123
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %213 = load i64, i64* %7, align 8
  %214 = call i32 @ldns_pkt_set_size(%struct.TYPE_22__* %212, i64 %213)
  %215 = load i64, i64* %13, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %220 = call i64 @ldns_pkt_arcount(%struct.TYPE_22__* %219)
  %221 = load i64, i64* %13, align 8
  %222 = sub nsw i64 %220, %221
  %223 = call i32 @ldns_pkt_set_arcount(%struct.TYPE_22__* %218, i64 %222)
  br label %224

224:                                              ; preds = %217, %211
  %225 = load i64, i64* %13, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %229 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_22__* %228, %struct.TYPE_22__** %229, align 8
  %230 = load i64, i64* %12, align 8
  store i64 %230, i64* %4, align 8
  br label %235

231:                                              ; No predecessors!
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %233 = call i32 @ldns_pkt_free(%struct.TYPE_22__* %232)
  %234 = load i64, i64* %12, align 8
  store i64 %234, i64* %4, align 8
  br label %235

235:                                              ; preds = %231, %224, %201, %114, %81, %48
  %236 = load i64, i64* %4, align 8
  ret i64 %236
}

declare dso_local %struct.TYPE_22__* @ldns_pkt_new(...) #1

declare dso_local i64 @ldns_wire2pkt_hdr(%struct.TYPE_22__*, i64*, i64, i64*) #1

declare dso_local i32 @LDNS_STATUS_CHECK_GOTO(i64, i32) #1

declare dso_local i64 @ldns_pkt_qdcount(%struct.TYPE_22__*) #1

declare dso_local i64 @ldns_wire2rr(i32**, i64*, i64, i64*, i32) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32, i32*) #1

declare dso_local i32 @ldns_pkt_question(%struct.TYPE_22__*) #1

declare dso_local i32 @ldns_pkt_free(%struct.TYPE_22__*) #1

declare dso_local i64 @ldns_pkt_ancount(%struct.TYPE_22__*) #1

declare dso_local i32 @ldns_pkt_answer(%struct.TYPE_22__*) #1

declare dso_local i64 @ldns_pkt_nscount(%struct.TYPE_22__*) #1

declare dso_local i32 @ldns_pkt_authority(%struct.TYPE_22__*) #1

declare dso_local i64 @ldns_pkt_arcount(%struct.TYPE_22__*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_pkt_set_edns_udp_size(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ldns_rr_get_class(i32*) #1

declare dso_local i32 @ldns_write_uint32(i64*, i32) #1

declare dso_local i32 @ldns_rr_ttl(i32*) #1

declare dso_local i32 @ldns_pkt_set_edns_extended_rcode(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @ldns_pkt_set_edns_version(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @ldns_pkt_set_edns_z(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ldns_read_uint16(i64*) #1

declare dso_local i64 @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32 @ldns_pkt_set_edns_data(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ldns_rdf_clone(i64) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i32 @ldns_pkt_set_tsig(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ldns_pkt_set_arcount(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @ldns_pkt_additional(%struct.TYPE_22__*) #1

declare dso_local i32 @ldns_pkt_set_size(%struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
