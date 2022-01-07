; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_validate_other_comp_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_validate_other_comp_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@IB_MCR_COMPMASK_QKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ERR 1B30: Q_Key mismatch: query 0x%x group 0x%x\0A\00", align 1
@IB_MCR_COMPMASK_PKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"ERR 1B31: Both limited P_Keys: query 0x%x group 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"ERR 1B32: P_Key base mismatch: query 0x%x group 0x%x\0A\00", align 1
@IB_MCR_COMPMASK_TCLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"ERR 1B33: TClass mismatch: query %d group %d\0A\00", align 1
@IB_MCR_COMPMASK_SL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ERR 1B34: SL mismatch: query %d group %d\0A\00", align 1
@IB_MCR_COMPMASK_FLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"ERR 1B35: FlowLabel mismatch: query 0x%x group 0x%x\0A\00", align 1
@IB_MCR_COMPMASK_HOP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"ERR 1B36: Hop mismatch: query %d group %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @validate_other_comp_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_other_comp_fields(i32* %0, i32 %1, %struct.TYPE_8__* %2, %struct.TYPE_7__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @IB_MCR_COMPMASK_QKEY, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @cl_ntoh32(i64 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @cl_ntoh32(i64 %41)
  %43 = call i32 @OSM_LOG(i32* %32, i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %42)
  br label %180

44:                                               ; preds = %22, %5
  %45 = load i32, i32* @IB_MCR_COMPMASK_PKEY, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %100

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ib_pkey_is_full_member(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ib_pkey_is_full_member(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %55
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @cl_ntoh16(i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @cl_ntoh16(i32 %72)
  %74 = call i32 @OSM_LOG(i32* %63, i32 %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %73)
  br label %180

75:                                               ; preds = %55, %49
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ib_pkey_get_base(i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ib_pkey_get_base(i32 %83)
  %85 = icmp ne i64 %79, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %75
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @cl_ntoh16(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @cl_ntoh16(i32 %96)
  %98 = call i32 @OSM_LOG(i32* %87, i32 %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %97)
  br label %180

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99, %44
  %101 = load i32, i32* @IB_MCR_COMPMASK_TCLASS, align 4
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %105
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @OSM_LOG(i32* %115, i32 %116, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %119, i64 %123)
  br label %180

125:                                              ; preds = %105, %100
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ib_member_get_sl_flow_hop(i32 %128, i64* %15, i64* %13, i64* %17)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ib_member_get_sl_flow_hop(i32 %133, i64* %14, i64* %12, i64* %16)
  %135 = load i32, i32* @IB_MCR_COMPMASK_SL, align 4
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %125
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %14, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @OSM_LOG(i32* %144, i32 %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %146, i64 %147)
  br label %180

149:                                              ; preds = %139, %125
  %150 = load i32, i32* @IB_MCR_COMPMASK_FLOW, align 4
  %151 = load i32, i32* %7, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* %12, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %12, align 8
  %163 = call i32 @OSM_LOG(i32* %159, i32 %160, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %161, i64 %162)
  br label %180

164:                                              ; preds = %154, %149
  %165 = load i32, i32* @IB_MCR_COMPMASK_HOP, align 4
  %166 = load i32, i32* %7, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* %16, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* %16, align 8
  %178 = call i32 @OSM_LOG(i32* %174, i32 %175, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %176, i64 %177)
  br label %180

179:                                              ; preds = %169, %164
  store i32 1, i32* %11, align 4
  br label %180

180:                                              ; preds = %179, %173, %158, %143, %114, %86, %62, %31
  %181 = load i32, i32* %11, align 4
  ret i32 %181
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i64, i64) #1

declare dso_local i64 @cl_ntoh32(i64) #1

declare dso_local i64 @ib_pkey_is_full_member(i32) #1

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i64 @ib_pkey_get_base(i32) #1

declare dso_local i32 @ib_member_get_sl_flow_hop(i32, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
