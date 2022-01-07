; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_encode_cause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_encode_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32 }
%struct.uni_ie_cause = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32*, i32, %struct.TYPE_14__, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i64, i32** }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@cause = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_CAUSE_COND_P = common dso_local global i32 0, align 4
@UNI_CAUSE_REJ_P = common dso_local global i32 0, align 4
@UNI_CAUSE_REJ_USER_P = common dso_local global i32 0, align 4
@UNI_CAUSE_REJ_IE_P = common dso_local global i32 0, align 4
@UNI_CAUSE_IE_P = common dso_local global i32 0, align 4
@UNI_CAUSE_TRAFFIC_P = common dso_local global i32 0, align 4
@UNI_CAUSE_VPCI_P = common dso_local global i32 0, align 4
@UNI_CAUSE_MTYPE_P = common dso_local global i32 0, align 4
@UNI_CAUSE_TIMER_P = common dso_local global i32 0, align 4
@UNI_CAUSE_TNS_P = common dso_local global i32 0, align 4
@UNI_IE_TNS = common dso_local global i32 0, align 4
@UNI_CAUSE_NUMBER_P = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_CAUSE_ATTR_P = common dso_local global i32 0, align 4
@UNI_CAUSE_PARAM_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_ie_cause*, %struct.unicx*)* @encode_cause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_cause(%struct.uni_msg* %0, %struct.uni_ie_cause* %1, %struct.unicx* %2) #0 {
  %4 = alloca %struct.uni_msg*, align 8
  %5 = alloca %struct.uni_ie_cause*, align 8
  %6 = alloca %struct.unicx*, align 8
  %7 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %4, align 8
  store %struct.uni_ie_cause* %1, %struct.uni_ie_cause** %5, align 8
  store %struct.unicx* %2, %struct.unicx** %6, align 8
  %8 = load i32, i32* @cause, align 4
  %9 = load i32, i32* @UNI_IE_CAUSE, align 4
  %10 = call i32 @START_IE(i32 %8, i32 %9, i32 30)
  %11 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %12 = call i64 @IE_ISERROR(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %16 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %17 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 0, %18
  %20 = call i32 @APP_BYTE(%struct.uni_msg* %15, i32 %19)
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %23 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %24 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 128, %25
  %27 = call i32 @APP_BYTE(%struct.uni_msg* %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %30 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %31 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 128, %32
  %34 = call i32 @APP_BYTE(%struct.uni_msg* %29, i32 %33)
  %35 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %36 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @UNI_CAUSE_COND_P, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %28
  %43 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %44 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %45 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 3
  %50 = or i32 128, %49
  %51 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %52 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 2
  %57 = or i32 %50, %56
  %58 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %59 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %57, %62
  %64 = call i32 @APP_BYTE(%struct.uni_msg* %43, i32 %63)
  br label %396

65:                                               ; preds = %28
  %66 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %67 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @UNI_CAUSE_REJ_P, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %122

73:                                               ; preds = %65
  %74 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %75 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %76 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 2
  %81 = or i32 128, %80
  %82 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %83 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %81, %86
  %88 = call i32 @APP_BYTE(%struct.uni_msg* %74, i32 %87)
  %89 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %90 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @UNI_CAUSE_REJ_USER_P, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %73
  %97 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %98 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %99 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @APP_BYTE(%struct.uni_msg* %97, i32 %102)
  br label %121

104:                                              ; preds = %73
  %105 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %106 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @UNI_CAUSE_REJ_IE_P, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %114 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %115 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @APP_BYTE(%struct.uni_msg* %113, i32 %118)
  br label %120

120:                                              ; preds = %112, %104
  br label %121

121:                                              ; preds = %120, %96
  br label %395

122:                                              ; preds = %65
  %123 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %124 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @UNI_CAUSE_IE_P, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %122
  %131 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %132 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %133 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %138 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @APP_BUF(%struct.uni_msg* %131, i32 %136, i32 %141)
  br label %394

143:                                              ; preds = %122
  %144 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %145 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @UNI_CAUSE_TRAFFIC_P, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %143
  %152 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %153 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %154 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %159 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @APP_BUF(%struct.uni_msg* %152, i32 %157, i32 %162)
  br label %393

164:                                              ; preds = %143
  %165 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %166 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @UNI_CAUSE_VPCI_P, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %205

172:                                              ; preds = %164
  %173 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %174 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %175 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = ashr i32 %178, 8
  %180 = call i32 @APP_BYTE(%struct.uni_msg* %173, i32 %179)
  %181 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %182 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %183 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = ashr i32 %186, 0
  %188 = call i32 @APP_BYTE(%struct.uni_msg* %181, i32 %187)
  %189 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %190 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %191 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 8
  %196 = call i32 @APP_BYTE(%struct.uni_msg* %189, i32 %195)
  %197 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %198 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %199 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 0
  %204 = call i32 @APP_BYTE(%struct.uni_msg* %197, i32 %203)
  br label %392

205:                                              ; preds = %164
  %206 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %207 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @UNI_CAUSE_MTYPE_P, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %205
  %214 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %215 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %216 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @APP_BYTE(%struct.uni_msg* %214, i32 %218)
  br label %391

220:                                              ; preds = %205
  %221 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %222 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @UNI_CAUSE_TIMER_P, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %253

228:                                              ; preds = %220
  %229 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %230 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %231 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @APP_BYTE(%struct.uni_msg* %229, i32 %235)
  %237 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %238 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %239 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @APP_BYTE(%struct.uni_msg* %237, i32 %243)
  %245 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %246 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %247 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @APP_BYTE(%struct.uni_msg* %245, i32 %251)
  br label %390

253:                                              ; preds = %220
  %254 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %255 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @UNI_CAUSE_TNS_P, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %253
  %262 = load i32, i32* @UNI_IE_TNS, align 4
  %263 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %264 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %265 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 5
  %267 = bitcast i32* %266 to %union.uni_ieall*
  %268 = load %struct.unicx*, %struct.unicx** %6, align 8
  %269 = call i32 @uni_encode_ie(i32 %262, %struct.uni_msg* %263, %union.uni_ieall* %267, %struct.unicx* %268)
  br label %389

270:                                              ; preds = %253
  %271 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %272 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @UNI_CAUSE_NUMBER_P, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %270
  %279 = load i32, i32* @UNI_IE_CALLED, align 4
  %280 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %281 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %282 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 4
  %284 = bitcast i32* %283 to %union.uni_ieall*
  %285 = load %struct.unicx*, %struct.unicx** %6, align 8
  %286 = call i32 @uni_encode_ie(i32 %279, %struct.uni_msg* %280, %union.uni_ieall* %284, %struct.unicx* %285)
  br label %388

287:                                              ; preds = %270
  %288 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %289 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @UNI_CAUSE_ATTR_P, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %371

295:                                              ; preds = %287
  store i64 0, i64* %7, align 8
  br label %296

296:                                              ; preds = %367, %295
  %297 = load i64, i64* %7, align 8
  %298 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %299 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ult i64 %297, %302
  br i1 %303, label %304, label %370

304:                                              ; preds = %296
  %305 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %306 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %307 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 1
  %310 = load i32**, i32*** %309, align 8
  %311 = load i64, i64* %7, align 8
  %312 = getelementptr inbounds i32*, i32** %310, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @APP_BYTE(%struct.uni_msg* %305, i32 %315)
  %317 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %318 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 1
  %321 = load i32**, i32*** %320, align 8
  %322 = load i64, i64* %7, align 8
  %323 = getelementptr inbounds i32*, i32** %321, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %366, label %328

328:                                              ; preds = %304
  %329 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %330 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %331 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 1
  %334 = load i32**, i32*** %333, align 8
  %335 = load i64, i64* %7, align 8
  %336 = getelementptr inbounds i32*, i32** %334, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @APP_BYTE(%struct.uni_msg* %329, i32 %339)
  %341 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %342 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = load i32**, i32*** %344, align 8
  %346 = load i64, i64* %7, align 8
  %347 = getelementptr inbounds i32*, i32** %345, i64 %346
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %365, label %352

352:                                              ; preds = %328
  %353 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %354 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %355 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 1
  %358 = load i32**, i32*** %357, align 8
  %359 = load i64, i64* %7, align 8
  %360 = getelementptr inbounds i32*, i32** %358, i64 %359
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 2
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @APP_BYTE(%struct.uni_msg* %353, i32 %363)
  br label %365

365:                                              ; preds = %352, %328
  br label %366

366:                                              ; preds = %365, %304
  br label %367

367:                                              ; preds = %366
  %368 = load i64, i64* %7, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %7, align 8
  br label %296

370:                                              ; preds = %296
  br label %387

371:                                              ; preds = %287
  %372 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %373 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @UNI_CAUSE_PARAM_P, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %371
  %380 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %381 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %382 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @APP_BYTE(%struct.uni_msg* %380, i32 %384)
  br label %386

386:                                              ; preds = %379, %371
  br label %387

387:                                              ; preds = %386, %370
  br label %388

388:                                              ; preds = %387, %278
  br label %389

389:                                              ; preds = %388, %261
  br label %390

390:                                              ; preds = %389, %228
  br label %391

391:                                              ; preds = %390, %213
  br label %392

392:                                              ; preds = %391, %172
  br label %393

393:                                              ; preds = %392, %151
  br label %394

394:                                              ; preds = %393, %130
  br label %395

395:                                              ; preds = %394, %121
  br label %396

396:                                              ; preds = %395, %42
  %397 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %398 = call i32 @SET_IE_LEN(%struct.uni_msg* %397)
  ret i32 0
}

declare dso_local i32 @START_IE(i32, i32, i32) #1

declare dso_local i64 @IE_ISERROR(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8) #1

declare dso_local i32 @APP_BYTE(%struct.uni_msg*, i32) #1

declare dso_local i32 @APP_BUF(%struct.uni_msg*, i32, i32) #1

declare dso_local i32 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @SET_IE_LEN(%struct.uni_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
