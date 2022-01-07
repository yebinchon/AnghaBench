; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_pkt2buffer_wire.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2wire.c_ldns_pkt2buffer_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@ldns_dname_compare = common dso_local global i64 0, align 8
@LDNS_SECTION_QUESTION = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@LDNS_SECTION_ADDITIONAL = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_DNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LDNS_RR_TYPE_OPT = common dso_local global i32 0, align 4
@compression_node_free = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_pkt2buffer_wire(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load i64, i64* @ldns_dname_compare, align 8
  %12 = inttoptr i64 %11 to i32 (i8*, i8*)*
  %13 = call i32* @ldns_rbtree_create(i32 (i8*, i8*)* %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = call i32 @ldns_hdr2buffer_wire(i32* %14, %struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = call i32* @ldns_pkt_question(%struct.TYPE_14__* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @ldns_rr_list_rr_count(i32* %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32* @ldns_rr_list_rr(i32* %29, i64 %30)
  %32 = load i32, i32* @LDNS_SECTION_QUESTION, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @ldns_rr2buffer_wire_compress(i32* %28, i32* %31, i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %22

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = call i32* @ldns_pkt_answer(%struct.TYPE_14__* %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i64, i64* %7, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @ldns_rr_list_rr_count(i32* %47)
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32* @ldns_rr_list_rr(i32* %52, i64 %53)
  %55 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @ldns_rr2buffer_wire_compress(i32* %51, i32* %54, i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %45

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = call i32* @ldns_pkt_authority(%struct.TYPE_14__* %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  store i64 0, i64* %7, align 8
  br label %68

68:                                               ; preds = %81, %67
  %69 = load i64, i64* %7, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i64 @ldns_rr_list_rr_count(i32* %70)
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32* @ldns_rr_list_rr(i32* %75, i64 %76)
  %78 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @ldns_rr2buffer_wire_compress(i32* %74, i32* %77, i32 %78, i32* %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i64, i64* %7, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %7, align 8
  br label %68

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = call i32* @ldns_pkt_additional(%struct.TYPE_14__* %86)
  store i32* %87, i32** %6, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  store i64 0, i64* %7, align 8
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i64, i64* %7, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @ldns_rr_list_rr_count(i32* %93)
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32* @ldns_rr_list_rr(i32* %98, i64 %99)
  %101 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @ldns_rr2buffer_wire_compress(i32* %97, i32* %100, i32 %101, i32* %102)
  br label %104

104:                                              ; preds = %96
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %91

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107, %85
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = call i64 @ldns_pkt_edns(%struct.TYPE_14__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %170

112:                                              ; preds = %108
  %113 = call i32* (...) @ldns_rr_new()
  store i32* %113, i32** %8, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %117, i32* %3, align 4
  br label %188

118:                                              ; preds = %112
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @LDNS_RDF_TYPE_DNAME, align 4
  %121 = call i32 @ldns_rdf_new_frm_str(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %122 = call i32 @ldns_rr_set_owner(i32* %119, i32 %121)
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* @LDNS_RR_TYPE_OPT, align 4
  %125 = call i32 @ldns_rr_set_type(i32* %123, i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = call i32 @ldns_pkt_edns_udp_size(%struct.TYPE_14__* %127)
  %129 = call i32 @ldns_rr_set_class(i32* %126, i32 %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = call i32 @ldns_pkt_edns_extended_rcode(%struct.TYPE_14__* %130)
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %131, i32* %132, align 16
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = call i32 @ldns_pkt_edns_version(%struct.TYPE_14__* %133)
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %138 = call i32 @ldns_pkt_edns_z(%struct.TYPE_14__* %137)
  %139 = call i32 @ldns_write_uint16(i32* %136, i32 %138)
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %142 = call i32 @ldns_read_uint32(i32* %141)
  %143 = call i32 @ldns_rr_set_ttl(i32* %140, i32 %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %118
  %149 = load i32*, i32** %8, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ldns_rr_push_rdf(i32* %149, i32 %152)
  br label %154

154:                                              ; preds = %148, %118
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @ldns_rr2buffer_wire_compress(i32* %155, i32* %156, i32 %157, i32* %158)
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %154
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @ldns_rr_pop_rdf(i32* %165)
  br label %167

167:                                              ; preds = %164, %154
  %168 = load i32*, i32** %8, align 8
  %169 = call i32 @ldns_rr_free(i32* %168)
  br label %170

170:                                              ; preds = %167, %108
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = call i32* @ldns_pkt_tsig(%struct.TYPE_14__* %171)
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load i32*, i32** %4, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %177 = call i32* @ldns_pkt_tsig(%struct.TYPE_14__* %176)
  %178 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @ldns_rr2buffer_wire_compress(i32* %175, i32* %177, i32 %178, i32* %179)
  br label %181

181:                                              ; preds = %174, %170
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* @compression_node_free, align 4
  %184 = call i32 @ldns_traverse_postorder(i32* %182, i32 %183, i32* null)
  %185 = load i32*, i32** %10, align 8
  %186 = call i32 @ldns_rbtree_free(i32* %185)
  %187 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %181, %116
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32* @ldns_rbtree_create(i32 (i8*, i8*)*) #1

declare dso_local i32 @ldns_hdr2buffer_wire(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @ldns_pkt_question(%struct.TYPE_14__*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @ldns_rr2buffer_wire_compress(i32*, i32*, i32, i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32* @ldns_pkt_answer(%struct.TYPE_14__*) #1

declare dso_local i32* @ldns_pkt_authority(%struct.TYPE_14__*) #1

declare dso_local i32* @ldns_pkt_additional(%struct.TYPE_14__*) #1

declare dso_local i64 @ldns_pkt_edns(%struct.TYPE_14__*) #1

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32) #1

declare dso_local i32 @ldns_rdf_new_frm_str(i32, i8*) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_pkt_edns_udp_size(%struct.TYPE_14__*) #1

declare dso_local i32 @ldns_pkt_edns_extended_rcode(%struct.TYPE_14__*) #1

declare dso_local i32 @ldns_pkt_edns_version(%struct.TYPE_14__*) #1

declare dso_local i32 @ldns_write_uint16(i32*, i32) #1

declare dso_local i32 @ldns_pkt_edns_z(%struct.TYPE_14__*) #1

declare dso_local i32 @ldns_rr_set_ttl(i32*, i32) #1

declare dso_local i32 @ldns_read_uint32(i32*) #1

declare dso_local i32 @ldns_rr_push_rdf(i32*, i32) #1

declare dso_local i32 @ldns_rr_pop_rdf(i32*) #1

declare dso_local i32 @ldns_rr_free(i32*) #1

declare dso_local i32* @ldns_pkt_tsig(%struct.TYPE_14__*) #1

declare dso_local i32 @ldns_traverse_postorder(i32*, i32, i32*) #1

declare dso_local i32 @ldns_rbtree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
