; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_login.c_loginPhase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_login.c_loginPhase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ISCSI_LOGIN_CMD = common dso_local global i32 0, align 4
@FF_PHASE = common dso_local global i32 0, align 4
@SESS_INITIALLOGIN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SessionType=%s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"InitiatorName=%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Discovery\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TargetName=%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"AuthMethod=%s\00", align 1
@SESS_NEGODONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"MaxBurstLength=%d\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"HeaderDigest=%s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DataDigest=%s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"MaxRecvDataSegmentLength=%d\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ErrorRecoveryLevel=%d\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"DefaultTime2Wait=%d\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"DefaultTime2Retain=%d\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"DataPDUInOrder=%s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"DataSequenceInOrder=%s\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"MaxOutstandingR2T=%d\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"MaxConnections=%d\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"FirstBurstLength=%d\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"InitialR2T=%s\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"ImmediateData=%s\00", align 1
@handleLoginResp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loginPhase(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %5, align 8
  store i32 1, i32* %7, align 4
  %11 = call i32 @debug_called(i32 3)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = call i32 @bzero(%struct.TYPE_13__* %12, i32 4)
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load i32, i32* @ISCSI_LOGIN_CMD, align 4
  %18 = or i32 %17, 64
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %23, i32 %26, i32 6)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = call i32 @htons(i32 1)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = icmp eq i32 %38, 129
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i32, i32* @FF_PHASE, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  store i32 129, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SESS_INITIALLOGIN1, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %49
  %59 = load i32, i32* @SESS_INITIALLOGIN1, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @addText(%struct.TYPE_13__* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @addText(%struct.TYPE_13__* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %58
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @addText(%struct.TYPE_13__* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %80, %58
  br label %87

87:                                               ; preds = %86, %49
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %200 [
    i32 128, label %91
    i32 129, label %97
  ]

91:                                               ; preds = %87
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @addText(%struct.TYPE_13__* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  br label %200

97:                                               ; preds = %87
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SESS_NEGODONE, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %199

104:                                              ; preds = %97
  %105 = load i32, i32* @SESS_NEGODONE, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @addText(%struct.TYPE_13__* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @addText(%struct.TYPE_13__* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 6
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @addText(%struct.TYPE_13__* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 7
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @addText(%struct.TYPE_13__* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @addText(%struct.TYPE_13__* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 9
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @addText(%struct.TYPE_13__* %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 10
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @addText(%struct.TYPE_13__* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 17
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)
  %152 = call i32 @addText(%struct.TYPE_13__* %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 16
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)
  %160 = call i32 @addText(%struct.TYPE_13__* %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 11
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @addText(%struct.TYPE_13__* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @strcmp(i8* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %198

171:                                              ; preds = %104
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 12
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @addText(%struct.TYPE_13__* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %175)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 13
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @addText(%struct.TYPE_13__* %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %180)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 15
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)
  %189 = call i32 @addText(%struct.TYPE_13__* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %188)
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 14
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)
  %197 = call i32 @addText(%struct.TYPE_13__* %190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %171, %104
  br label %199

199:                                              ; preds = %198, %97
  br label %200

200:                                              ; preds = %87, %199, %91
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %202 = load i32, i32* @handleLoginResp, align 4
  %203 = call i32 @sendPDU(%struct.TYPE_15__* %201, %struct.TYPE_13__* %3, i32 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  switch i32 %204, label %214 [
    i32 0, label %205
  ]

205:                                              ; preds = %200
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 128
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %212 = call i32 @authenticate(%struct.TYPE_15__* %211)
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %210, %205
  br label %214

214:                                              ; preds = %213, %200
  %215 = load i32, i32* %7, align 4
  ret i32 %215
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @addText(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sendPDU(%struct.TYPE_15__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @authenticate(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
