; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-transfer.c_tftp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-transfer.c_tftp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.tftp_stats = type { i32, i32, i32, i64, i32 }
%struct.tftphdr = type { i64, i32 }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_SIMPLE = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sending block %d\00", align 1
@segsize = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"read_file returned %d\00", align 1
@errno = common dso_local global i64 0, align 8
@maxtimeouts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot send DATA packet #%d, giving up\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Cannot send DATA packet #%d, trying again\00", align 1
@timeoutpacket = common dso_local global i32 0, align 4
@RP_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Timeout #%d send ACK %d giving up\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Timeout #%d on ACK %d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Aborting: %s\00", align 1
@ACK = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_2__* null, align 8
@OPT_ROLLOVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tftp_send(i32 %0, i32* %1, %struct.tftp_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tftp_stats*, align 8
  %7 = alloca %struct.tftphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.tftp_stats* %2, %struct.tftp_stats** %6, align 8
  %17 = load i32, i32* @MAXPKTSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @MAXPKTSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = bitcast i8* %23 to %struct.tftphdr*
  store %struct.tftphdr* %24, %struct.tftphdr** %7, align 8
  %25 = load i32*, i32** %5, align 8
  store i32 1, i32* %25, align 4
  %26 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %27 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %192, %3
  %29 = load i32, i32* @debug, align 4
  %30 = load i32, i32* @DEBUG_SIMPLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @LOG_DEBUG, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @segsize, align 4
  %40 = call i32 @read_file(i8* %20, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i64, i64* @errno, align 8
  %49 = add nsw i64 %48, 100
  %50 = call i32 @send_error(i32 %47, i64 %49)
  br label %197

51:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %153, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @send_data(i32 %53, i32 %55, i8* %20, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @maxtimeouts, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @LOG_ERR, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  store i32 1, i32* %16, align 4
  br label %198

69:                                               ; preds = %60
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %153

74:                                               ; preds = %52
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MAXPKTSIZE, align 4
  %77 = load i32, i32* @timeoutpacket, align 4
  %78 = call i32 @receive_packet(i32 %75, i8* %23, i32 %76, i32* null, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @RP_TIMEOUT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @maxtimeouts, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* @LOG_ERR, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %93)
  store i32 1, i32* %16, align 4
  br label %198

95:                                               ; preds = %85
  %96 = load i32, i32* @LOG_WARNING, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %99)
  br label %153

101:                                              ; preds = %81
  %102 = load i32, i32* @debug, align 4
  %103 = load i32, i32* @DEBUG_SIMPLE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @LOG_ERR, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @rp_strerror(i32 %108)
  %110 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %106, %101
  br label %197

112:                                              ; preds = %74
  %113 = load %struct.tftphdr*, %struct.tftphdr** %7, align 8
  %114 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ACK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %112
  %119 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %120 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.tftphdr*, %struct.tftphdr** %7, align 8
  %124 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %118
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %133 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %156

136:                                              ; preds = %118
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @synchnet(i32 %137)
  %139 = load %struct.tftphdr*, %struct.tftphdr** %7, align 8
  %140 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %148 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %153

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151, %112
  br label %153

153:                                              ; preds = %152, %146, %95, %69
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %52

156:                                              ; preds = %129
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %12, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %162, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %156
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %168 = load i64, i64* @OPT_ROLLOVER, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32*, i32** %5, align 8
  store i32 0, i32* %174, align 4
  br label %183

175:                                              ; preds = %166
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %177 = load i64, i64* @OPT_ROLLOVER, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @atoi(i32* %180)
  %182 = load i32*, i32** %5, align 8
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %175, %173
  %184 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %185 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %183, %156
  %189 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %190 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %189, i32 0, i32 0
  %191 = call i32 @gettimeofday(i32* %190, i32* null)
  br label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @segsize, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %28, label %196

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196, %111, %43
  store i32 1, i32* %16, align 4
  br label %198

198:                                              ; preds = %197, %89, %64
  %199 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %199)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tftp_log(i32, i8*, i32, ...) #2

declare dso_local i32 @read_file(i8*, i32) #2

declare dso_local i32 @send_error(i32, i64) #2

declare dso_local i32 @send_data(i32, i32, i8*, i32) #2

declare dso_local i32 @receive_packet(i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @rp_strerror(i32) #2

declare dso_local i32 @synchnet(i32) #2

declare dso_local i32 @atoi(i32*) #2

declare dso_local i32 @gettimeofday(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
