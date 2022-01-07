; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_DoAliasing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_DoAliasing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i64, i64, i64, i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ip = type { i32, i32 }
%struct.sockaddr = type { i32 }

@IP_MAXPACKET = common dso_local global i32 0, align 4
@mip = common dso_local global %struct.TYPE_4__* null, align 8
@background = common dso_local global i64 0, align 8
@dynamicMode = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"read from divert socket failed\00", align 1
@DONT_KNOW = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@OUTPUT = common dso_local global i32 0, align 4
@INPUT = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Out \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"In  \00", align 1
@ninstance = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"{%s}\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"[TCP]  \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"[UDP]  \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"[ICMP] \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"[%d]    \00", align 1
@mla = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c" dropped.\0A\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"denied\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c" aliased to\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"           \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EMSGSIZE = common dso_local global i64 0, align 8
@icmpSock = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@logIpfwDenied = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"failed to write packet back\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @DoAliasing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoAliasing(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip*, align 8
  %14 = alloca [80 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @IP_MAXPACKET, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %44, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SetAliasAddressFromIfName(i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i64, i64* @background, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* @dynamicMode, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %26
  br label %48

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @sleep(i32 1)
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %26, label %48

48:                                               ; preds = %44, %36
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %2
  store i32 8, i32* %12, align 4
  %57 = load i32, i32* %3, align 4
  %58 = trunc i64 %18 to i32
  %59 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %60 = call i32 @recvfrom(i32 %57, i8* %20, i32 %58, i32 0, %struct.sockaddr* %59, i32* %12)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @EINTR, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 @Warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %63
  store i32 1, i32* %16, align 4
  br label %236

70:                                               ; preds = %56
  %71 = bitcast i8* %20 to %struct.ip*
  store %struct.ip* %71, %struct.ip** %13, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @DONT_KNOW, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @INADDR_ANY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @OUTPUT, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @INPUT, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %81
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i64, i64* @verbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @OUTPUT, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %95 = call i32 (i8*, ...) @printf(i8* %94)
  %96 = load i32, i32* @ninstance, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %98, %89
  %104 = load %struct.ip*, %struct.ip** %13, align 8
  %105 = getelementptr inbounds %struct.ip, %struct.ip* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %113 [
    i32 129, label %107
    i32 128, label %109
    i32 130, label %111
  ]

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %118

109:                                              ; preds = %103
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %118

111:                                              ; preds = %103
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %118

113:                                              ; preds = %103
  %114 = load %struct.ip*, %struct.ip** %13, align 8
  %115 = getelementptr inbounds %struct.ip, %struct.ip* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %111, %109, %107
  %119 = load %struct.ip*, %struct.ip** %13, align 8
  %120 = call i32 @PrintPacket(%struct.ip* %119)
  br label %121

121:                                              ; preds = %118, %86
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @OUTPUT, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @mla, align 4
  %127 = load i32, i32* @IP_MAXPACKET, align 4
  %128 = call i32 @LibAliasOut(i32 %126, i8* %20, i32 %127)
  br label %157

129:                                              ; preds = %121
  %130 = load i32, i32* @mla, align 4
  %131 = load i32, i32* @IP_MAXPACKET, align 4
  %132 = call i32 @LibAliasIn(i32 %130, i8* %20, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %129
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %136
  %142 = load i64, i64* @verbose, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.ip*, %struct.ip** %13, align 8
  %153 = load i32, i32* @LOG_WARNING, align 4
  %154 = call i32 @SyslogPacket(%struct.ip* %152, i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %155

155:                                              ; preds = %151, %146
  store i32 1, i32* %16, align 4
  br label %236

156:                                              ; preds = %136, %129
  br label %157

157:                                              ; preds = %156, %125
  %158 = load %struct.ip*, %struct.ip** %13, align 8
  %159 = getelementptr inbounds %struct.ip, %struct.ip* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ntohs(i32 %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @OUTPUT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %157
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = sub nsw i32 %166, %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %168, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %6, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %165, %157
  %180 = load i64, i64* @verbose, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %185 = load %struct.ip*, %struct.ip** %13, align 8
  %186 = call i32 @PrintPacket(%struct.ip* %185)
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %188

188:                                              ; preds = %182, %179
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %5, align 4
  %191 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %192 = call i32 @sendto(i32 %189, i8* %20, i32 %190, i32 0, %struct.sockaddr* %191, i32 8)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %235

196:                                              ; preds = %188
  %197 = load i64, i64* @errno, align 8
  %198 = load i64, i64* @EMSGSIZE, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %221

200:                                              ; preds = %196
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @OUTPUT, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, -1
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load i32, i32* @icmpSock, align 4
  %211 = bitcast i8* %20 to %struct.ip*
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %214, %217
  %219 = call i32 @SendNeedFragIcmp(i32 %210, %struct.ip* %211, i32 %218)
  br label %220

220:                                              ; preds = %209, %204, %200
  br label %234

221:                                              ; preds = %196
  %222 = load i64, i64* @errno, align 8
  %223 = load i64, i64* @EACCES, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load i64, i64* @logIpfwDenied, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %230 = call i32 @sprintf(i8* %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %231 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %232 = call i32 @Warn(i8* %231)
  br label %233

233:                                              ; preds = %228, %225, %221
  br label %234

234:                                              ; preds = %233, %220
  br label %235

235:                                              ; preds = %234, %188
  store i32 0, i32* %16, align 4
  br label %236

236:                                              ; preds = %235, %155, %69
  %237 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %16, align 4
  switch i32 %238, label %240 [
    i32 0, label %239
    i32 1, label %239
  ]

239:                                              ; preds = %236, %236
  ret void

240:                                              ; preds = %236
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetAliasAddressFromIfName(i32) #2

declare dso_local i32 @sleep(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @Warn(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @PrintPacket(%struct.ip*) #2

declare dso_local i32 @LibAliasOut(i32, i8*, i32) #2

declare dso_local i32 @LibAliasIn(i32, i8*, i32) #2

declare dso_local i32 @SyslogPacket(%struct.ip*, i32, i8*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @SendNeedFragIcmp(i32, %struct.ip*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
