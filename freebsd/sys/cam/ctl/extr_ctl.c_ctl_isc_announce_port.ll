; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_announce_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_announce_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_port = type { i64, i8*, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, %struct.ctl_softc* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ctl_softc = type { i64, i64, i64, i32 }
%union.ctl_ha_msg = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }

@CTL_HA_LINK_ONLINE = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_MSG_PORT_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d:%s\00", align 1
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_isc_announce_port(%struct.ctl_port* %0) #0 {
  %2 = alloca %struct.ctl_port*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %union.ctl_ha_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.ctl_port* %0, %struct.ctl_port** %2, align 8
  %6 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %7 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %6, i32 0, i32 11
  %8 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  store %struct.ctl_softc* %8, %struct.ctl_softc** %3, align 8
  %9 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %10 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %18 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CTL_HA_LINK_ONLINE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %16, %1
  br label %321

31:                                               ; preds = %24
  %32 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %33 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 48, %36
  %38 = add i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %41 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %31
  %45 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %46 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %44, %31
  %55 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %56 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %55, i32 0, i32 5
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %61 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %60, i32 0, i32 5
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %69 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %68, i32 0, i32 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %74 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %73, i32 0, i32 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %82 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %81, i32 0, i32 3
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = icmp ne %struct.TYPE_12__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %87 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %86, i32 0, i32 3
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @M_CTL, align 4
  %96 = load i32, i32* @M_WAITOK, align 4
  %97 = call %union.ctl_ha_msg* @malloc(i32 %94, i32 %95, i32 %96)
  store %union.ctl_ha_msg* %97, %union.ctl_ha_msg** %4, align 8
  %98 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %99 = bitcast %union.ctl_ha_msg* %98 to %struct.TYPE_13__*
  %100 = call i32 @bzero(%struct.TYPE_13__* %99, i32 48)
  %101 = load i32, i32* @CTL_MSG_PORT_SYNC, align 4
  %102 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %103 = bitcast %union.ctl_ha_msg* %102 to %struct.TYPE_9__*
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 8
  %105 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %106 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %109 = bitcast %union.ctl_ha_msg* %108 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  %112 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %113 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %116 = bitcast %union.ctl_ha_msg* %115 to %struct.TYPE_13__*
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 9
  store i32 %114, i32* %117, align 4
  %118 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %119 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %122 = bitcast %union.ctl_ha_msg* %121 to %struct.TYPE_13__*
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 8
  store i32 %120, i32* %123, align 8
  %124 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %125 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %128 = bitcast %union.ctl_ha_msg* %127 to %struct.TYPE_13__*
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 7
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %131 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %134 = bitcast %union.ctl_ha_msg* %133 to %struct.TYPE_13__*
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 6
  store i32 %132, i32* %135, align 8
  store i32 0, i32* %5, align 4
  %136 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %137 = bitcast %union.ctl_ha_msg* %136 to %struct.TYPE_13__*
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %144 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %147 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @sprintf(i32* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %145, i8* %148)
  %150 = add nsw i64 %149, 1
  %151 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %152 = bitcast %union.ctl_ha_msg* %151 to %struct.TYPE_13__*
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 5
  store i64 %150, i64* %153, align 8
  %154 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %155 = bitcast %union.ctl_ha_msg* %154 to %struct.TYPE_13__*
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %5, align 4
  %162 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %163 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %93
  %167 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %168 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = trunc i64 %171 to i32
  %173 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %174 = bitcast %union.ctl_ha_msg* %173 to %struct.TYPE_13__*
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %177 = bitcast %union.ctl_ha_msg* %176 to %struct.TYPE_13__*
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %184 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %187 = bitcast %union.ctl_ha_msg* %186 to %struct.TYPE_13__*
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @memcpy(i32* %182, i32 %185, i32 %189)
  %191 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %192 = bitcast %union.ctl_ha_msg* %191 to %struct.TYPE_13__*
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %166, %93
  %198 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %199 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %198, i32 0, i32 5
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = icmp ne %struct.TYPE_10__* %200, null
  br i1 %201, label %202, label %234

202:                                              ; preds = %197
  %203 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %204 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %203, i32 0, i32 5
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %209 = bitcast %union.ctl_ha_msg* %208 to %struct.TYPE_13__*
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 4
  %211 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %212 = bitcast %union.ctl_ha_msg* %211 to %struct.TYPE_13__*
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %219 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %218, i32 0, i32 5
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %224 = bitcast %union.ctl_ha_msg* %223 to %struct.TYPE_13__*
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @memcpy(i32* %217, i32 %222, i32 %226)
  %228 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %229 = bitcast %union.ctl_ha_msg* %228 to %struct.TYPE_13__*
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %202, %197
  %235 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %236 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %235, i32 0, i32 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = icmp ne %struct.TYPE_11__* %237, null
  br i1 %238, label %239, label %271

239:                                              ; preds = %234
  %240 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %241 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %240, i32 0, i32 4
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %246 = bitcast %union.ctl_ha_msg* %245 to %struct.TYPE_13__*
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 2
  store i32 %244, i32* %247, align 8
  %248 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %249 = bitcast %union.ctl_ha_msg* %248 to %struct.TYPE_13__*
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %256 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %255, i32 0, i32 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %261 = bitcast %union.ctl_ha_msg* %260 to %struct.TYPE_13__*
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @memcpy(i32* %254, i32 %259, i32 %263)
  %265 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %266 = bitcast %union.ctl_ha_msg* %265 to %struct.TYPE_13__*
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %239, %234
  %272 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %273 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %272, i32 0, i32 3
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = icmp ne %struct.TYPE_12__* %274, null
  br i1 %275, label %276, label %308

276:                                              ; preds = %271
  %277 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %278 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %277, i32 0, i32 3
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %283 = bitcast %union.ctl_ha_msg* %282 to %struct.TYPE_13__*
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 3
  store i32 %281, i32* %284, align 4
  %285 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %286 = bitcast %union.ctl_ha_msg* %285 to %struct.TYPE_13__*
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load %struct.ctl_port*, %struct.ctl_port** %2, align 8
  %293 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %292, i32 0, i32 3
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %298 = bitcast %union.ctl_ha_msg* %297 to %struct.TYPE_13__*
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @memcpy(i32* %291, i32 %296, i32 %300)
  %302 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %303 = bitcast %union.ctl_ha_msg* %302 to %struct.TYPE_13__*
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %5, align 4
  br label %308

308:                                              ; preds = %276, %271
  %309 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %310 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %311 = bitcast %union.ctl_ha_msg* %310 to %struct.TYPE_13__*
  %312 = load i32, i32* %5, align 4
  %313 = sext i32 %312 to i64
  %314 = add i64 48, %313
  %315 = trunc i64 %314 to i32
  %316 = load i32, i32* @M_WAITOK, align 4
  %317 = call i32 @ctl_ha_msg_send(i32 %309, %struct.TYPE_13__* %311, i32 %315, i32 %316)
  %318 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %319 = load i32, i32* @M_CTL, align 4
  %320 = call i32 @free(%union.ctl_ha_msg* %318, i32 %319)
  br label %321

321:                                              ; preds = %308, %30
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %union.ctl_ha_msg* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @sprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @free(%union.ctl_ha_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
