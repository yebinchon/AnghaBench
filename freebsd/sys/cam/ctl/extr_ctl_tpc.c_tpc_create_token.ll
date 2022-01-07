; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_create_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_create_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ctl_port = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.scsi_vpd_id_descriptor* }
%struct.scsi_vpd_id_descriptor = type { i32 }
%struct.scsi_token = type { i32*, i32*, i32 }
%struct.scsi_ec_cscd_id = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_read_capacity_data_long = type { i32, i32*, i32 }

@tpc_create_token.id = internal global i32 0, align 4
@ROD_TYPE_AUR = common dso_local global i32 0, align 4
@scsi_devid_is_lun_naa = common dso_local global i32 0, align 4
@scsi_devid_is_lun_eui64 = common dso_local global i32 0, align 4
@EC_CSCD_ID = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SRC16_LBPPBE = common dso_local global i32 0, align 4
@SRC16_LALBA_A = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_UNMAP = common dso_local global i32 0, align 4
@SRC16_LBPME = common dso_local global i32 0, align 4
@SRC16_LBPRZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_lun*, %struct.ctl_port*, i32, %struct.scsi_token*)* @tpc_create_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpc_create_token(%struct.ctl_lun* %0, %struct.ctl_port* %1, i32 %2, %struct.scsi_token* %3) #0 {
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.ctl_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_token*, align 8
  %9 = alloca %struct.scsi_vpd_id_descriptor*, align 8
  %10 = alloca %struct.scsi_ec_cscd_id*, align 8
  %11 = alloca %struct.scsi_read_capacity_data_long*, align 8
  %12 = alloca i32, align 4
  store %struct.ctl_lun* %0, %struct.ctl_lun** %5, align 8
  store %struct.ctl_port* %1, %struct.ctl_port** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.scsi_token* %3, %struct.scsi_token** %8, align 8
  store %struct.scsi_vpd_id_descriptor* null, %struct.scsi_vpd_id_descriptor** %9, align 8
  %13 = load i32, i32* @ROD_TYPE_AUR, align 4
  %14 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %15 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @scsi_ulto4b(i32 %13, i32 %16)
  %18 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %19 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @scsi_ulto2b(i32 504, i32* %20)
  %22 = call i32 @atomic_fetchadd_int(i32* @tpc_create_token.id, i32 1)
  %23 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %24 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @scsi_u64to8b(i32 %22, i32* %26)
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %29 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %4
  %33 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %34 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.scsi_vpd_id_descriptor*
  %39 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %40 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @scsi_devid_is_lun_naa, align 4
  %45 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid_desc(%struct.scsi_vpd_id_descriptor* %38, i32 %43, i32 %44)
  store %struct.scsi_vpd_id_descriptor* %45, %struct.scsi_vpd_id_descriptor** %9, align 8
  br label %46

46:                                               ; preds = %32, %4
  %47 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %9, align 8
  %48 = icmp eq %struct.scsi_vpd_id_descriptor* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %51 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %56 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.scsi_vpd_id_descriptor*
  %61 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %62 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @scsi_devid_is_lun_eui64, align 4
  %67 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid_desc(%struct.scsi_vpd_id_descriptor* %60, i32 %65, i32 %66)
  store %struct.scsi_vpd_id_descriptor* %67, %struct.scsi_vpd_id_descriptor** %9, align 8
  br label %68

68:                                               ; preds = %54, %49, %46
  %69 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %9, align 8
  %70 = icmp ne %struct.scsi_vpd_id_descriptor* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %73 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = bitcast i32* %75 to %struct.scsi_ec_cscd_id*
  store %struct.scsi_ec_cscd_id* %76, %struct.scsi_ec_cscd_id** %10, align 8
  %77 = load i32, i32* @EC_CSCD_ID, align 4
  %78 = load %struct.scsi_ec_cscd_id*, %struct.scsi_ec_cscd_id** %10, align 8
  %79 = getelementptr inbounds %struct.scsi_ec_cscd_id, %struct.scsi_ec_cscd_id* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @T_DIRECT, align 4
  %81 = load %struct.scsi_ec_cscd_id*, %struct.scsi_ec_cscd_id** %10, align 8
  %82 = getelementptr inbounds %struct.scsi_ec_cscd_id, %struct.scsi_ec_cscd_id* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.scsi_ec_cscd_id*, %struct.scsi_ec_cscd_id** %10, align 8
  %84 = getelementptr inbounds %struct.scsi_ec_cscd_id, %struct.scsi_ec_cscd_id* %83, i32 0, i32 1
  %85 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %9, align 8
  %86 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %9, align 8
  %87 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 4, %88
  %90 = call i32 @memcpy(i32* %84, %struct.scsi_vpd_id_descriptor* %85, i32 %89)
  %91 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %92 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.scsi_ec_cscd_id*, %struct.scsi_ec_cscd_id** %10, align 8
  %97 = getelementptr inbounds %struct.scsi_ec_cscd_id, %struct.scsi_ec_cscd_id* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @scsi_ulto3b(i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %71, %68
  %102 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %103 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 40
  %106 = call i32 @scsi_u64to8b(i32 0, i32* %105)
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %109 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 48
  %112 = call i32 @scsi_u64to8b(i32 %107, i32* %111)
  %113 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %114 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 80
  %117 = bitcast i32* %116 to %struct.scsi_read_capacity_data_long*
  store %struct.scsi_read_capacity_data_long* %117, %struct.scsi_read_capacity_data_long** %11, align 8
  %118 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %119 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %11, align 8
  %124 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @scsi_ulto4b(i32 %122, i32 %125)
  %127 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %128 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SRC16_LBPPBE, align 4
  %133 = and i32 %131, %132
  %134 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %11, align 8
  %135 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %137 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SRC16_LALBA_A, align 4
  %142 = and i32 %140, %141
  %143 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %11, align 8
  %144 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @scsi_ulto2b(i32 %142, i32* %145)
  %147 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %148 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @CTL_LUN_FLAG_UNMAP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %101
  %156 = load i32, i32* @SRC16_LBPME, align 4
  %157 = load i32, i32* @SRC16_LBPRZ, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.scsi_read_capacity_data_long*, %struct.scsi_read_capacity_data_long** %11, align 8
  %160 = getelementptr inbounds %struct.scsi_read_capacity_data_long, %struct.scsi_read_capacity_data_long* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %158
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %155, %101
  %166 = load %struct.ctl_port*, %struct.ctl_port** %6, align 8
  %167 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = icmp ne %struct.TYPE_8__* %168, null
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load %struct.ctl_port*, %struct.ctl_port** %6, align 8
  %172 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %12, align 4
  %176 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %177 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 120
  %180 = load %struct.ctl_port*, %struct.ctl_port** %6, align 8
  %181 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %180, i32 0, i32 0
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @memcpy(i32* %179, %struct.scsi_vpd_id_descriptor* %184, i32 %185)
  br label %188

187:                                              ; preds = %165
  store i32 32, i32* %12, align 4
  br label %188

188:                                              ; preds = %187, %170
  %189 = load %struct.scsi_token*, %struct.scsi_token** %8, align 8
  %190 = getelementptr inbounds %struct.scsi_token, %struct.scsi_token* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 120, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %12, align 4
  %197 = sub nsw i32 384, %196
  %198 = call i32 @arc4rand(i32* %195, i32 %197, i32 0)
  ret void
}

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @scsi_u64to8b(i32, i32*) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local %struct.scsi_vpd_id_descriptor* @scsi_get_devid_desc(%struct.scsi_vpd_id_descriptor*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.scsi_vpd_id_descriptor*, i32) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @arc4rand(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
