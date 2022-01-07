; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_datamove_remote_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_datamove_remote_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ctl_ha_dt_req = type { i32, i32, {}*, i32*, i32*, i64, %union.ctl_io* }
%struct.ctl_sg_entry = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@CTL_HA_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CTL_FLAG_BUS_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"HA does not support BUS_ADDR\00", align 1
@CTL_HA_STATUS_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*, i32, i32 (%struct.ctl_ha_dt_req*)*)* @ctl_datamove_remote_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_datamove_remote_xfer(%union.ctl_io* %0, i32 %1, i32 (%struct.ctl_ha_dt_req*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.ctl_ha_dt_req*)*, align 8
  %8 = alloca %struct.ctl_ha_dt_req*, align 8
  %9 = alloca %struct.ctl_sg_entry*, align 8
  %10 = alloca %struct.ctl_sg_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.ctl_ha_dt_req*)* %2, i32 (%struct.ctl_ha_dt_req*)** %7, align 8
  %19 = call %struct.ctl_ha_dt_req* (...) @ctl_dt_req_alloc()
  store %struct.ctl_ha_dt_req* %19, %struct.ctl_ha_dt_req** %8, align 8
  %20 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %21 = icmp eq %struct.ctl_ha_dt_req* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CTL_STATUS_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @CTL_STATUS_NONE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %33 = bitcast %union.ctl_io* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CTL_STATUS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CTL_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %42 = bitcast %union.ctl_io* %41 to %struct.TYPE_4__*
  %43 = call i32 @ctl_set_busy(%struct.TYPE_4__* %42)
  br label %44

44:                                               ; preds = %40, %31, %22, %3
  %45 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %46 = bitcast %union.ctl_io* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CTL_STATUS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @CTL_STATUS_NONE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %55 = bitcast %union.ctl_io* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CTL_STATUS_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @CTL_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %64 = icmp ne %struct.ctl_ha_dt_req* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %67 = call i32 @ctl_dt_req_free(%struct.ctl_ha_dt_req* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %70 = call i32 @ctl_send_datamove_done(%union.ctl_io* %69, i32 0)
  store i32 1, i32* %4, align 4
  br label %213

71:                                               ; preds = %53, %44
  %72 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %73 = call %struct.ctl_sg_entry* @CTL_LSGL(%union.ctl_io* %72)
  store %struct.ctl_sg_entry* %73, %struct.ctl_sg_entry** %10, align 8
  %74 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %75 = call %struct.ctl_sg_entry* @CTL_RSGL(%union.ctl_io* %74)
  store %struct.ctl_sg_entry* %75, %struct.ctl_sg_entry** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %76 = load i32, i32* @CTL_HA_STATUS_SUCCESS, align 4
  store i32 %76, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %200, %71
  %78 = load i64, i64* %13, align 8
  %79 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %80 = bitcast %union.ctl_io* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %78, %82
  br i1 %83, label %84, label %201

84:                                               ; preds = %77
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %87 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %89 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %90 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %89, i32 0, i32 6
  store %union.ctl_io* %88, %union.ctl_io** %90, align 8
  %91 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %10, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %91, i64 %93
  %95 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %99, i64 %101
  %103 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = sub nsw i64 %104, %105
  %107 = call i64 @MIN(i64 %98, i64 %106)
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %110 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %109, i32 0, i32 5
  store i64 %108, i64* %110, align 8
  %111 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %10, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %111, i64 %113
  %115 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %18, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 %118
  store i32* %120, i32** %18, align 8
  %121 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %122 = bitcast %union.ctl_io* %121 to %struct.TYPE_3__*
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CTL_FLAG_BUS_ADDR, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @KASSERT(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %130 = load i32*, i32** %18, align 8
  %131 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %132 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %131, i32 0, i32 4
  store i32* %130, i32** %132, align 8
  %133 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %133, i64 %135
  %137 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %18, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load i32*, i32** %18, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 %140
  store i32* %142, i32** %18, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %145 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %144, i32 0, i32 3
  store i32* %143, i32** %145, align 8
  %146 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %147 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %146, i32 0, i32 2
  %148 = bitcast {}** %147 to i32 (%struct.ctl_ha_dt_req*)**
  store i32 (%struct.ctl_ha_dt_req*)* null, i32 (%struct.ctl_ha_dt_req*)** %148, align 8
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %11, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %11, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %10, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %153, i64 %155
  %157 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sge i64 %152, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %84
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  store i64 0, i64* %11, align 8
  br label %163

163:                                              ; preds = %160, %84
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* %12, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %12, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %168, i64 %170
  %172 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sge i64 %167, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  store i64 0, i64* %12, align 8
  br label %178

178:                                              ; preds = %175, %163
  %179 = load i64, i64* %17, align 8
  %180 = load i64, i64* %13, align 8
  %181 = add nsw i64 %180, %179
  store i64 %181, i64* %13, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %184 = bitcast %union.ctl_io* %183 to %struct.TYPE_4__*
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp sge i64 %182, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %178
  %189 = load i32 (%struct.ctl_ha_dt_req*)*, i32 (%struct.ctl_ha_dt_req*)** %7, align 8
  %190 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %191 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %190, i32 0, i32 2
  %192 = bitcast {}** %191 to i32 (%struct.ctl_ha_dt_req*)**
  store i32 (%struct.ctl_ha_dt_req*)* %189, i32 (%struct.ctl_ha_dt_req*)** %192, align 8
  br label %193

193:                                              ; preds = %188, %178
  %194 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %195 = call i32 @ctl_dt_single(%struct.ctl_ha_dt_req* %194)
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* @CTL_HA_STATUS_SUCCESS, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %201

200:                                              ; preds = %193
  br label %77

201:                                              ; preds = %199, %77
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* @CTL_HA_STATUS_WAIT, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %208 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32 (%struct.ctl_ha_dt_req*)*, i32 (%struct.ctl_ha_dt_req*)** %7, align 8
  %210 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %8, align 8
  %211 = call i32 %209(%struct.ctl_ha_dt_req* %210)
  br label %212

212:                                              ; preds = %205, %201
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %68
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.ctl_ha_dt_req* @ctl_dt_req_alloc(...) #1

declare dso_local i32 @ctl_set_busy(%struct.TYPE_4__*) #1

declare dso_local i32 @ctl_dt_req_free(%struct.ctl_ha_dt_req*) #1

declare dso_local i32 @ctl_send_datamove_done(%union.ctl_io*, i32) #1

declare dso_local %struct.ctl_sg_entry* @CTL_LSGL(%union.ctl_io*) #1

declare dso_local %struct.ctl_sg_entry* @CTL_RSGL(%union.ctl_io*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ctl_dt_single(%struct.ctl_ha_dt_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
