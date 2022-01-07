; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_pro_preempt_other.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_pro_preempt_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i64, i32, i64, i32 }
%union.ctl_ha_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@CTL_PR_ALL_REGISTRANTS = common dso_local global i64 0, align 8
@CTL_PR_NO_RESERVATION = common dso_local global i64 0, align 8
@CTL_MAX_INITIATORS = common dso_local global i32 0, align 4
@CTL_UA_REG_PREEMPT = common dso_local global i32 0, align 4
@SPR_TYPE_WR_EX_AR = common dso_local global i64 0, align 8
@SPR_TYPE_EX_AC_AR = common dso_local global i64 0, align 8
@SPR_TYPE_WR_EX_RO = common dso_local global i64 0, align 8
@SPR_TYPE_EX_AC_RO = common dso_local global i64 0, align 8
@CTL_UA_RES_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_lun*, %union.ctl_ha_msg*)* @ctl_pro_preempt_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_pro_preempt_other(%struct.ctl_lun* %0, %union.ctl_ha_msg* %1) #0 {
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %union.ctl_ha_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_lun* %0, %struct.ctl_lun** %3, align 8
  store %union.ctl_ha_msg* %1, %union.ctl_ha_msg** %4, align 8
  %7 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %8 = bitcast %union.ctl_ha_msg* %7 to %struct.TYPE_4__*
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @scsi_8btou64(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CTL_PR_ALL_REGISTRANTS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CTL_PR_NO_RESERVATION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %27 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @ctl_get_prkey(%struct.ctl_lun* %26, i32 %30)
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %126

33:                                               ; preds = %24, %18, %2
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %44 = bitcast %union.ctl_ha_msg* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @ctl_get_prkey(%struct.ctl_lun* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %41
  br label %63

55:                                               ; preds = %49
  %56 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %56, i32 %57)
  %59 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %62 = call i32 @ctl_est_ua(%struct.ctl_lun* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %54
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %37

66:                                               ; preds = %37
  %67 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %68 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  %69 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %70 = bitcast %union.ctl_ha_msg* %69 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %75 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %77 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SPR_TYPE_WR_EX_AR, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %66
  %82 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %83 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SPR_TYPE_EX_AC_AR, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %89 = bitcast %union.ctl_ha_msg* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %95 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %87, %81, %66
  br label %125

97:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %121, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @ctl_get_prkey(%struct.ctl_lun* %104, i32 %105)
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %121

109:                                              ; preds = %102
  %110 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %110, i32 %111)
  %113 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %114 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %120 = call i32 @ctl_est_ua(%struct.ctl_lun* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %109, %108
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %98

124:                                              ; preds = %98
  br label %125

125:                                              ; preds = %124, %96
  br label %228

126:                                              ; preds = %24
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %192, %126
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %195

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %134 = bitcast %union.ctl_ha_msg* %133 to %struct.TYPE_4__*
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %132, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %131
  %140 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @ctl_get_prkey(%struct.ctl_lun* %140, i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139, %131
  br label %192

145:                                              ; preds = %139
  %146 = load i64, i64* %5, align 8
  %147 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i64 @ctl_get_prkey(%struct.ctl_lun* %147, i32 %148)
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %145
  %152 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %152, i32 %153)
  %155 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %156 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %162 = call i32 @ctl_est_ua(%struct.ctl_lun* %159, i32 %160, i32 %161)
  br label %191

163:                                              ; preds = %145
  %164 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %165 = bitcast %union.ctl_ha_msg* %164 to %struct.TYPE_4__*
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %170 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %168, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %163
  %174 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %175 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SPR_TYPE_WR_EX_RO, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %181 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SPR_TYPE_EX_AC_RO, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %179, %173
  %186 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @CTL_UA_RES_RELEASE, align 4
  %189 = call i32 @ctl_est_ua(%struct.ctl_lun* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %179, %163
  br label %191

191:                                              ; preds = %190, %151
  br label %192

192:                                              ; preds = %191, %144
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %127

195:                                              ; preds = %127
  %196 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %197 = bitcast %union.ctl_ha_msg* %196 to %struct.TYPE_4__*
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %202 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  %203 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %204 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SPR_TYPE_WR_EX_AR, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %195
  %209 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %210 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SPR_TYPE_EX_AC_AR, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %208
  %215 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %216 = bitcast %union.ctl_ha_msg* %215 to %struct.TYPE_4__*
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %222 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  br label %227

223:                                              ; preds = %208, %195
  %224 = load i64, i64* @CTL_PR_ALL_REGISTRANTS, align 8
  %225 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %226 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %223, %214
  br label %228

228:                                              ; preds = %227, %125
  %229 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %230 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  ret void
}

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i64 @ctl_get_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_clr_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_est_ua(%struct.ctl_lun*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
