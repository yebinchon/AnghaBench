; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_59__ = type { i8*, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_59__* @ldns_pkt_clone(%struct.TYPE_59__* %0) #0 {
  %2 = alloca %struct.TYPE_59__*, align 8
  %3 = alloca %struct.TYPE_59__*, align 8
  %4 = alloca %struct.TYPE_59__*, align 8
  store %struct.TYPE_59__* %0, %struct.TYPE_59__** %3, align 8
  %5 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %6 = icmp ne %struct.TYPE_59__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_59__* null, %struct.TYPE_59__** %2, align 8
  br label %165

8:                                                ; preds = %1
  %9 = call %struct.TYPE_59__* (...) @ldns_pkt_new()
  store %struct.TYPE_59__* %9, %struct.TYPE_59__** %4, align 8
  %10 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %11 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %12 = call i32 @ldns_pkt_id(%struct.TYPE_59__* %11)
  %13 = call i32 @ldns_pkt_set_id(%struct.TYPE_59__* %10, i32 %12)
  %14 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %15 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %16 = call i32 @ldns_pkt_qr(%struct.TYPE_59__* %15)
  %17 = call i32 @ldns_pkt_set_qr(%struct.TYPE_59__* %14, i32 %16)
  %18 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %19 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %20 = call i32 @ldns_pkt_aa(%struct.TYPE_59__* %19)
  %21 = call i32 @ldns_pkt_set_aa(%struct.TYPE_59__* %18, i32 %20)
  %22 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %23 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %24 = call i32 @ldns_pkt_tc(%struct.TYPE_59__* %23)
  %25 = call i32 @ldns_pkt_set_tc(%struct.TYPE_59__* %22, i32 %24)
  %26 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %27 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %28 = call i32 @ldns_pkt_rd(%struct.TYPE_59__* %27)
  %29 = call i32 @ldns_pkt_set_rd(%struct.TYPE_59__* %26, i32 %28)
  %30 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %31 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %32 = call i32 @ldns_pkt_cd(%struct.TYPE_59__* %31)
  %33 = call i32 @ldns_pkt_set_cd(%struct.TYPE_59__* %30, i32 %32)
  %34 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %35 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %36 = call i32 @ldns_pkt_ra(%struct.TYPE_59__* %35)
  %37 = call i32 @ldns_pkt_set_ra(%struct.TYPE_59__* %34, i32 %36)
  %38 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %39 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %40 = call i32 @ldns_pkt_ad(%struct.TYPE_59__* %39)
  %41 = call i32 @ldns_pkt_set_ad(%struct.TYPE_59__* %38, i32 %40)
  %42 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %43 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %44 = call i32 @ldns_pkt_get_opcode(%struct.TYPE_59__* %43)
  %45 = call i32 @ldns_pkt_set_opcode(%struct.TYPE_59__* %42, i32 %44)
  %46 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %47 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %48 = call i32 @ldns_pkt_get_rcode(%struct.TYPE_59__* %47)
  %49 = call i32 @ldns_pkt_set_rcode(%struct.TYPE_59__* %46, i32 %48)
  %50 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %51 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %52 = call i32 @ldns_pkt_qdcount(%struct.TYPE_59__* %51)
  %53 = call i32 @ldns_pkt_set_qdcount(%struct.TYPE_59__* %50, i32 %52)
  %54 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %55 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %56 = call i32 @ldns_pkt_ancount(%struct.TYPE_59__* %55)
  %57 = call i32 @ldns_pkt_set_ancount(%struct.TYPE_59__* %54, i32 %56)
  %58 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %59 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %60 = call i32 @ldns_pkt_nscount(%struct.TYPE_59__* %59)
  %61 = call i32 @ldns_pkt_set_nscount(%struct.TYPE_59__* %58, i32 %60)
  %62 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %63 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %64 = call i32 @ldns_pkt_arcount(%struct.TYPE_59__* %63)
  %65 = call i32 @ldns_pkt_set_arcount(%struct.TYPE_59__* %62, i32 %64)
  %66 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %67 = call i64 @ldns_pkt_answerfrom(%struct.TYPE_59__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %8
  %70 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %71 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %72 = call i64 @ldns_pkt_answerfrom(%struct.TYPE_59__* %71)
  %73 = call i32 @ldns_rdf_clone(i64 %72)
  %74 = call i32 @ldns_pkt_set_answerfrom(%struct.TYPE_59__* %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %8
  %76 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %77 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %78 = call i32 @ldns_pkt_timestamp(%struct.TYPE_59__* %77)
  %79 = call i32 @ldns_pkt_set_timestamp(%struct.TYPE_59__* %76, i32 %78)
  %80 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %81 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %82 = call i32 @ldns_pkt_querytime(%struct.TYPE_59__* %81)
  %83 = call i32 @ldns_pkt_set_querytime(%struct.TYPE_59__* %80, i32 %82)
  %84 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %85 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %86 = call i32 @ldns_pkt_size(%struct.TYPE_59__* %85)
  %87 = call i32 @ldns_pkt_set_size(%struct.TYPE_59__* %84, i32 %86)
  %88 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %89 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %90 = call i32 @ldns_pkt_tsig(%struct.TYPE_59__* %89)
  %91 = call i32 @ldns_rr_clone(i32 %90)
  %92 = call i32 @ldns_pkt_set_tsig(%struct.TYPE_59__* %88, i32 %91)
  %93 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %94 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %95 = call i32 @ldns_pkt_edns_udp_size(%struct.TYPE_59__* %94)
  %96 = call i32 @ldns_pkt_set_edns_udp_size(%struct.TYPE_59__* %93, i32 %95)
  %97 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %98 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %99 = call i32 @ldns_pkt_edns_extended_rcode(%struct.TYPE_59__* %98)
  %100 = call i32 @ldns_pkt_set_edns_extended_rcode(%struct.TYPE_59__* %97, i32 %99)
  %101 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %102 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %103 = call i32 @ldns_pkt_edns_version(%struct.TYPE_59__* %102)
  %104 = call i32 @ldns_pkt_set_edns_version(%struct.TYPE_59__* %101, i32 %103)
  %105 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %111 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %112 = call i32 @ldns_pkt_edns_z(%struct.TYPE_59__* %111)
  %113 = call i32 @ldns_pkt_set_edns_z(%struct.TYPE_59__* %110, i32 %112)
  %114 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %115 = call i64 @ldns_pkt_edns_data(%struct.TYPE_59__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %75
  %118 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %119 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %120 = call i64 @ldns_pkt_edns_data(%struct.TYPE_59__* %119)
  %121 = call i32 @ldns_rdf_clone(i64 %120)
  %122 = call i32 @ldns_pkt_set_edns_data(%struct.TYPE_59__* %118, i32 %121)
  br label %123

123:                                              ; preds = %117, %75
  %124 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %125 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %126 = call i32 @ldns_pkt_edns_do(%struct.TYPE_59__* %125)
  %127 = call i32 @ldns_pkt_set_edns_do(%struct.TYPE_59__* %124, i32 %126)
  %128 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @ldns_rr_list_deep_free(i8* %130)
  %132 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @ldns_rr_list_deep_free(i8* %134)
  %136 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @ldns_rr_list_deep_free(i8* %138)
  %140 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @ldns_rr_list_deep_free(i8* %142)
  %144 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %145 = call i32 @ldns_pkt_question(%struct.TYPE_59__* %144)
  %146 = call i8* @ldns_rr_list_clone(i32 %145)
  %147 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %150 = call i32 @ldns_pkt_answer(%struct.TYPE_59__* %149)
  %151 = call i8* @ldns_rr_list_clone(i32 %150)
  %152 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %155 = call i32 @ldns_pkt_authority(%struct.TYPE_59__* %154)
  %156 = call i8* @ldns_rr_list_clone(i32 %155)
  %157 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %160 = call i32 @ldns_pkt_additional(%struct.TYPE_59__* %159)
  %161 = call i8* @ldns_rr_list_clone(i32 %160)
  %162 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_59__*, %struct.TYPE_59__** %4, align 8
  store %struct.TYPE_59__* %164, %struct.TYPE_59__** %2, align 8
  br label %165

165:                                              ; preds = %123, %7
  %166 = load %struct.TYPE_59__*, %struct.TYPE_59__** %2, align 8
  ret %struct.TYPE_59__* %166
}

declare dso_local %struct.TYPE_59__* @ldns_pkt_new(...) #1

declare dso_local i32 @ldns_pkt_set_id(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_id(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_qr(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_qr(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_aa(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_aa(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_tc(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_tc(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_rd(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_rd(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_cd(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_cd(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_ra(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_ra(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_ad(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_ad(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_opcode(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_get_opcode(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_rcode(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_get_rcode(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_qdcount(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_qdcount(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_ancount(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_ancount(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_nscount(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_nscount(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_arcount(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_arcount(%struct.TYPE_59__*) #1

declare dso_local i64 @ldns_pkt_answerfrom(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_answerfrom(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_rdf_clone(i64) #1

declare dso_local i32 @ldns_pkt_set_timestamp(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_timestamp(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_querytime(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_querytime(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_size(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_size(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_tsig(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32) #1

declare dso_local i32 @ldns_pkt_tsig(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_edns_udp_size(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_edns_udp_size(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_edns_extended_rcode(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_edns_extended_rcode(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_edns_version(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_edns_version(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_edns_z(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_edns_z(%struct.TYPE_59__*) #1

declare dso_local i64 @ldns_pkt_edns_data(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_set_edns_data(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_set_edns_do(%struct.TYPE_59__*, i32) #1

declare dso_local i32 @ldns_pkt_edns_do(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i8*) #1

declare dso_local i8* @ldns_rr_list_clone(i32) #1

declare dso_local i32 @ldns_pkt_question(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_answer(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_authority(%struct.TYPE_59__*) #1

declare dso_local i32 @ldns_pkt_additional(%struct.TYPE_59__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
