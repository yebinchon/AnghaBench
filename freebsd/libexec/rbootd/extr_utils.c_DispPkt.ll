; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_utils.c_DispPkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_utils.c_DispPkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.rmp_packet, %struct.TYPE_11__ }
%struct.rmp_packet = type { i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.tm = type { i32, i32, i32 }

@DispPkt.BootFmt = internal constant [40 x i8] c"\09\09RetCode:%u SeqNo:%x SessID:%x Vers:%u\00", align 16
@DispPkt.ReadFmt = internal constant [34 x i8] c"\09\09RetCode:%u Offset:%x SessID:%x\0A\00", align 16
@SIGHUP = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@DbgFp = common dso_local global i32* null, align 8
@DIR_RCVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<<< \00", align 1
@DIR_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%02d:%02d:%02d.%06ld   \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Addr: %s   Intf: %s\0A\00", align 1
@IntfName = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"\09802.2 LLC: DSAP:%x SSAP:%x CTRL:%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\09HP Ext:    DXSAP:%x SXSAP:%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\09Boot Request:\00", align 1
@RMP_PROBESID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c" (Send Server ID)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c" (Send Filename #%u)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\0A\09\09Machine Type: \00", align 1
@RMP_MACHLEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"\09Boot Reply:\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\09Read Request:\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\09\09NoOfBytes: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\09Read Reply:\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"\09\09NoOfBytesSent: %zu\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\09Boot Complete:\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\09\09RetCode:%u SessID:%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\09Unknown Type:(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DispPkt(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.rmp_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @SIGHUP, align 4
  %11 = call i32 @sigmask(i32 %10)
  %12 = load i32, i32* @SIGUSR1, align 4
  %13 = call i32 @sigmask(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @SIGUSR2, align 4
  %16 = call i32 @sigmask(i32 %15)
  %17 = or i32 %14, %16
  %18 = call i32 @sigblock(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** @DbgFp, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @sigsetmask(i32 %22)
  br label %292

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DIR_RCVD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DIR_SENT, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  br label %35

35:                                               ; preds = %29, %28
  %36 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %28 ], [ %34, %29 ]
  %37 = load i32*, i32** @DbgFp, align 8
  %38 = call i32 @fputs(i8* %36, i32* %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = call %struct.tm* @localtime(i32* %41)
  store %struct.tm* %42, %struct.tm** %5, align 8
  %43 = load i32*, i32** @DbgFp, align 8
  %44 = load %struct.tm*, %struct.tm** %5, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tm*, %struct.tm** %5, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tm*, %struct.tm** %5, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %56)
  %58 = load i32*, i32** @DbgFp, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = call i8* @EnetStr(%struct.TYPE_18__* %59)
  %61 = load i8*, i8** @IntfName, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  store %struct.rmp_packet* %64, %struct.rmp_packet** %6, align 8
  %65 = load i32*, i32** @DbgFp, align 8
  %66 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %67 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %71 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %75 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ntohs(i32 %77)
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %73, i32 %78)
  %80 = load i32*, i32** @DbgFp, align 8
  %81 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %82 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  %86 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %87 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ntohs(i32 %89)
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %90)
  %92 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %93 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %279 [
    i32 130, label %95
    i32 131, label %175
    i32 128, label %209
    i32 129, label %237
    i32 132, label %265
  ]

95:                                               ; preds = %35
  %96 = load i32*, i32** @DbgFp, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %98 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %99 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @GETWORD(i32 %101, i32 %102)
  %104 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %105 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ntohs(i32 %107)
  %109 = load i32, i32* @RMP_PROBESID, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %95
  %112 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %113 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @WORDZE(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32*, i32** @DbgFp, align 8
  %120 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %119)
  br label %125

121:                                              ; preds = %111
  %122 = load i32*, i32** @DbgFp, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %121, %118
  br label %126

126:                                              ; preds = %125, %95
  %127 = load i32*, i32** @DbgFp, align 8
  %128 = call i32 @fputc(i8 signext 10, i32* %127)
  %129 = load i32*, i32** @DbgFp, align 8
  %130 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %131 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %136 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ntohs(i32 %138)
  %140 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %141 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ntohs(i32 %143)
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @DispPkt.BootFmt, i64 0, i64 0), i32 %133, i32 %134, i32 %139, i32 %144)
  %146 = load i32*, i32** @DbgFp, align 8
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %163, %126
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @RMP_MACHLEN, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %154 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = load i32*, i32** @DbgFp, align 8
  %162 = call i32 @fputc(i8 signext %160, i32* %161)
  br label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %148

166:                                              ; preds = %148
  %167 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %168 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %172 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = call i32 @DspFlnm(i32 %170, i32* %173)
  br label %285

175:                                              ; preds = %35
  %176 = load i32*, i32** @DbgFp, align 8
  %177 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %178 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %179 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @GETWORD(i32 %181, i32 %182)
  %184 = load i32*, i32** @DbgFp, align 8
  %185 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %186 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %191 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ntohs(i32 %193)
  %195 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %196 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ntohs(i32 %198)
  %200 = call i32 (i32*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @DispPkt.BootFmt, i64 0, i64 0), i32 %188, i32 %189, i32 %194, i32 %199)
  %201 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %202 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %206 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = call i32 @DspFlnm(i32 %204, i32* %207)
  br label %285

209:                                              ; preds = %35
  %210 = load i32*, i32** @DbgFp, align 8
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %212 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %213 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @GETWORD(i32 %215, i32 %216)
  %218 = load i32*, i32** @DbgFp, align 8
  %219 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %220 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %225 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @ntohs(i32 %227)
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @DispPkt.ReadFmt, i64 0, i64 0), i32 %222, i32 %223, i32 %228)
  %230 = load i32*, i32** @DbgFp, align 8
  %231 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %232 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @ntohs(i32 %234)
  %236 = call i32 (i32*, i8*, ...) @fprintf(i32* %230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %235)
  br label %285

237:                                              ; preds = %35
  %238 = load i32*, i32** @DbgFp, align 8
  %239 = call i32 (i32*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %240 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %241 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @GETWORD(i32 %243, i32 %244)
  %246 = load i32*, i32** @DbgFp, align 8
  %247 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %248 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %253 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @ntohs(i32 %255)
  %257 = call i32 (i32*, i8*, ...) @fprintf(i32* %246, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @DispPkt.ReadFmt, i64 0, i64 0), i32 %250, i32 %251, i32 %256)
  %258 = load i32*, i32** @DbgFp, align 8
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @RMPREADSIZE(i32 0)
  %263 = sub nsw i32 %261, %262
  %264 = call i32 (i32*, i8*, ...) @fprintf(i32* %258, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %263)
  br label %285

265:                                              ; preds = %35
  %266 = load i32*, i32** @DbgFp, align 8
  %267 = call i32 (i32*, i8*, ...) @fprintf(i32* %266, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %268 = load i32*, i32** @DbgFp, align 8
  %269 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %270 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %274 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ntohs(i32 %276)
  %278 = call i32 (i32*, i8*, ...) @fprintf(i32* %268, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %272, i32 %277)
  br label %285

279:                                              ; preds = %35
  %280 = load i32*, i32** @DbgFp, align 8
  %281 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %282 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i32*, i8*, ...) @fprintf(i32* %280, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %279, %265, %237, %209, %175, %166
  %286 = load i32*, i32** @DbgFp, align 8
  %287 = call i32 @fputc(i8 signext 10, i32* %286)
  %288 = load i32*, i32** @DbgFp, align 8
  %289 = call i32 @fflush(i32* %288)
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @sigsetmask(i32 %290)
  br label %292

292:                                              ; preds = %285, %21
  ret void
}

declare dso_local i32 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @sigsetmask(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @EnetStr(%struct.TYPE_18__*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @GETWORD(i32, i32) #1

declare dso_local i32 @WORDZE(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @DspFlnm(i32, i32*) #1

declare dso_local i32 @RMPREADSIZE(i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
