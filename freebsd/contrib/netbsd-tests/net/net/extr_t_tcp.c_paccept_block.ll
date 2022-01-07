; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/net/extr_t_tcp.c_paccept_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/net/extr_t_tcp.c_paccept_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sigaction = type { i32, i64, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"expected connect to fail\00", align 1
@EISCONN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"connect failed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"paccept\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"fnctl\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"fl 0x%x != 0x%x\0A\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"fnctl setfl\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"fl non blocking after reset\00", align 1
@ding = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@EWOULDBLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @paccept_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paccept_block(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca %struct.sigaction, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = load i32, i32* @SOCK_NONBLOCK, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @socket(i32 %16, i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = call i32 @memset(%struct.sockaddr_in* %12, i32 0, i32 16)
  %27 = load i32, i32* @AF_INET, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = call i32 @htons(i32 0)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @INADDR_LOOPBACK, align 4
  %32 = call i32 @htonl(i32 %31)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %37 = call i32 @bind(i32 %35, %struct.sockaddr* %36, i32 16)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %25
  store i32 16, i32* %15, align 4
  %43 = load i32, i32* %5, align 4
  %44 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %45 = call i32 @getsockname(i32 %43, %struct.sockaddr* %44, i32* %15)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SOMAXCONN, align 4
  %53 = call i32 @listen(i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* @AF_INET, align 4
  %60 = load i32, i32* @SOCK_STREAM, align 4
  %61 = load i32, i32* @SOCK_NONBLOCK, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @socket(i32 %59, i32 %62, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i32, i32* %6, align 4
  %70 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @connect(i32 %69, %struct.sockaddr* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EINPROGRESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %68
  %80 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @SOCK_NONBLOCK, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 0, %85 ], [ %87, %86 ]
  %90 = call i32 @paccept(i32 %82, i32* null, i32* null, i32* null, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @connect(i32 %91, %struct.sockaddr* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load i64, i64* @errno, align 8
  %99 = load i64, i64* @EISCONN, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97, %88
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @SOCK_NONBLOCK, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ 0, %110 ], [ %112, %111 ]
  %115 = call i32 @paccept(i32 %107, i32* null, i32* null, i32* null, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %113
  br label %121

121:                                              ; preds = %120, %103
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %167

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @F_GETFL, align 4
  %127 = call i32 @fcntl(i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %124
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @O_RDWR, align 4
  %135 = load i32, i32* @O_NONBLOCK, align 4
  %136 = or i32 %134, %135
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @O_RDWR, align 4
  %141 = load i32, i32* @O_NONBLOCK, align 4
  %142 = or i32 %140, %141
  %143 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %138, %132
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @F_SETFL, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @O_NONBLOCK, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  %151 = call i32 @fcntl(i32 %145, i32 %146, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %144
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @F_GETFL, align 4
  %159 = call i32 @fcntl(i32 %157, i32 %158, i32 0)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @O_NONBLOCK, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %156
  br label %167

167:                                              ; preds = %166, %121
  %168 = load i32, i32* @ding, align 4
  %169 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 2
  store i32 %168, i32* %169, align 8
  %170 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 1
  store i64 0, i64* %170, align 8
  %171 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 0
  %172 = call i32 @sigemptyset(i32* %171)
  %173 = load i32, i32* @SIGALRM, align 4
  %174 = call i32 @sigaction(i32 %173, %struct.sigaction* %14, i32* null)
  %175 = call i32 @alarm(i32 1)
  %176 = load i32, i32* %7, align 4
  %177 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %178 = call i32 @read(i32 %176, i8* %177, i32 10)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %3, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %167
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %181, %167
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i64, i64* @errno, align 8
  %189 = load i64, i64* @EINTR, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %187, %184
  br label %204

194:                                              ; preds = %181
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, -1
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* @errno, align 8
  %199 = load i64, i64* @EWOULDBLOCK, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197, %194
  %202 = call i32 (i8*, ...) @FAIL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %197
  br label %204

204:                                              ; preds = %203, %193
  br label %212

205:                                              ; No predecessors!
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @close(i32 %206)
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @close(i32 %208)
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @close(i32 %210)
  br label %212

212:                                              ; preds = %205, %204
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @FAIL(i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @paccept(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
