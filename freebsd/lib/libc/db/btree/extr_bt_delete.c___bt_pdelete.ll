; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_pdelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_delete.c___bt_pdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i64*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i32 }

@RET_ERROR = common dso_local global i32 0, align 4
@P_BIGKEY = common dso_local global i32 0, align 4
@P_ROOT = common dso_local global i64 0, align 8
@BTDATAOFF = common dso_local global i32 0, align 4
@P_BLEAF = common dso_local global i32 0, align 4
@MPOOL_DIRTY = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*)* @__bt_pdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bt_pdelete(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  br label %15

15:                                               ; preds = %92, %2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = call %struct.TYPE_20__* @BT_POP(%struct.TYPE_21__* %16)
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %8, align 8
  %18 = icmp ne %struct.TYPE_20__* %17, null
  br i1 %18, label %19, label %203

19:                                               ; preds = %15
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_19__* @mpool_get(i32 %22, i32 %25, i32 0)
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %7, align 8
  %27 = icmp eq %struct.TYPE_19__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @RET_ERROR, align 4
  store i32 %29, i32* %3, align 4
  br label %230

30:                                               ; preds = %19
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call %struct.TYPE_22__* @GETBINTERNAL(%struct.TYPE_19__* %34, i64 %35)
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %6, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @P_BIGKEY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %30
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__ovfl_delete(%struct.TYPE_21__* %44, i32 %47)
  %49 = load i32, i32* @RET_ERROR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = call i32 @mpool_put(i32 %54, %struct.TYPE_19__* %55, i32 0)
  %57 = load i32, i32* @RET_ERROR, align 4
  store i32 %57, i32* %3, align 4
  br label %230

58:                                               ; preds = %43, %30
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = call i64 @NEXTINDEX(%struct.TYPE_19__* %59)
  %61 = icmp eq i64 %60, 1
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @P_ROOT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* @BTDATAOFF, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @P_BLEAF, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  br label %93

80:                                               ; preds = %62
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = call i64 @__bt_relink(%struct.TYPE_21__* %81, %struct.TYPE_19__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = call i64 @__bt_free(%struct.TYPE_21__* %86, %struct.TYPE_19__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85, %80
  %91 = load i32, i32* @RET_ERROR, align 4
  store i32 %91, i32* %3, align 4
  br label %230

92:                                               ; preds = %85
  br label %15

93:                                               ; preds = %68
  br label %196

94:                                               ; preds = %58
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @NBINTERNAL(i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = bitcast %struct.TYPE_19__* %99 to i8*
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  store i8* %105, i8** %14, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8*, i8** %14, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = bitcast %struct.TYPE_22__* %111 to i8*
  %113 = load i8*, i8** %14, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memmove(i8* %109, i8* %110, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %10, align 8
  store i64 %130, i64* %9, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  store i64* %134, i64** %11, align 8
  br label %135

135:                                              ; preds = %153, %94
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, -1
  store i64 %137, i64* %9, align 8
  %138 = icmp ne i64 %136, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i64*, i64** %11, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %11, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %147
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %145, %139
  br label %153

153:                                              ; preds = %152
  %154 = load i64*, i64** %11, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 1
  store i64* %155, i64** %11, align 8
  br label %135

156:                                              ; preds = %135
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %158 = call i64 @NEXTINDEX(%struct.TYPE_19__* %157)
  %159 = load i64, i64* %10, align 8
  %160 = sub i64 %158, %159
  store i64 %160, i64* %9, align 8
  br label %161

161:                                              ; preds = %186, %156
  %162 = load i64, i64* %9, align 8
  %163 = add i64 %162, -1
  store i64 %163, i64* %9, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %161
  %166 = load i64*, i64** %11, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %12, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load i64*, i64** %11, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %174, %176
  br label %182

178:                                              ; preds = %165
  %179 = load i64*, i64** %11, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = load i64, i64* %180, align 8
  br label %182

182:                                              ; preds = %178, %171
  %183 = phi i64 [ %177, %171 ], [ %181, %178 ]
  %184 = load i64*, i64** %11, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182
  %187 = load i64*, i64** %11, align 8
  %188 = getelementptr inbounds i64, i64* %187, i32 1
  store i64* %188, i64** %11, align 8
  br label %161

189:                                              ; preds = %161
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = sub i64 %193, 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %191, align 8
  br label %196

196:                                              ; preds = %189, %93
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %201 = load i32, i32* @MPOOL_DIRTY, align 4
  %202 = call i32 @mpool_put(i32 %199, %struct.TYPE_19__* %200, i32 %201)
  br label %203

203:                                              ; preds = %196, %15
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @P_ROOT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %203
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = load i32, i32* @MPOOL_DIRTY, align 4
  %215 = call i32 @mpool_put(i32 %212, %struct.TYPE_19__* %213, i32 %214)
  %216 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %216, i32* %3, align 4
  br label %230

217:                                              ; preds = %203
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = call i64 @__bt_relink(%struct.TYPE_21__* %218, %struct.TYPE_19__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %225 = call i64 @__bt_free(%struct.TYPE_21__* %223, %struct.TYPE_19__* %224)
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %222, %217
  %228 = phi i1 [ true, %217 ], [ %226, %222 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %227, %209, %90, %51, %28
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_20__* @BT_POP(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @mpool_get(i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @GETBINTERNAL(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @__ovfl_delete(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @NEXTINDEX(%struct.TYPE_19__*) #1

declare dso_local i64 @__bt_relink(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i64 @__bt_free(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @NBINTERNAL(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
