; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_convert_ecdsa_rrsig_rdf2asn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_convert_ecdsa_rrsig_rdf2asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ldns_convert_ecdsa_rrsig_rdf2asn1.pre = private unnamed_addr constant [4 x i32] [i32 48, i32 68, i32 2, i32 32], align 16
@__const.ldns_convert_ecdsa_rrsig_rdf2asn1.mid = private unnamed_addr constant [2 x i32] [i32 2, i32 32], align 4
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_convert_ecdsa_rrsig_rdf2asn1(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.ldns_convert_ecdsa_rrsig_rdf2asn1.pre to i8*), i64 16, i1 false)
  store i32 4, i32* %7, align 4
  %18 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([2 x i32]* @__const.ldns_convert_ecdsa_rrsig_rdf2asn1.mid to i8*), i64 8, i1 false)
  store i32 2, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @ldns_rdf_size(i32* %19)
  %21 = sdiv i64 %20, 2
  store i64 %21, i64* %15, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @ldns_rdf_data(i32* %22)
  store i32* %23, i32** %16, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp slt i64 %24, 16
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* %15, align 8
  %28 = mul i64 %27, 2
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @ldns_rdf_size(i32* %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %2
  %33 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %33, i32* %3, align 4
  br label %199

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %15, align 8
  %39 = sub nsw i64 %38, 1
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %41, %35
  %49 = phi i1 [ false, %35 ], [ %47, %41 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %35

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %15, align 8
  %58 = sub nsw i64 %57, 1
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32*, i32** %16, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %60, %54
  %70 = phi i1 [ false, %54 ], [ %68, %60 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %54

74:                                               ; preds = %69
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 0, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  store i32 %84, i32* %11, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %15, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %101, %103
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i64, i64* %15, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %10, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = call i64 @ldns_buffer_reserve(i32* %117, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %196

122:                                              ; preds = %74
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = sext i32 %125 to i64
  %127 = call i32 @ldns_buffer_write_u8(i32* %123, i64 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = call i32 @ldns_buffer_write_u8(i32* %128, i64 %131)
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = call i32 @ldns_buffer_write_u8(i32* %133, i64 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %142, %144
  %146 = call i32 @ldns_buffer_write_u8(i32* %138, i64 %145)
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %122
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @ldns_buffer_write_u8(i32* %150, i64 0)
  br label %152

152:                                              ; preds = %149, %122
  %153 = load i32*, i32** %4, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i64, i64* %15, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %158, %160
  %162 = call i32 @ldns_buffer_write(i32* %153, i32* %157, i64 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = call i32 @ldns_buffer_write(i32* %163, i32* %164, i64 %167)
  %169 = load i32*, i32** %4, align 8
  %170 = load i64, i64* %15, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = sub nsw i64 %173, %175
  %177 = call i32 @ldns_buffer_write_u8(i32* %169, i64 %176)
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %152
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @ldns_buffer_write_u8(i32* %181, i64 0)
  br label %183

183:                                              ; preds = %180, %152
  %184 = load i32*, i32** %4, align 8
  %185 = load i32*, i32** %16, align 8
  %186 = load i64, i64* %15, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i64, i64* %15, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = sub nsw i64 %191, %193
  %195 = call i32 @ldns_buffer_write(i32* %184, i32* %190, i64 %194)
  br label %196

196:                                              ; preds = %183, %74
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @ldns_buffer_status(i32* %197)
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %196, %32
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ldns_rdf_size(i32*) #2

declare dso_local i32* @ldns_rdf_data(i32*) #2

declare dso_local i64 @ldns_buffer_reserve(i32*, i64) #2

declare dso_local i32 @ldns_buffer_write_u8(i32*, i64) #2

declare dso_local i32 @ldns_buffer_write(i32*, i32*, i64) #2

declare dso_local i32 @ldns_buffer_status(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
