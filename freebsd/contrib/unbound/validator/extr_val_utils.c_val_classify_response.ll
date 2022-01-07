; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_classify_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_classify_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i32 }
%struct.reply_info = type { i32, i64, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LDNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4
@VAL_CLASS_NAMEERROR = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@VAL_CLASS_NODATA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@VAL_CLASS_REFERRAL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@VAL_CLASS_UNKNOWN = common dso_local global i32 0, align 4
@VAL_CLASS_CNAMENOANSWER = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@VAL_CLASS_ANY = common dso_local global i32 0, align 4
@VAL_CLASS_POSITIVE = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@VAL_CLASS_CNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"validator: error. failed to classify response message: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_classify_response(i32 %0, %struct.query_info* %1, %struct.query_info* %2, %struct.reply_info* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.reply_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.query_info* %1, %struct.query_info** %8, align 8
  store %struct.query_info* %2, %struct.query_info** %9, align 8
  store %struct.reply_info* %3, %struct.reply_info** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %16 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @FLAGS_GET_RCODE(i32 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %25 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @VAL_CLASS_NAMEERROR, align 4
  store i32 %29, i32* %6, align 4
  br label %254

30:                                               ; preds = %23, %5
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BIT_RD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %108, label %35

35:                                               ; preds = %30
  %36 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %37 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %108

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %108

44:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  store i64 0, i64* %13, align 8
  br label %45

45:                                               ; preds = %96, %44
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %48 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %45
  %52 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %53 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ntohs(i32 %60)
  %62 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @VAL_CLASS_NODATA, align 4
  store i32 %65, i32* %6, align 4
  br label %254

66:                                               ; preds = %51
  %67 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %68 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ntohs(i32 %75)
  %77 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  store i32 %80, i32* %6, align 4
  br label %254

81:                                               ; preds = %66
  %82 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %83 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ntohs(i32 %90)
  %92 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %45

99:                                               ; preds = %45
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  br label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @VAL_CLASS_NODATA, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %6, align 4
  br label %254

108:                                              ; preds = %40, %35, %30
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @BIT_RD, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %155, label %113

113:                                              ; preds = %108
  %114 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %115 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %113
  %119 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %120 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %155

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %123
  %128 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %129 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @ntohs(i32 %135)
  %137 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %127
  %140 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %141 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %140, i32 0, i32 2
  %142 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %142, i64 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.query_info*, %struct.query_info** %8, align 8
  %149 = getelementptr inbounds %struct.query_info, %struct.query_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @query_dname_compare(i32 %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %139
  %154 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  store i32 %154, i32* %6, align 4
  br label %254

155:                                              ; preds = %139, %127, %123, %118, %113, %108
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @VAL_CLASS_UNKNOWN, align 4
  store i32 %164, i32* %6, align 4
  br label %254

165:                                              ; preds = %159, %155
  %166 = load i64, i64* %11, align 8
  %167 = icmp ugt i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %170 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %11, align 8
  %174 = icmp ule i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* @VAL_CLASS_CNAMENOANSWER, align 4
  store i32 %176, i32* %6, align 4
  br label %254

177:                                              ; preds = %168, %165
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %183 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* @VAL_CLASS_NODATA, align 4
  store i32 %187, i32* %6, align 4
  br label %254

188:                                              ; preds = %181, %177
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load %struct.query_info*, %struct.query_info** %9, align 8
  %194 = getelementptr inbounds %struct.query_info, %struct.query_info* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @VAL_CLASS_ANY, align 4
  store i32 %199, i32* %6, align 4
  br label %254

200:                                              ; preds = %192, %188
  %201 = load i64, i64* %11, align 8
  store i64 %201, i64* %13, align 8
  br label %202

202:                                              ; preds = %246, %200
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %205 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = icmp ult i64 %203, %207
  br i1 %208, label %209, label %249

209:                                              ; preds = %202
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %230

213:                                              ; preds = %209
  %214 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %215 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %214, i32 0, i32 2
  %216 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %215, align 8
  %217 = load i64, i64* %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %216, i64 %217
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @ntohs(i32 %222)
  %224 = load %struct.query_info*, %struct.query_info** %9, align 8
  %225 = getelementptr inbounds %struct.query_info, %struct.query_info* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %223, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %213
  %229 = load i32, i32* @VAL_CLASS_POSITIVE, align 4
  store i32 %229, i32* %6, align 4
  br label %254

230:                                              ; preds = %213, %209
  %231 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %232 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %231, i32 0, i32 2
  %233 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %232, align 8
  %234 = load i64, i64* %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %233, i64 %234
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @ntohs(i32 %239)
  %241 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %230
  %244 = load i32, i32* @VAL_CLASS_CNAME, align 4
  store i32 %244, i32* %6, align 4
  br label %254

245:                                              ; preds = %230
  br label %246

246:                                              ; preds = %245
  %247 = load i64, i64* %13, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %13, align 8
  br label %202

249:                                              ; preds = %202
  %250 = load %struct.query_info*, %struct.query_info** %9, align 8
  %251 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %252 = call i32 @log_dns_msg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.query_info* %250, %struct.reply_info* %251)
  %253 = load i32, i32* @VAL_CLASS_UNKNOWN, align 4
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %249, %243, %228, %198, %186, %175, %163, %153, %106, %79, %64, %28
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @log_dns_msg(i8*, %struct.query_info*, %struct.reply_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
