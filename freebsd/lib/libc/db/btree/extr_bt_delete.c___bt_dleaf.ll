; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_dleaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_dleaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i32, i64*, i32 }
%struct.TYPE_19__ = type { i32, i64, i64 }

@CURS_INIT = common dso_local global i32 0, align 4
@CURS_ACQUIRE = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@P_BIGKEY = common dso_local global i32 0, align 4
@P_BIGDATA = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bt_dleaf(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_17__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* @CURS_INIT, align 4
  %20 = call i64 @F_ISSET(%struct.TYPE_15__* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* @CURS_ACQUIRE, align 4
  %26 = call i64 @F_ISSET(%struct.TYPE_15__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %28
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @__bt_curdel(%struct.TYPE_18__* %47, i32* %48, %struct.TYPE_17__* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @RET_ERROR, align 4
  store i32 %54, i32* %5, align 4
  br label %234

55:                                               ; preds = %46, %38, %28, %22, %4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call %struct.TYPE_19__* @GETBLEAF(%struct.TYPE_17__* %56, i64 %57)
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %10, align 8
  %59 = bitcast %struct.TYPE_19__* %58 to i8*
  store i8* %59, i8** %15, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @P_BIGKEY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %55
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @__ovfl_delete(%struct.TYPE_18__* %67, i64 %70)
  %72 = load i32, i32* @RET_ERROR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @RET_ERROR, align 4
  store i32 %75, i32* %5, align 4
  br label %234

76:                                               ; preds = %66, %55
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @P_BIGDATA, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = call i32 @__ovfl_delete(%struct.TYPE_18__* %84, i64 %91)
  %93 = load i32, i32* @RET_ERROR, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* @RET_ERROR, align 4
  store i32 %96, i32* %5, align 4
  br label %234

97:                                               ; preds = %83, %76
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %99 = call i32 @NBLEAF(%struct.TYPE_19__* %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = bitcast %struct.TYPE_17__* %100 to i8*
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8* %106, i8** %16, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8*, i8** %16, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memmove(i8* %110, i8* %111, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %13, align 8
  %130 = load i64, i64* %9, align 8
  store i64 %130, i64* %11, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  store i64* %134, i64** %12, align 8
  br label %135

135:                                              ; preds = %153, %97
  %136 = load i64, i64* %11, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %11, align 8
  %138 = icmp ne i64 %136, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i64*, i64** %12, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %12, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %145, %139
  br label %153

153:                                              ; preds = %152
  %154 = load i64*, i64** %12, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 1
  store i64* %155, i64** %12, align 8
  br label %135

156:                                              ; preds = %135
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %158 = call i64 @NEXTINDEX(%struct.TYPE_17__* %157)
  %159 = load i64, i64* %9, align 8
  %160 = sub i64 %158, %159
  store i64 %160, i64* %11, align 8
  br label %161

161:                                              ; preds = %186, %156
  %162 = load i64, i64* %11, align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %161
  %166 = load i64*, i64** %12, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %13, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load i64*, i64** %12, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  br label %182

178:                                              ; preds = %165
  %179 = load i64*, i64** %12, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = load i64, i64* %180, align 8
  br label %182

182:                                              ; preds = %178, %171
  %183 = phi i64 [ %177, %171 ], [ %181, %178 ]
  %184 = load i64*, i64** %12, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182
  %187 = load i64*, i64** %12, align 8
  %188 = getelementptr inbounds i64, i64* %187, i32 1
  store i64* %188, i64** %12, align 8
  br label %161

189:                                              ; preds = %161
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = sub i64 %193, 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %191, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* @CURS_INIT, align 4
  %199 = call i64 @F_ISSET(%struct.TYPE_15__* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %232

201:                                              ; preds = %189
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32, i32* @CURS_ACQUIRE, align 4
  %205 = call i64 @F_ISSET(%struct.TYPE_15__* %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %232, label %207

207:                                              ; preds = %201
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %207
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %9, align 8
  %224 = icmp ugt i64 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %217
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, -1
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %225, %217, %207, %201, %189
  %233 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %232, %95, %74, %53
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i64 @F_ISSET(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @__bt_curdel(%struct.TYPE_18__*, i32*, %struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_19__* @GETBLEAF(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @__ovfl_delete(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @NBLEAF(%struct.TYPE_19__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
