; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_prn.c_asn1_primitive_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_prn.c_asn1_primitive_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }

@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8
@V_ASN1_NEG = common dso_local global i64 0, align 8
@V_ASN1_ANY = common dso_local global i64 0, align 8
@ASN1_PCTX_FLAGS_NO_ANY_TYPE = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_SHOW_TYPE = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, %struct.TYPE_22__*, i32, i8*, i8*, %struct.TYPE_21__*)* @asn1_primitive_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_primitive_print(i32* %0, i32** %1, %struct.TYPE_22__* %2, i32 %3, i8* %4, i8* %5, %struct.TYPE_21__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %15, align 8
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %21, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %32 = call i32 @asn1_print_fsname(i32* %27, i32 %28, i8* %29, i8* %30, %struct.TYPE_21__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %222

35:                                               ; preds = %7
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)*, i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)** %40, align 8
  %42 = icmp ne i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)*, i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)** %45, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32**, i32*** %10, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %52 = call i32 %46(i32* %47, i32** %48, %struct.TYPE_22__* %49, i32 %50, %struct.TYPE_21__* %51)
  store i32 %52, i32* %8, align 4
  br label %222

53:                                               ; preds = %38, %35
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32**, i32*** %10, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %17, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V_ASN1_NEG, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  store i64 %68, i64* %16, align 8
  br label %81

69:                                               ; preds = %53
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp eq i64 %73, 137
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %17, align 8
  br label %80

76:                                               ; preds = %69
  %77 = load i32**, i32*** %10, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %17, align 8
  br label %80

80:                                               ; preds = %76, %75
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @V_ASN1_ANY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = load i32**, i32*** %10, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %22, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %16, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i32** %94, i32*** %10, align 8
  %95 = load i32**, i32*** %10, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = bitcast i32* %96 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %97, %struct.TYPE_19__** %17, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ASN1_PCTX_FLAGS_NO_ANY_TYPE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %85
  store i8* null, i8** %20, align 8
  br label %108

105:                                              ; preds = %85
  %106 = load i64, i64* %16, align 8
  %107 = call i8* @ASN1_tag2str(i64 %106)
  store i8* %107, i8** %20, align 8
  br label %108

108:                                              ; preds = %105, %104
  br label %121

109:                                              ; preds = %81
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ASN1_PCTX_FLAGS_SHOW_TYPE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i64, i64* %16, align 8
  %118 = call i8* @ASN1_tag2str(i64 %117)
  store i8* %118, i8** %20, align 8
  br label %120

119:                                              ; preds = %109
  store i8* null, i8** %20, align 8
  br label %120

120:                                              ; preds = %119, %116
  br label %121

121:                                              ; preds = %120, %108
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* @V_ASN1_NULL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32*, i32** %9, align 8
  %127 = call i64 @BIO_puts(i32* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %128 = icmp sle i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %222

130:                                              ; preds = %125
  store i32 1, i32* %8, align 4
  br label %222

131:                                              ; preds = %121
  %132 = load i8*, i8** %20, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32*, i32** %9, align 8
  %136 = load i8*, i8** %20, align 8
  %137 = call i64 @BIO_puts(i32* %135, i8* %136)
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %222

140:                                              ; preds = %134
  %141 = load i32*, i32** %9, align 8
  %142 = call i64 @BIO_puts(i32* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %143 = icmp sle i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  br label %222

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %131
  %147 = load i64, i64* %16, align 8
  switch i64 %147, label %202 [
    i64 137, label %148
    i64 134, label %162
    i64 136, label %162
    i64 128, label %166
    i64 135, label %170
    i64 133, label %174
    i64 132, label %179
    i64 138, label %179
    i64 130, label %184
    i64 129, label %184
    i64 131, label %184
  ]

148:                                              ; preds = %146
  %149 = load i32**, i32*** %10, align 8
  %150 = bitcast i32** %149 to i32*
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %23, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %23, align 4
  br label %158

158:                                              ; preds = %154, %148
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %23, align 4
  %161 = call i32 @asn1_print_boolean(i32* %159, i32 %160)
  store i32 %161, i32* %18, align 4
  br label %209

162:                                              ; preds = %146, %146
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %165 = call i32 @asn1_print_integer(i32* %163, %struct.TYPE_19__* %164)
  store i32 %165, i32* %18, align 4
  br label %209

166:                                              ; preds = %146
  %167 = load i32*, i32** %9, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %169 = call i32 @ASN1_UTCTIME_print(i32* %167, %struct.TYPE_19__* %168)
  store i32 %169, i32* %18, align 4
  br label %209

170:                                              ; preds = %146
  %171 = load i32*, i32** %9, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %173 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %171, %struct.TYPE_19__* %172)
  store i32 %173, i32* %18, align 4
  br label %209

174:                                              ; preds = %146
  %175 = load i32*, i32** %9, align 8
  %176 = load i32**, i32*** %10, align 8
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @asn1_print_oid(i32* %175, i32* %177)
  store i32 %178, i32* %18, align 4
  br label %209

179:                                              ; preds = %146, %146
  %180 = load i32*, i32** %9, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @asn1_print_obstring(i32* %180, %struct.TYPE_19__* %181, i32 %182)
  store i32 %183, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %209

184:                                              ; preds = %146, %146, %146
  %185 = load i32*, i32** %9, align 8
  %186 = call i64 @BIO_puts(i32* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %187 = icmp sle i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 0, i32* %8, align 4
  br label %222

189:                                              ; preds = %184
  %190 = load i32*, i32** %9, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @ASN1_parse_dump(i32* %190, i32 %193, i32 %196, i32 %197, i32 0)
  %199 = icmp sle i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  store i32 0, i32* %18, align 4
  br label %201

201:                                              ; preds = %200, %189
  store i32 0, i32* %19, align 4
  br label %209

202:                                              ; preds = %146
  %203 = load i32*, i32** %9, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ASN1_STRING_print_ex(i32* %203, %struct.TYPE_19__* %204, i32 %207)
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %202, %201, %179, %174, %170, %166, %162, %158
  %210 = load i32, i32* %18, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  store i32 0, i32* %8, align 4
  br label %222

213:                                              ; preds = %209
  %214 = load i32, i32* %19, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load i32*, i32** %9, align 8
  %218 = call i64 @BIO_puts(i32* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %219 = icmp sle i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i32 0, i32* %8, align 4
  br label %222

221:                                              ; preds = %216, %213
  store i32 1, i32* %8, align 4
  br label %222

222:                                              ; preds = %221, %220, %212, %188, %144, %139, %130, %129, %43, %34
  %223 = load i32, i32* %8, align 4
  ret i32 %223
}

declare dso_local i32 @asn1_print_fsname(i32*, i32, i8*, i8*, %struct.TYPE_21__*) #1

declare dso_local i8* @ASN1_tag2str(i64) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @asn1_print_boolean(i32*, i32) #1

declare dso_local i32 @asn1_print_integer(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ASN1_UTCTIME_print(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_print(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @asn1_print_oid(i32*, i32*) #1

declare dso_local i32 @asn1_print_obstring(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ASN1_parse_dump(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ASN1_STRING_print_ex(i32*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
