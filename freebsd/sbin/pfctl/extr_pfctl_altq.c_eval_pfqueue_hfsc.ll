; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_eval_pfqueue_hfsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_eval_pfqueue_hfsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.pf_altq = type { i64, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.hfsc_opts_v1 }
%struct.hfsc_opts_v1 = type { i64, i64, i32, i64, i64, i64, i64, i64, i64 }
%struct.pfctl_altq = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.service_curve = type { i64, i64, i64 }

@HFCF_DEFAULTCLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"adding %s would make default queue %s not a leaf\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"m2 is zero for %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"m1 must be zero for convex curve: %s\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"real-time sc exceeds 80%% of the interface bandwidth (%s)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"linkshare sc exceeds parent's sc\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"upper-limit larger than interface bandwidth\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"upper-limit sc smaller than real-time sc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfctl*, %struct.pf_altq*, %struct.pfctl_altq*, %struct.pfctl_altq*)* @eval_pfqueue_hfsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_pfqueue_hfsc(%struct.pfctl* %0, %struct.pf_altq* %1, %struct.pfctl_altq* %2, %struct.pfctl_altq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfctl*, align 8
  %7 = alloca %struct.pf_altq*, align 8
  %8 = alloca %struct.pfctl_altq*, align 8
  %9 = alloca %struct.pfctl_altq*, align 8
  %10 = alloca %struct.hfsc_opts_v1*, align 8
  %11 = alloca %struct.service_curve, align 8
  store %struct.pfctl* %0, %struct.pfctl** %6, align 8
  store %struct.pf_altq* %1, %struct.pf_altq** %7, align 8
  store %struct.pfctl_altq* %2, %struct.pfctl_altq** %8, align 8
  store %struct.pfctl_altq* %3, %struct.pfctl_altq** %9, align 8
  %12 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %13 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.hfsc_opts_v1* %14, %struct.hfsc_opts_v1** %10, align 8
  %15 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %16 = icmp eq %struct.pfctl_altq* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %19 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %22 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %24 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %27 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %29 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %301

30:                                               ; preds = %4
  %31 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %32 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %38 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = call i32 @LIST_INIT(i32* %39)
  %41 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %42 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = call i32 @LIST_INIT(i32* %43)
  br label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %47 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HFCF_DEFAULTCLASS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %57 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %60 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  store i32 -1, i32* %5, align 4
  br label %301

63:                                               ; preds = %45
  %64 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %65 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @HFCF_DEFAULTCLASS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.pfctl_altq*, %struct.pfctl_altq** %8, align 8
  %74 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %63
  %79 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %80 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %85 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %88 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %91 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %96 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %101 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %106 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %111 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %116 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114, %104, %94
  %120 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %121 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %5, align 4
  br label %301

124:                                              ; preds = %114, %109
  %125 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %126 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %129 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %134 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %163, label %137

137:                                              ; preds = %132, %124
  %138 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %139 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %142 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %140, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %147 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %152 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %155 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %150
  %159 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %160 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158, %145, %132
  %164 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %165 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  store i32 -1, i32* %5, align 4
  br label %301

168:                                              ; preds = %158, %150
  %169 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %170 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %210

173:                                              ; preds = %168
  %174 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %175 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 0
  store i64 %176, i64* %177, align 8
  %178 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %179 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %178, i32 0, i32 8
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 2
  store i64 %180, i64* %181, align 8
  %182 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %183 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 1
  store i64 %184, i64* %185, align 8
  %186 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %187 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = call i32 @gsc_add_sc(i32* %188, %struct.service_curve* %11)
  %190 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 0
  store i64 0, i64* %190, align 8
  %191 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 2
  store i64 0, i64* %191, align 8
  %192 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %193 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = sdiv i64 %194, 100
  %196 = mul nsw i64 %195, 80
  %197 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 1
  store i64 %196, i64* %197, align 8
  %198 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %199 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = call i32 @is_gsc_under_sc(i32* %200, %struct.service_curve* %11)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %173
  %204 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = sitofp i64 %205 to double
  %207 = call i32 @rate2str(double %206)
  %208 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  store i32 -1, i32* %5, align 4
  br label %301

209:                                              ; preds = %173
  br label %210

210:                                              ; preds = %209, %168
  %211 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %212 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %261

215:                                              ; preds = %210
  %216 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %217 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 0
  store i64 %218, i64* %219, align 8
  %220 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %221 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 2
  store i64 %222, i64* %223, align 8
  %224 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %225 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 1
  store i64 %226, i64* %227, align 8
  %228 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %229 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = call i32 @gsc_add_sc(i32* %230, %struct.service_curve* %11)
  %232 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %233 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 0
  store i64 %237, i64* %238, align 8
  %239 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %240 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 2
  store i64 %244, i64* %245, align 8
  %246 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %247 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %11, i32 0, i32 1
  store i64 %251, i64* %252, align 8
  %253 = load %struct.pfctl_altq*, %struct.pfctl_altq** %9, align 8
  %254 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  %256 = call i32 @is_gsc_under_sc(i32* %255, %struct.service_curve* %11)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %215
  %259 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %301

260:                                              ; preds = %215
  br label %261

261:                                              ; preds = %260, %210
  %262 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %263 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %300

266:                                              ; preds = %261
  %267 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %268 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %271 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp sgt i64 %269, %272
  br i1 %273, label %282, label %274

274:                                              ; preds = %266
  %275 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %276 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %275, i32 0, i32 6
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.pf_altq*, %struct.pf_altq** %7, align 8
  %279 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp sgt i64 %277, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %274, %266
  %283 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %301

284:                                              ; preds = %274
  %285 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %286 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %284
  %290 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %291 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.hfsc_opts_v1*, %struct.hfsc_opts_v1** %10, align 8
  %294 = getelementptr inbounds %struct.hfsc_opts_v1, %struct.hfsc_opts_v1* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = icmp sgt i64 %292, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %289
  %298 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %301

299:                                              ; preds = %289, %284
  br label %300

300:                                              ; preds = %299, %261
  store i32 0, i32* %5, align 4
  br label %301

301:                                              ; preds = %300, %297, %282, %258, %203, %163, %119, %55, %17
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @gsc_add_sc(i32*, %struct.service_curve*) #1

declare dso_local i32 @is_gsc_under_sc(i32*, %struct.service_curve*) #1

declare dso_local i32 @rate2str(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
