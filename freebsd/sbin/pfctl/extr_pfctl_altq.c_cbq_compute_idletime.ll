; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_cbq_compute_idletime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_cbq_compute_idletime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.pf_altq = type { i64, i8*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cbq_opts }
%struct.cbq_opts = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@RM_NS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global i32 0, align 4
@PF_OPT_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"queue bandwidth must be larger than %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cbq: queue %s is too slow!\0A\00", align 1
@RM_FILTER_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfctl*, %struct.pf_altq*)* @cbq_compute_idletime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_compute_idletime(%struct.pfctl* %0, %struct.pf_altq* %1) #0 {
  %3 = alloca %struct.pfctl*, align 8
  %4 = alloca %struct.pf_altq*, align 8
  %5 = alloca %struct.cbq_opts*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %3, align 8
  store %struct.pf_altq* %1, %struct.pf_altq** %4, align 8
  %21 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %22 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.cbq_opts* %23, %struct.cbq_opts** %5, align 8
  %24 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %25 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = fdiv double 1.000000e+00, %27
  %29 = load double, double* @RM_NS_PER_SEC, align 8
  %30 = fmul double %28, %29
  %31 = fmul double %30, 8.000000e+00
  store double %31, double* %11, align 8
  %32 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %33 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  %35 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %36 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %20, align 4
  %38 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %39 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store double 1.000000e-04, double* %16, align 8
  br label %53

43:                                               ; preds = %2
  %44 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %45 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %49 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to double
  %52 = fdiv double %47, %51
  store double %52, double* %16, align 8
  br label %53

53:                                               ; preds = %43, %42
  %54 = load double, double* %11, align 8
  %55 = load double, double* %16, align 8
  %56 = fdiv double %54, %55
  store double %56, double* %10, align 8
  %57 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %58 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to double
  %61 = load double, double* %11, align 8
  %62 = fmul double %60, %61
  store double %62, double* %12, align 8
  %63 = load double, double* %12, align 8
  %64 = load double, double* %16, align 8
  %65 = fsub double 1.000000e+00, %64
  %66 = fmul double %63, %65
  %67 = load double, double* %16, align 8
  %68 = fdiv double %66, %67
  store double %68, double* %13, align 8
  %69 = load double, double* %10, align 8
  %70 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %71 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sitofp i32 %72 to double
  %74 = fmul double %69, %73
  %75 = load i32, i32* @INT_MAX, align 4
  %76 = sitofp i32 %75 to double
  %77 = fcmp ogt double %74, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %53
  %79 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %80 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %78
  %84 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %85 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PF_OPT_QUIET, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %83
  %91 = load double, double* %11, align 8
  %92 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %93 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sitofp i32 %94 to double
  %96 = fmul double %91, %95
  %97 = load i32, i32* @INT_MAX, align 4
  %98 = sitofp i32 %97 to double
  %99 = fdiv double %96, %98
  %100 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %101 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sitofp i64 %102 to double
  %104 = fmul double %99, %103
  %105 = call i32 @rate2str(double %104)
  %106 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @stderr, align 4
  %108 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %109 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %90, %83, %78
  %113 = load i32, i32* @INT_MAX, align 4
  %114 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %115 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %113, %116
  %118 = sitofp i32 %117 to double
  store double %118, double* %10, align 8
  br label %119

119:                                              ; preds = %112, %53
  %120 = load i32, i32* %20, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load double, double* %13, align 8
  %124 = fcmp ogt double %123, 1.000000e+07
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 4, i32* %20, align 4
  br label %127

126:                                              ; preds = %122
  store i32 16, i32* %20, align 4
  br label %127

127:                                              ; preds = %126, %125
  br label %128

128:                                              ; preds = %127, %119
  %129 = load i32, i32* %19, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 2, i32* %19, align 4
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %20, align 4
  store i32 %137, i32* %19, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i32, i32* @RM_FILTER_GAIN, align 4
  %140 = shl i32 1, %139
  %141 = sitofp i32 %140 to double
  store double %141, double* %14, align 8
  %142 = load double, double* %14, align 8
  %143 = fdiv double 1.000000e+00, %142
  %144 = fsub double 1.000000e+00, %143
  store double %144, double* %15, align 8
  %145 = load double, double* %15, align 8
  %146 = load i32, i32* %20, align 4
  %147 = sitofp i32 %146 to double
  %148 = call double @pow(double %145, double %147) #3
  store double %148, double* %17, align 8
  %149 = load double, double* %15, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sitofp i32 %151 to double
  %153 = call double @pow(double %149, double %152) #3
  store double %153, double* %18, align 8
  %154 = load double, double* %16, align 8
  %155 = fdiv double 1.000000e+00, %154
  %156 = fsub double %155, 1.000000e+00
  %157 = load double, double* %17, align 8
  %158 = fsub double 1.000000e+00, %157
  %159 = load double, double* %17, align 8
  %160 = fdiv double %158, %159
  %161 = fmul double %156, %160
  store double %161, double* %7, align 8
  %162 = load double, double* %15, align 8
  %163 = fsub double 1.000000e+00, %162
  store double %163, double* %6, align 8
  %164 = load double, double* %7, align 8
  %165 = load double, double* %6, align 8
  %166 = fcmp ogt double %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %138
  %168 = load double, double* %12, align 8
  %169 = load double, double* %7, align 8
  %170 = fmul double %168, %169
  store double %170, double* %7, align 8
  br label %175

171:                                              ; preds = %138
  %172 = load double, double* %12, align 8
  %173 = load double, double* %6, align 8
  %174 = fmul double %172, %173
  store double %174, double* %7, align 8
  br label %175

175:                                              ; preds = %171, %167
  %176 = load double, double* %13, align 8
  %177 = load double, double* %15, align 8
  %178 = fsub double 1.000000e+00, %177
  %179 = fdiv double 1.000000e+00, %178
  %180 = load double, double* %18, align 8
  %181 = fsub double 1.000000e+00, %180
  %182 = fmul double %179, %181
  %183 = load double, double* %18, align 8
  %184 = fdiv double %182, %183
  %185 = fadd double 1.000000e+00, %184
  %186 = fmul double %176, %185
  store double %186, double* %9, align 8
  %187 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %188 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sitofp i32 %189 to double
  %191 = load double, double* %10, align 8
  %192 = fmul double %190, %191
  %193 = fneg double %192
  store double %193, double* %8, align 8
  %194 = load double, double* %7, align 8
  %195 = fmul double %194, 8.000000e+00
  %196 = load double, double* %10, align 8
  %197 = fdiv double %195, %196
  %198 = load i32, i32* @RM_FILTER_GAIN, align 4
  %199 = sitofp i32 %198 to double
  %200 = call double @pow(double 2.000000e+00, double %199) #3
  %201 = fmul double %197, %200
  store double %201, double* %7, align 8
  %202 = load double, double* %9, align 8
  %203 = fmul double %202, 8.000000e+00
  %204 = load double, double* %10, align 8
  %205 = fdiv double %203, %204
  %206 = load i32, i32* @RM_FILTER_GAIN, align 4
  %207 = sitofp i32 %206 to double
  %208 = call double @pow(double 2.000000e+00, double %207) #3
  %209 = fmul double %205, %208
  store double %209, double* %9, align 8
  %210 = load double, double* %8, align 8
  %211 = fmul double %210, 8.000000e+00
  %212 = load double, double* %10, align 8
  %213 = fdiv double %211, %212
  %214 = load i32, i32* @RM_FILTER_GAIN, align 4
  %215 = sitofp i32 %214 to double
  %216 = call double @pow(double 2.000000e+00, double %215) #3
  %217 = fmul double %213, %216
  store double %217, double* %8, align 8
  %218 = load double, double* %7, align 8
  %219 = fdiv double %218, 1.000000e+03
  store double %219, double* %7, align 8
  %220 = load double, double* %9, align 8
  %221 = fdiv double %220, 1.000000e+03
  store double %221, double* %9, align 8
  %222 = load double, double* %8, align 8
  %223 = fdiv double %222, 1.000000e+03
  store double %223, double* %8, align 8
  %224 = load i32, i32* %19, align 4
  %225 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %226 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %229 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load double, double* %10, align 8
  %231 = fptosi double %230 to i32
  %232 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %233 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  %234 = load double, double* %7, align 8
  %235 = call i64 @fabs(double %234)
  %236 = trunc i64 %235 to i32
  %237 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %238 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  %239 = load double, double* %8, align 8
  %240 = fptosi double %239 to i32
  %241 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %242 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  %243 = load double, double* %9, align 8
  %244 = call i64 @fabs(double %243)
  %245 = trunc i64 %244 to i32
  %246 = load %struct.cbq_opts*, %struct.cbq_opts** %5, align 8
  %247 = getelementptr inbounds %struct.cbq_opts, %struct.cbq_opts* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 8
  ret i32 0
}

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @rate2str(double) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
