; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type opaque
%struct.sockaddr_storage = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"getsockname(%s)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"getpeername(%s)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"socket closed\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"unexpected EOF from %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Error from rshd at %s:\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sock_debug = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"setsockopt remote\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"setsockopt stderr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i8*, i8*, i64, i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)*)* @proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8, align 1
  %24 = alloca %struct.sockaddr_storage, align 4
  %25 = alloca %struct.sockaddr*, align 8
  %26 = alloca %struct.sockaddr_storage, align 4
  %27 = alloca %struct.sockaddr*, align 8
  %28 = alloca %struct.sockaddr_storage, align 4
  %29 = alloca %struct.sockaddr*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)* %7, i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)** %17, align 8
  %35 = load i32, i32* @BUFSIZ, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %19, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %20, align 8
  %39 = bitcast %struct.sockaddr_storage* %24 to %struct.sockaddr*
  store %struct.sockaddr* %39, %struct.sockaddr** %25, align 8
  %40 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr*
  store %struct.sockaddr* %40, %struct.sockaddr** %27, align 8
  %41 = bitcast %struct.sockaddr_storage* %28 to %struct.sockaddr*
  store %struct.sockaddr* %41, %struct.sockaddr** %29, align 8
  store i32 4, i32* %30, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %44 = call i64 @getsockname(i32 %42, %struct.sockaddr* %43, i32* %30)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

49:                                               ; preds = %8
  store i32 4, i32* %30, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8
  %52 = call i64 @getpeername(i32 %50, %struct.sockaddr* %51, i32* %30)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %151

60:                                               ; preds = %57
  store i32 4, i32* %30, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.sockaddr*, %struct.sockaddr** %29, align 8
  %63 = call i64 @getsockname(i32 %61, %struct.sockaddr* %62, i32* %30)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @listen(i32 %68, i32 1)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

73:                                               ; preds = %67
  store i8* %38, i8** %21, align 8
  %74 = load i8*, i8** %21, align 8
  %75 = trunc i64 %36 to i32
  %76 = load %struct.sockaddr*, %struct.sockaddr** %29, align 8
  %77 = call i32 @socket_get_port(%struct.sockaddr* %76)
  %78 = call i32 @ntohs(i32 %77)
  %79 = call i32 @snprintf(i8* %74, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = call i32 @strlen(i8* %38)
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %22, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i64, i64* %22, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @net_write(i32 %83, i8* %38, i32 %85)
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %22, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %73
  %91 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @close(i32 %92)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %149, %122, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @FD_SETSIZE, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @FD_SETSIZE, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %95
  %104 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  %106 = call i32 @FD_ZERO(i32* %33)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @FD_SET(i32 %107, i32* %33)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @FD_SET(i32 %109, i32* %33)
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i64 @max(i32 %111, i32 %112)
  %114 = add nsw i64 %113, 1
  %115 = call i32 @select(i64 %114, i32* %33, i32* null, i32* null, i32* null)
  store i32 %115, i32* %31, align 4
  %116 = load i32, i32* %31, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %105
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EINTR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %95

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @close(i32 %125)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

127:                                              ; preds = %105
  %128 = load i32, i32* %11, align 4
  %129 = call i64 @FD_ISSET(i32 %128, i32* %33)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @accept(i32 %132, i32* null, i32* null)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load i32, i32* %18, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

140:                                              ; preds = %131
  br label %150

141:                                              ; preds = %127
  %142 = load i32, i32* %10, align 4
  %143 = call i64 @FD_ISSET(i32 %142, i32* %33)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @close(i32 %147)
  store i32 -1, i32* %18, align 4
  br label %150

149:                                              ; preds = %141
  br label %95

150:                                              ; preds = %145, %140
  br label %158

151:                                              ; preds = %57
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @net_write(i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %154 = icmp ne i32 %153, 2
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

157:                                              ; preds = %151
  store i32 -1, i32* %18, align 4
  br label %158

158:                                              ; preds = %157, %150
  %159 = load i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)*, i32 (i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i8*, i8*, i64, i8*)** %17, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %162 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 %159(i32 %160, %struct.sockaddr* %161, %struct.sockaddr* %162, i8* %163, i8* %164, i8* %165, i64 %166, i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %158
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @close(i32 %171)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

173:                                              ; preds = %158
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @net_read(i32 %174, i8* %23, i32 1)
  store i32 %175, i32* %31, align 4
  %176 = load i32, i32* %31, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @close(i32 %180)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

182:                                              ; preds = %173
  %183 = load i32, i32* %31, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i8*, i8** %12, align 8
  %187 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %186)
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @close(i32 %188)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190
  %192 = load i8, i8* %23, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %191
  %196 = load i8*, i8** %12, align 8
  %197 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %203, %195
  %199 = load i32, i32* %10, align 4
  %200 = trunc i64 %36 to i32
  %201 = call i32 @read(i32 %199, i8* %38, i32 %200)
  store i32 %201, i32* %31, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* @STDOUT_FILENO, align 4
  %205 = load i32, i32* %31, align 4
  %206 = call i32 @write(i32 %204, i8* %38, i32 %205)
  br label %198

207:                                              ; preds = %198
  %208 = load i32, i32* @STDOUT_FILENO, align 4
  %209 = call i32 @write(i32 %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 1)
  %210 = load i32, i32* %18, align 4
  %211 = call i32 @close(i32 %210)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

212:                                              ; preds = %191
  %213 = load i64, i64* @sock_debug, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %212
  store i32 1, i32* %34, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @SOL_SOCKET, align 4
  %218 = load i32, i32* @SO_DEBUG, align 4
  %219 = bitcast i32* %34 to i8*
  %220 = call i64 @setsockopt(i32 %216, i32 %217, i32 %218, i8* %219, i32 4)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %215
  %225 = load i32, i32* %18, align 4
  %226 = icmp ne i32 %225, -1
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* @SOL_SOCKET, align 4
  %230 = load i32, i32* @SO_DEBUG, align 4
  %231 = bitcast i32* %34 to i8*
  %232 = call i64 @setsockopt(i32 %228, i32 %229, i32 %230, i8* %231, i32 4)
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %227, %224
  br label %237

237:                                              ; preds = %236, %212
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @rsh_loop(i32 %238, i32 %239)
  store i32 %240, i32* %9, align 4
  store i32 1, i32* %32, align 4
  br label %241

241:                                              ; preds = %237, %207, %185, %178, %170, %155, %138, %123, %90, %71, %65, %54, %46
  %242 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %9, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @socket_get_port(%struct.sockaddr*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @net_write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i64, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @max(i32, i32) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @accept(i32, i32*, i32*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @net_read(i32, i8*, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @rsh_loop(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
