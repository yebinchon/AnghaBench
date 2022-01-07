; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_rrsets_add_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_rrsets_add_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }

@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dnssec_rrsets_add_rr(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %17, i32* %3, align 4
  br label %208

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @ldns_rr_get_type(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ldns_rr_rrsig_typecovered(i32* %25)
  %27 = call i64 @ldns_rdf2rr_type(i32 %26)
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %74, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %43
  %47 = call i8* (...) @ldns_dnssec_rrs_new()
  %48 = bitcast i8* %47 to %struct.TYPE_8__*
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32* %51, i32** %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %72

59:                                               ; preds = %43
  %60 = call i8* (...) @ldns_dnssec_rrs_new()
  %61 = bitcast i8* %60 to %struct.TYPE_8__*
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32* %64, i32** %68, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %59, %46
  %73 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %208

74:                                               ; preds = %38, %33, %28
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = call i64 @ldns_dnssec_rrsets_type(%struct.TYPE_7__* %76)
  %78 = icmp sgt i64 %75, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @ldns_dnssec_rrsets_add_rr(%struct.TYPE_7__* %87, i32* %88)
  store i32 %89, i32* %9, align 4
  br label %96

90:                                               ; preds = %79
  %91 = load i32*, i32** %5, align 8
  %92 = call %struct.TYPE_7__* @ldns_dnssec_rrsets_new_frm_rr(i32* %91)
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %6, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %95, align 8
  br label %96

96:                                               ; preds = %90, %84
  br label %206

97:                                               ; preds = %74
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = call i64 @ldns_dnssec_rrsets_type(%struct.TYPE_7__* %99)
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %102, label %157

102:                                              ; preds = %97
  %103 = call %struct.TYPE_7__* (...) @ldns_dnssec_rrsets_new()
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %6, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %123, align 8
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %102
  %127 = call i8* (...) @ldns_dnssec_rrs_new()
  %128 = bitcast i8* %127 to %struct.TYPE_8__*
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %130, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32* %131, i32** %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %137, align 8
  br label %150

138:                                              ; preds = %102
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %140, align 8
  %141 = call i8* (...) @ldns_dnssec_rrs_new()
  %142 = bitcast i8* %141 to %struct.TYPE_8__*
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %144, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32* %145, i32** %149, align 8
  br label %150

150:                                              ; preds = %138, %126
  %151 = load i64, i64* %7, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  store %struct.TYPE_7__* %154, %struct.TYPE_7__** %156, align 8
  br label %205

157:                                              ; preds = %97
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = icmp ne %struct.TYPE_8__* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @ldns_dnssec_rrs_add_rr(%struct.TYPE_8__* %168, i32* %169)
  store i32 %170, i32* %9, align 4
  br label %181

171:                                              ; preds = %160
  %172 = call i8* (...) @ldns_dnssec_rrs_new()
  %173 = bitcast i8* %172 to %struct.TYPE_8__*
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %175, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i32* %176, i32** %180, align 8
  br label %181

181:                                              ; preds = %171, %165
  br label %204

182:                                              ; preds = %157
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = icmp ne %struct.TYPE_8__* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 @ldns_dnssec_rrs_add_rr(%struct.TYPE_8__* %190, i32* %191)
  store i32 %192, i32* %9, align 4
  br label %203

193:                                              ; preds = %182
  %194 = call i8* (...) @ldns_dnssec_rrs_new()
  %195 = bitcast i8* %194 to %struct.TYPE_8__*
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  store %struct.TYPE_8__* %195, %struct.TYPE_8__** %197, align 8
  %198 = load i32*, i32** %5, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i32* %198, i32** %202, align 8
  br label %203

203:                                              ; preds = %193, %187
  br label %204

204:                                              ; preds = %203, %181
  br label %205

205:                                              ; preds = %204, %150
  br label %206

206:                                              ; preds = %205, %96
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %72, %16
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rdf2rr_type(i32) #1

declare dso_local i32 @ldns_rr_rrsig_typecovered(i32*) #1

declare dso_local i8* @ldns_dnssec_rrs_new(...) #1

declare dso_local i64 @ldns_dnssec_rrsets_type(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @ldns_dnssec_rrsets_new_frm_rr(i32*) #1

declare dso_local %struct.TYPE_7__* @ldns_dnssec_rrsets_new(...) #1

declare dso_local i32 @ldns_dnssec_rrs_add_rr(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
