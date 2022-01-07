; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_build_ua.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_build_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32**, %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_sense_data = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@CTL_MAX_INIT_PER_PORT = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_UA_POWERON = common dso_local global i32 0, align 4
@CTL_UA_NONE = common dso_local global i32 0, align 4
@SSD_KEY_UNIT_ATTENTION = common dso_local global i32 0, align 4
@SSD_ELEM_INFO = common dso_local global i32 0, align 4
@SSD_ELEM_SKIP = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@CTL_UA_LUN_CHANGE = common dso_local global i32 0, align 4
@CTL_UA_THIN_PROV_THRES = common dso_local global i32 0, align 4
@SLBPP_SITUA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_build_ua(%struct.ctl_lun* %0, i64 %1, %struct.scsi_sense_data* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.scsi_sense_data* %2, %struct.scsi_sense_data** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %21 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %20, i32 0, i32 2
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @mtx_assert(i32* %21, i32 %22)
  %24 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %25 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* @MA_NOTOWNED, align 4
  %29 = call i32 @mtx_assert(i32* %27, i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %32 = udiv i64 %30, %31
  store i64 %32, i64* %18, align 8
  %33 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %34 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* %18, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %91

40:                                               ; preds = %5
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 2
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @M_CTL, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = call i32* @malloc(i32 %46, i32 %47, i32 %48)
  store i32* %49, i32** %12, align 8
  %50 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %51 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %50, i32 0, i32 2
  %52 = call i32 @mtx_lock(i32* %51)
  %53 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %54 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* %18, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %40
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %63 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i64, i64* %18, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  store i32* %61, i32** %66, align 8
  store i64 0, i64* %19, align 8
  br label %67

67:                                               ; preds = %76, %60
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* @CTL_UA_POWERON, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i64, i64* %19, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %19, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %19, align 8
  br label %67

79:                                               ; preds = %67
  br label %90

80:                                               ; preds = %40
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* @M_CTL, align 4
  %83 = call i32 @free(i32* %81, i32 %82)
  %84 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %85 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %12, align 8
  br label %90

90:                                               ; preds = %80, %79
  br label %91

91:                                               ; preds = %90, %5
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %94 = urem i64 %92, %93
  store i64 %94, i64* %19, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i64, i64* %19, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CTL_UA_NONE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* @CTL_UA_NONE, align 4
  store i32 %102, i32* %6, align 4
  br label %186

103:                                              ; preds = %91
  %104 = load i32*, i32** %12, align 8
  %105 = load i64, i64* %19, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ffs(i32 %107)
  %109 = sub nsw i32 %108, 1
  %110 = shl i32 1, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %112 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @ctl_ua_to_ascq(%struct.ctl_lun* %112, i32 %113, i32* %16, i32* %17, i32* %14, i32** %15)
  %115 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @SSD_KEY_UNIT_ATTENTION, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %103
  %125 = load i32, i32* @SSD_ELEM_INFO, align 4
  br label %128

126:                                              ; preds = %103
  %127 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* @SSD_ELEM_NONE, align 4
  %132 = call i32 @ctl_set_sense_data(%struct.scsi_sense_data* %115, i32* %116, %struct.ctl_lun* %117, i32 %118, i32 1, i32 %119, i32 %120, i32 %121, i32 %129, i32 8, i32* %130, i32 %131)
  %133 = load i32, i32* %14, align 4
  %134 = xor i32 %133, -1
  %135 = load i32*, i32** %12, align 8
  %136 = load i64, i64* %19, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %134
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @CTL_UA_LUN_CHANGE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %128
  %144 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %145 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %144, i32 0, i32 2
  %146 = call i32 @mtx_unlock(i32* %145)
  %147 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %148 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = call i32 @mtx_lock(i32* %150)
  %152 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %153 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %152, i32 0, i32 3
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @ctl_clr_ua_allluns(%struct.TYPE_6__* %154, i64 %155, i32 %156)
  %158 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %159 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %158, i32 0, i32 3
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = call i32 @mtx_unlock(i32* %161)
  %163 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %164 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %163, i32 0, i32 2
  %165 = call i32 @mtx_lock(i32* %164)
  br label %184

166:                                              ; preds = %128
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @CTL_UA_THIN_PROV_THRES, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %166
  %171 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %172 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SLBPP_SITUA, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @ctl_clr_ua_all(%struct.ctl_lun* %180, i32 -1, i32 %181)
  br label %183

183:                                              ; preds = %179, %170, %166
  br label %184

184:                                              ; preds = %183, %143
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %184, %101
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ctl_ua_to_ascq(%struct.ctl_lun*, i32, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @ctl_set_sense_data(%struct.scsi_sense_data*, i32*, %struct.ctl_lun*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ctl_clr_ua_allluns(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @ctl_clr_ua_all(%struct.ctl_lun*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
