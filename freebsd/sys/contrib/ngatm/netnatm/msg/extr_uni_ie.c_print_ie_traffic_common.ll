; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_print_ie_traffic_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_print_ie_traffic_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicx = type { i32 }
%struct.uni_xtraffic = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"fwd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@UNI_TRAFFIC_FPCR0_P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@UNI_TRAFFIC_FPCR1_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_FSCR0_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_FSCR1_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_FMBS0_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_FMBS1_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_FABR1_P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bwd\00", align 1
@UNI_TRAFFIC_BPCR0_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BPCR1_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BSCR0_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BSCR1_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BMBS0_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BMBS1_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BABR1_P = common dso_local global i32 0, align 4
@UNI_TRAFFIC_BEST_P = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"best_effort\00", align 1
@UNI_TRAFFIC_MOPT_P = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"disc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unicx*, i32, %struct.uni_xtraffic*)* @print_ie_traffic_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ie_traffic_common(%struct.unicx* %0, i32 %1, %struct.uni_xtraffic* %2) #0 {
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_xtraffic*, align 8
  store %struct.unicx* %0, %struct.unicx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uni_xtraffic* %2, %struct.uni_xtraffic** %6, align 8
  %7 = load %struct.unicx*, %struct.unicx** %4, align 8
  %8 = call i32 @uni_print_entry(%struct.unicx* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @UNI_TRAFFIC_FPCR0_P, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.unicx*, %struct.unicx** %4, align 8
  %15 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %16 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %15, i32 0, i32 17
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.unicx*, %struct.unicx** %4, align 8
  %21 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @UNI_TRAFFIC_FPCR1_P, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %29 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.unicx*, %struct.unicx** %4, align 8
  %34 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @UNI_TRAFFIC_FSCR0_P, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.unicx*, %struct.unicx** %4, align 8
  %41 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %42 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.unicx*, %struct.unicx** %4, align 8
  %47 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @UNI_TRAFFIC_FSCR1_P, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.unicx*, %struct.unicx** %4, align 8
  %54 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %55 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.unicx*, %struct.unicx** %4, align 8
  %60 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @UNI_TRAFFIC_FMBS0_P, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.unicx*, %struct.unicx** %4, align 8
  %67 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %68 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.unicx*, %struct.unicx** %4, align 8
  %73 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @UNI_TRAFFIC_FMBS1_P, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.unicx*, %struct.unicx** %4, align 8
  %80 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %81 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.unicx*, %struct.unicx** %4, align 8
  %86 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @UNI_TRAFFIC_FABR1_P, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.unicx*, %struct.unicx** %4, align 8
  %93 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %94 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.unicx*, %struct.unicx** %4, align 8
  %99 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.unicx*, %struct.unicx** %4, align 8
  %101 = call i32 @uni_print_entry(%struct.unicx* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @UNI_TRAFFIC_BPCR0_P, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.unicx*, %struct.unicx** %4, align 8
  %108 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %109 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %97
  %113 = load %struct.unicx*, %struct.unicx** %4, align 8
  %114 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @UNI_TRAFFIC_BPCR1_P, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.unicx*, %struct.unicx** %4, align 8
  %121 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %122 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %119, %112
  %126 = load %struct.unicx*, %struct.unicx** %4, align 8
  %127 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %126)
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @UNI_TRAFFIC_BSCR0_P, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load %struct.unicx*, %struct.unicx** %4, align 8
  %134 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %135 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %125
  %139 = load %struct.unicx*, %struct.unicx** %4, align 8
  %140 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %139)
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @UNI_TRAFFIC_BSCR1_P, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load %struct.unicx*, %struct.unicx** %4, align 8
  %147 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %148 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %145, %138
  %152 = load %struct.unicx*, %struct.unicx** %4, align 8
  %153 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %152)
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @UNI_TRAFFIC_BMBS0_P, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load %struct.unicx*, %struct.unicx** %4, align 8
  %160 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %161 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %158, %151
  %165 = load %struct.unicx*, %struct.unicx** %4, align 8
  %166 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %165)
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @UNI_TRAFFIC_BMBS1_P, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load %struct.unicx*, %struct.unicx** %4, align 8
  %173 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %174 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %171, %164
  %178 = load %struct.unicx*, %struct.unicx** %4, align 8
  %179 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %178)
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @UNI_TRAFFIC_BABR1_P, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load %struct.unicx*, %struct.unicx** %4, align 8
  %186 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %187 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %184, %177
  %191 = load %struct.unicx*, %struct.unicx** %4, align 8
  %192 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @UNI_TRAFFIC_BEST_P, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load %struct.unicx*, %struct.unicx** %4, align 8
  %199 = call i32 @uni_print_flag(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.unicx* %198)
  br label %200

200:                                              ; preds = %197, %190
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @UNI_TRAFFIC_MOPT_P, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %250

205:                                              ; preds = %200
  %206 = load %struct.unicx*, %struct.unicx** %4, align 8
  %207 = call i32 @uni_print_entry(%struct.unicx* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %208 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %209 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load %struct.unicx*, %struct.unicx** %4, align 8
  %214 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %205
  %216 = load %struct.unicx*, %struct.unicx** %4, align 8
  %217 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %216)
  %218 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %219 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load %struct.unicx*, %struct.unicx** %4, align 8
  %224 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %215
  %226 = load %struct.unicx*, %struct.unicx** %4, align 8
  %227 = call i32 @uni_putc(i8 signext 41, %struct.unicx* %226)
  %228 = load %struct.unicx*, %struct.unicx** %4, align 8
  %229 = call i32 @uni_print_entry(%struct.unicx* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %230 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %231 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %225
  %235 = load %struct.unicx*, %struct.unicx** %4, align 8
  %236 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %237

237:                                              ; preds = %234, %225
  %238 = load %struct.unicx*, %struct.unicx** %4, align 8
  %239 = call i32 @uni_putc(i8 signext 44, %struct.unicx* %238)
  %240 = load %struct.uni_xtraffic*, %struct.uni_xtraffic** %6, align 8
  %241 = getelementptr inbounds %struct.uni_xtraffic, %struct.uni_xtraffic* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load %struct.unicx*, %struct.unicx** %4, align 8
  %246 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %237
  %248 = load %struct.unicx*, %struct.unicx** %4, align 8
  %249 = call i32 @uni_putc(i8 signext 41, %struct.unicx* %248)
  br label %250

250:                                              ; preds = %247, %200
  ret void
}

declare dso_local i32 @uni_print_entry(%struct.unicx*, i8*, i8*) #1

declare dso_local i32 @uni_printf(%struct.unicx*, i8*, ...) #1

declare dso_local i32 @uni_putc(i8 signext, %struct.unicx*) #1

declare dso_local i32 @uni_print_flag(i8*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
