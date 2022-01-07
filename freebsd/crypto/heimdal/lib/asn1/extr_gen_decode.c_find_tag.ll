; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_decode.c_find_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_decode.c_find_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ASN1_C_UNIV = common dso_local global i32 0, align 4
@PRIM = common dso_local global i32 0, align 4
@UT_BitString = common dso_local global i32 0, align 4
@UT_Boolean = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot have recursive CHOICE\00", align 1
@UT_Enumerated = common dso_local global i32 0, align 4
@UT_GeneralString = common dso_local global i32 0, align 4
@UT_TeletexString = common dso_local global i32 0, align 4
@UT_GeneralizedTime = common dso_local global i32 0, align 4
@UT_IA5String = common dso_local global i32 0, align 4
@UT_Integer = common dso_local global i32 0, align 4
@UT_Null = common dso_local global i32 0, align 4
@UT_OID = common dso_local global i32 0, align 4
@UT_OctetString = common dso_local global i32 0, align 4
@UT_PrintableString = common dso_local global i32 0, align 4
@CONS = common dso_local global i32 0, align 4
@UT_Sequence = common dso_local global i32 0, align 4
@UT_Set = common dso_local global i32 0, align 4
@Stype = common dso_local global i32 0, align 4
@SUndefined = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"%s is imported or still undefined,  can't generate tag checking data in CHOICE without this information\00", align 1
@UT_UTCTime = common dso_local global i32 0, align 4
@UT_UTF8String = common dso_local global i32 0, align 4
@UT_BMPString = common dso_local global i32 0, align 4
@UT_UniversalString = common dso_local global i32 0, align 4
@UT_VisibleString = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, i32*)* @find_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_tag(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %212 [
    i32 150, label %12
    i32 149, label %19
    i32 148, label %26
    i32 147, label %28
    i32 146, label %35
    i32 133, label %42
    i32 145, label %49
    i32 144, label %56
    i32 143, label %63
    i32 142, label %70
    i32 141, label %77
    i32 140, label %84
    i32 139, label %91
    i32 138, label %98
    i32 137, label %98
    i32 136, label %105
    i32 135, label %105
    i32 134, label %112
    i32 132, label %137
    i32 131, label %177
    i32 130, label %184
    i32 151, label %191
    i32 129, label %198
    i32 128, label %205
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @ASN1_C_UNIV, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @PRIM, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @UT_BitString, align 4
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  br label %214

19:                                               ; preds = %4
  %20 = load i32, i32* @ASN1_C_UNIV, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @PRIM, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @UT_Boolean, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %214

26:                                               ; preds = %4
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %4, %26
  %29 = load i32, i32* @ASN1_C_UNIV, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @PRIM, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @UT_Enumerated, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %214

35:                                               ; preds = %4
  %36 = load i32, i32* @ASN1_C_UNIV, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @PRIM, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @UT_GeneralString, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %214

42:                                               ; preds = %4
  %43 = load i32, i32* @ASN1_C_UNIV, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @PRIM, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @UT_TeletexString, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  br label %214

49:                                               ; preds = %4
  %50 = load i32, i32* @ASN1_C_UNIV, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @PRIM, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @UT_GeneralizedTime, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %214

56:                                               ; preds = %4
  %57 = load i32, i32* @ASN1_C_UNIV, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @PRIM, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @UT_IA5String, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %214

63:                                               ; preds = %4
  %64 = load i32, i32* @ASN1_C_UNIV, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @PRIM, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @UT_Integer, align 4
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  br label %214

70:                                               ; preds = %4
  %71 = load i32, i32* @ASN1_C_UNIV, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @PRIM, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @UT_Null, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  br label %214

77:                                               ; preds = %4
  %78 = load i32, i32* @ASN1_C_UNIV, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @PRIM, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @UT_OID, align 4
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  br label %214

84:                                               ; preds = %4
  %85 = load i32, i32* @ASN1_C_UNIV, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @PRIM, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @UT_OctetString, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  br label %214

91:                                               ; preds = %4
  %92 = load i32, i32* @ASN1_C_UNIV, align 4
  %93 = load i32*, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @PRIM, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @UT_PrintableString, align 4
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %214

98:                                               ; preds = %4, %4
  %99 = load i32, i32* @ASN1_C_UNIV, align 4
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @CONS, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @UT_Sequence, align 4
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  br label %214

105:                                              ; preds = %4, %4
  %106 = load i32, i32* @ASN1_C_UNIV, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @CONS, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @UT_Set, align 4
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  br label %214

112:                                              ; preds = %4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @is_primitive_type(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* @PRIM, align 4
  br label %129

127:                                              ; preds = %112
  %128 = load i32, i32* @CONS, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = load i32*, i32** %7, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  br label %214

137:                                              ; preds = %4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @Stype, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %137
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = icmp eq %struct.TYPE_9__* %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %145, %137
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SUndefined, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %152, %145
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @lex_error_message(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  %167 = call i32 @exit(i32 1) #3
  unreachable

168:                                              ; preds = %152
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = load i32*, i32** %8, align 8
  call void @find_tag(%struct.TYPE_9__* %173, i32* %174, i32* %175, i32* %176)
  br label %214

177:                                              ; preds = %4
  %178 = load i32, i32* @ASN1_C_UNIV, align 4
  %179 = load i32*, i32** %6, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @PRIM, align 4
  %181 = load i32*, i32** %7, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i32, i32* @UT_UTCTime, align 4
  %183 = load i32*, i32** %8, align 8
  store i32 %182, i32* %183, align 4
  br label %214

184:                                              ; preds = %4
  %185 = load i32, i32* @ASN1_C_UNIV, align 4
  %186 = load i32*, i32** %6, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* @PRIM, align 4
  %188 = load i32*, i32** %7, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* @UT_UTF8String, align 4
  %190 = load i32*, i32** %8, align 8
  store i32 %189, i32* %190, align 4
  br label %214

191:                                              ; preds = %4
  %192 = load i32, i32* @ASN1_C_UNIV, align 4
  %193 = load i32*, i32** %6, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* @PRIM, align 4
  %195 = load i32*, i32** %7, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i32, i32* @UT_BMPString, align 4
  %197 = load i32*, i32** %8, align 8
  store i32 %196, i32* %197, align 4
  br label %214

198:                                              ; preds = %4
  %199 = load i32, i32* @ASN1_C_UNIV, align 4
  %200 = load i32*, i32** %6, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32, i32* @PRIM, align 4
  %202 = load i32*, i32** %7, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i32, i32* @UT_UniversalString, align 4
  %204 = load i32*, i32** %8, align 8
  store i32 %203, i32* %204, align 4
  br label %214

205:                                              ; preds = %4
  %206 = load i32, i32* @ASN1_C_UNIV, align 4
  %207 = load i32*, i32** %6, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32, i32* @PRIM, align 4
  %209 = load i32*, i32** %7, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* @UT_VisibleString, align 4
  %211 = load i32*, i32** %8, align 8
  store i32 %210, i32* %211, align 4
  br label %214

212:                                              ; preds = %4
  %213 = call i32 (...) @abort() #3
  unreachable

214:                                              ; preds = %168, %205, %198, %191, %184, %177, %129, %105, %98, %91, %84, %77, %70, %63, %56, %49, %42, %35, %28, %19, %12
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @is_primitive_type(i32) #1

declare dso_local i32 @lex_error_message(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
