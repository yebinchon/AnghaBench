; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_qos_build_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos.c_qos_build_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qos_config = type { i64, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__*, i8* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i64, i64, i8*, i8*, i8* }

@OSM_DEFAULT_QOS_MAX_VLS = common dso_local global i64 0, align 8
@OSM_DEFAULT_QOS_HIGH_LIMIT = common dso_local global i64 0, align 8
@OSM_DEFAULT_QOS_VLARB_HIGH = common dso_local global i8* null, align 8
@IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK = common dso_local global i32 0, align 4
@OSM_DEFAULT_QOS_VLARB_LOW = common dso_local global i8* null, align 8
@OSM_DEFAULT_QOS_SL2VL = common dso_local global i8* null, align 8
@IB_MAX_NUM_VLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qos_config*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @qos_build_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qos_build_config(%struct.qos_config* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.qos_config*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.qos_config* %0, %struct.qos_config** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %9 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %10 = call i32 @memset(%struct.qos_config* %9, i32 0, i32 40)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %20 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %31 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %36

32:                                               ; preds = %21
  %33 = load i64, i64* @OSM_DEFAULT_QOS_MAX_VLS, align 8
  %34 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %35 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %48 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  br label %67

49:                                               ; preds = %37
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %60 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %66

61:                                               ; preds = %49
  %62 = load i64, i64* @OSM_DEFAULT_QOS_HIGH_LIMIT, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %65 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %8, align 8
  br label %88

76:                                               ; preds = %67
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %8, align 8
  br label %87

85:                                               ; preds = %76
  %86 = load i8*, i8** @OSM_DEFAULT_QOS_VLARB_HIGH, align 8
  store i8* %86, i8** %8, align 8
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87, %72
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %115, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %92 = mul nsw i32 2, %91
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %97 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %101 = sdiv i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %108 = srem i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = call i32 @parse_vlarb_entry(i8* %95, i32* %110)
  %112 = load i8*, i8** %8, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %94
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %89

118:                                              ; preds = %89
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %8, align 8
  br label %139

127:                                              ; preds = %118
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %8, align 8
  br label %138

136:                                              ; preds = %127
  %137 = load i8*, i8** @OSM_DEFAULT_QOS_VLARB_LOW, align 8
  store i8* %137, i8** %8, align 8
  br label %138

138:                                              ; preds = %136, %132
  br label %139

139:                                              ; preds = %138, %123
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %166, %139
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %143 = mul nsw i32 2, %142
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %140
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %148 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %152 = sdiv i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @IB_NUM_VL_ARB_ELEMENTS_IN_BLOCK, align 4
  %159 = srem i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = call i32 @parse_vlarb_entry(i8* %146, i32* %161)
  %163 = load i8*, i8** %8, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %8, align 8
  br label %166

166:                                              ; preds = %145
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %140

169:                                              ; preds = %140
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  br label %182

178:                                              ; preds = %169
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = phi i8* [ %177, %174 ], [ %181, %178 ]
  store i8* %183, i8** %8, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 4
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 4
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %8, align 8
  br label %204

192:                                              ; preds = %182
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  %200 = load i8*, i8** %199, align 8
  store i8* %200, i8** %8, align 8
  br label %203

201:                                              ; preds = %192
  %202 = load i8*, i8** @OSM_DEFAULT_QOS_SL2VL, align 8
  store i8* %202, i8** %8, align 8
  br label %203

203:                                              ; preds = %201, %197
  br label %204

204:                                              ; preds = %203, %188
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %223, %204
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @IB_MAX_NUM_VLS, align 4
  %208 = sdiv i32 %207, 2
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %205
  %211 = load i8*, i8** %8, align 8
  %212 = load %struct.qos_config*, %struct.qos_config** %4, align 8
  %213 = getelementptr inbounds %struct.qos_config, %struct.qos_config* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = call i32 @parse_sl2vl_entry(i8* %211, i32* %218)
  %220 = load i8*, i8** %8, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %8, align 8
  br label %223

223:                                              ; preds = %210
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %205

226:                                              ; preds = %205
  ret void
}

declare dso_local i32 @memset(%struct.qos_config*, i32, i32) #1

declare dso_local i32 @parse_vlarb_entry(i8*, i32*) #1

declare dso_local i32 @parse_sl2vl_entry(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
