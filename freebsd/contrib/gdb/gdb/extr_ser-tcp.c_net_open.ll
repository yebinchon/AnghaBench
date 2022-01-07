; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-tcp.c_net_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-tcp.c_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i64 }
%struct.hostent = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"udp:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tcp:\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"net_open: No colon in host name!\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@gdb_stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: unknown host\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@POLL_INTERVAL = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*, i8*)* @net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_open(%struct.serial* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca %struct.timeval, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %11, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  store i8* %26, i8** %5, align 8
  br label %35

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 58)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @min(i32 %48, i32 99)
  store i32 %49, i32* %10, align 4
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @strncpy(i8* %50, i8* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 @atoi(i8* %58)
  store i32 %59, i32* %9, align 4
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %42
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %42
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %68 = call %struct.hostent* @gethostbyname(i8* %67)
  store %struct.hostent* %68, %struct.hostent** %12, align 8
  %69 = load %struct.hostent*, %struct.hostent** %12, align 8
  %70 = icmp ne %struct.hostent* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @gdb_stderr, align 4
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %74 = call i32 @fprintf_unfiltered(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @ENOENT, align 4
  store i32 %75, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %233

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* @PF_INET, align 4
  %81 = load i32, i32* @SOCK_DGRAM, align 4
  %82 = call i8* @socket(i32 %80, i32 %81, i32 0)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.serial*, %struct.serial** %4, align 8
  %85 = getelementptr inbounds %struct.serial, %struct.serial* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %93

86:                                               ; preds = %76
  %87 = load i32, i32* @PF_INET, align 4
  %88 = load i32, i32* @SOCK_STREAM, align 4
  %89 = call i8* @socket(i32 %87, i32 %88, i32 0)
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.serial*, %struct.serial** %4, align 8
  %92 = getelementptr inbounds %struct.serial, %struct.serial* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.serial*, %struct.serial** %4, align 8
  %95 = getelementptr inbounds %struct.serial, %struct.serial* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 -1, i32* %3, align 4
  br label %233

99:                                               ; preds = %93
  %100 = load i32, i32* @PF_INET, align 4
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @htons(i32 %102)
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load %struct.hostent*, %struct.hostent** %12, align 8
  %108 = getelementptr inbounds %struct.hostent, %struct.hostent* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memcpy(i32* %106, i32 %109, i32 4)
  store i32 1, i32* %10, align 4
  %111 = load %struct.serial*, %struct.serial** %4, align 8
  %112 = getelementptr inbounds %struct.serial, %struct.serial* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @FIONBIO, align 4
  %115 = call i32 @ioctl(i64 %113, i32 %114, i32* %10)
  %116 = load %struct.serial*, %struct.serial** %4, align 8
  %117 = getelementptr inbounds %struct.serial, %struct.serial* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %120 = call i32 @connect(i64 %118, %struct.sockaddr* %119, i32 12)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %99
  %124 = load i32, i32* @errno, align 4
  %125 = load i32, i32* @EINPROGRESS, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.serial*, %struct.serial** %4, align 8
  %129 = call i32 @net_close(%struct.serial* %128)
  store i32 -1, i32* %3, align 4
  br label %233

130:                                              ; preds = %123, %99
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %193

133:                                              ; preds = %130
  store i32 0, i32* %17, align 4
  %134 = call i32 @FD_ZERO(i32* %15)
  br label %135

135:                                              ; preds = %170, %133
  br i1 true, label %136, label %144

136:                                              ; preds = %135
  %137 = call i64 @ui_loop_hook(i32 0)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* @EINTR, align 4
  store i32 %140, i32* @errno, align 4
  %141 = load %struct.serial*, %struct.serial** %4, align 8
  %142 = call i32 @net_close(%struct.serial* %141)
  store i32 -1, i32* %3, align 4
  br label %233

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %135
  %145 = load %struct.serial*, %struct.serial** %4, align 8
  %146 = getelementptr inbounds %struct.serial, %struct.serial* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @FD_SET(i64 %147, i32* %15)
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %16, align 4
  %150 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* @POLL_INTERVAL, align 4
  %152 = sdiv i32 1000000, %151
  %153 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %152, i32* %153, align 8
  %154 = load %struct.serial*, %struct.serial** %4, align 8
  %155 = getelementptr inbounds %struct.serial, %struct.serial* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  %158 = call i32 @select(i64 %157, i32* %15, i32* %16, i32* null, %struct.timeval* %14)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %144
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* @TIMEOUT, align 4
  %167 = load i32, i32* @POLL_INTERVAL, align 4
  %168 = mul nsw i32 %166, %167
  %169 = icmp sle i32 %165, %168
  br label %170

170:                                              ; preds = %164, %161
  %171 = phi i1 [ false, %161 ], [ %169, %164 ]
  br i1 %171, label %135, label %172

172:                                              ; preds = %170
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @TIMEOUT, align 4
  %178 = load i32, i32* @POLL_INTERVAL, align 4
  %179 = mul nsw i32 %177, %178
  %180 = icmp sgt i32 %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* @TIMEOUT, align 4
  %184 = load i32, i32* @POLL_INTERVAL, align 4
  %185 = mul nsw i32 %183, %184
  %186 = icmp sgt i32 %182, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %188, i32* @errno, align 4
  br label %189

189:                                              ; preds = %187, %181
  %190 = load %struct.serial*, %struct.serial** %4, align 8
  %191 = call i32 @net_close(%struct.serial* %190)
  store i32 -1, i32* %3, align 4
  br label %233

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192, %130
  store i32 4, i32* %20, align 4
  %194 = load %struct.serial*, %struct.serial** %4, align 8
  %195 = getelementptr inbounds %struct.serial, %struct.serial* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* @SOL_SOCKET, align 4
  %198 = load i32, i32* @SO_ERROR, align 4
  %199 = call i32 @getsockopt(i64 %196, i32 %197, i32 %198, i32* %19, i32* %20)
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %18, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %19, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %202, %193
  %206 = load i32, i32* %19, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* @errno, align 4
  br label %210

210:                                              ; preds = %208, %205
  %211 = load %struct.serial*, %struct.serial** %4, align 8
  %212 = call i32 @net_close(%struct.serial* %211)
  store i32 -1, i32* %3, align 4
  br label %233

213:                                              ; preds = %202
  store i32 0, i32* %10, align 4
  %214 = load %struct.serial*, %struct.serial** %4, align 8
  %215 = getelementptr inbounds %struct.serial, %struct.serial* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* @FIONBIO, align 4
  %218 = call i32 @ioctl(i64 %216, i32 %217, i32* %10)
  %219 = load i32, i32* %11, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %213
  store i32 1, i32* %10, align 4
  %222 = load %struct.serial*, %struct.serial** %4, align 8
  %223 = getelementptr inbounds %struct.serial, %struct.serial* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @IPPROTO_TCP, align 4
  %226 = load i32, i32* @TCP_NODELAY, align 4
  %227 = bitcast i32* %10 to i8*
  %228 = call i32 @setsockopt(i64 %224, i32 %225, i32 %226, i8* %227, i32 4)
  br label %229

229:                                              ; preds = %221, %213
  %230 = load i32, i32* @SIGPIPE, align 4
  %231 = load i32, i32* @SIG_IGN, align 4
  %232 = call i32 @signal(i32 %230, i32 %231)
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %229, %210, %189, %139, %127, %98, %71
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ioctl(i64, i32, i32*) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @net_close(%struct.serial*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @ui_loop_hook(i32) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @getsockopt(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
