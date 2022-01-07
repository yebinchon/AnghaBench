; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_print_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_print_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__**, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@PRINT_SWITCH = common dso_local global i32 0, align 4
@PRINT_CA = common dso_local global i32 0, align 4
@PRINT_ROUTER = common dso_local global i32 0, align 4
@node_type_to_print = common dso_local global i32 0, align 4
@node_name_map = common dso_local global i32 0, align 4
@IB_PM_ALL_PORT_SELECT = common dso_local global i32 0, align 4
@data_counters_only = common dso_local global i64 0, align 8
@summary = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_node(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %23 [
    i32 128, label %17
    i32 130, label %19
    i32 129, label %21
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @PRINT_SWITCH, align 4
  store i32 %18, i32* %8, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @PRINT_CA, align 4
  store i32 %20, i32* %8, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @PRINT_ROUTER, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %2, %21, %19, %17
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @node_type_to_print, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %252

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %34, %29
  %41 = load i32, i32* @node_name_map, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @remap_node_name(i32 %41, i32 %44, i32 %47)
  store i8* %48, i8** %12, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ib_portid_set(%struct.TYPE_15__* %10, i32 %56, i32 0, i32 0)
  store i32 0, i32* %6, align 4
  br label %90

58:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %68, i64 %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %77, i64 %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ib_portid_set(%struct.TYPE_15__* %10, i32 %83, i32 0, i32 0)
  br label %89

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %59

89:                                               ; preds = %74, %59
  br label %90

90:                                               ; preds = %89, %53
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @query_cap_mask(%struct.TYPE_15__* %10, i8* %91, i32 %92, i32* %11)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @IB_PM_ALL_PORT_SELECT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %9, align 4
  br label %101

101:                                              ; preds = %100, %95, %90
  %102 = load i64, i64* @data_counters_only, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %163

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %159, %104
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sle i32 %107, %110
  br i1 %111, label %112, label %162

112:                                              ; preds = %106
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %115, i64 %117
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = icmp ne %struct.TYPE_13__* %119, null
  br i1 %120, label %121, label %158

121:                                              ; preds = %112
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ib_portid_set(%struct.TYPE_15__* %10, i32 %129, i32 0, i32 0)
  br label %142

131:                                              ; preds = %121
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %134, i64 %136
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ib_portid_set(%struct.TYPE_15__* %10, i32 %140, i32 0, i32 0)
  br label %142

142:                                              ; preds = %131, %126
  %143 = load i32, i32* %11, align 4
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @print_data_cnts(%struct.TYPE_15__* %10, i32 %143, i8* %144, %struct.TYPE_14__* %145, i32 %146, i32* %5)
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 1), align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 1), align 8
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %142
  %153 = load i32, i32* %11, align 4
  %154 = load i8*, i8** %12, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @clear_port(%struct.TYPE_15__* %10, i32 %153, i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %142
  br label %158

158:                                              ; preds = %157, %112
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %106

162:                                              ; preds = %106
  br label %239

163:                                              ; preds = %101
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = load i8*, i8** %12, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = call i32 @print_errors(%struct.TYPE_15__* %10, i32 %167, i8* %168, %struct.TYPE_14__* %169, i32 255, i32* %5)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 1), align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 1), align 8
  br label %240

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %163
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %235, %180
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp sle i32 %183, %186
  br i1 %187, label %188, label %238

188:                                              ; preds = %182
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %191, i64 %193
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = icmp ne %struct.TYPE_13__* %195, null
  br i1 %196, label %197, label %234

197:                                              ; preds = %188
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 128
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @ib_portid_set(%struct.TYPE_15__* %10, i32 %205, i32 0, i32 0)
  br label %218

207:                                              ; preds = %197
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %210, i64 %212
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ib_portid_set(%struct.TYPE_15__* %10, i32 %216, i32 0, i32 0)
  br label %218

218:                                              ; preds = %207, %202
  %219 = load i32, i32* %11, align 4
  %220 = load i8*, i8** %12, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @print_errors(%struct.TYPE_15__* %10, i32 %219, i8* %220, %struct.TYPE_14__* %221, i32 %222, i32* %5)
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 1), align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 1), align 8
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %218
  %229 = load i32, i32* %11, align 4
  %230 = load i8*, i8** %12, align 8
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @clear_port(%struct.TYPE_15__* %10, i32 %229, i8* %230, i32 %231)
  br label %233

233:                                              ; preds = %228, %218
  br label %234

234:                                              ; preds = %233, %188
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %182

238:                                              ; preds = %182
  br label %239

239:                                              ; preds = %238, %162
  br label %240

240:                                              ; preds = %239, %172
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 0), align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @summary, i32 0, i32 0), align 8
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = load i32, i32* %11, align 4
  %247 = load i8*, i8** %12, align 8
  %248 = call i32 @clear_port(%struct.TYPE_15__* %10, i32 %246, i8* %247, i32 255)
  br label %249

249:                                              ; preds = %245, %240
  %250 = load i8*, i8** %12, align 8
  %251 = call i32 @free(i8* %250)
  br label %252

252:                                              ; preds = %249, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @remap_node_name(i32, i32, i32) #2

declare dso_local i32 @ib_portid_set(%struct.TYPE_15__*, i32, i32, i32) #2

declare dso_local i64 @query_cap_mask(%struct.TYPE_15__*, i8*, i32, i32*) #2

declare dso_local i32 @print_data_cnts(%struct.TYPE_15__*, i32, i8*, %struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32 @clear_port(%struct.TYPE_15__*, i32, i8*, i32) #2

declare dso_local i32 @print_errors(%struct.TYPE_15__*, i32, i8*, %struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
