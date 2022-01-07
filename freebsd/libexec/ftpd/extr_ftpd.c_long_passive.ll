; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_long_passive.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_long_passive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr = type { i32 }

@pdata = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@ctrl_addr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"EPSV\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Network protocol mismatch, use (%d)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Network protocol mismatch.\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't open passive connection\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"pdata setsockopt (SO_REUSEADDR): %m\00", align 1
@pasv_addr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@pw = common dso_local global %struct.TYPE_9__* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"LPSV\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Entering Long Passive Mode (%d,%d,%d,%d,%d,%d,%d,%d,%d)\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"Entering Long Passive Mode (%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d)\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Entering Extended Passive Mode (|||%d|)\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_PORTRANGE = common dso_local global i32 0, align 4
@IPV6_PORTRANGE_DEFAULT = common dso_local global i32 0, align 4
@IPV6_PORTRANGE_HIGH = common dso_local global i32 0, align 4
@IP_PORTRANGE = common dso_local global i32 0, align 4
@IP_PORTRANGE_DEFAULT = common dso_local global i32 0, align 4
@IP_PORTRANGE_HIGH = common dso_local global i32 0, align 4
@restricted_data_ports = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @long_passive(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @pdata, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @pdata, align 4
  %13 = call i32 @close(i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PF_UNSPEC, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctrl_addr, i32 0, i32 0), align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctrl_addr, i32 0, i32 0), align 8
  switch i32 %23, label %26 [
    i32 129, label %24
    i32 128, label %25
  ]

24:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %27

25:                                               ; preds = %22
  store i32 2, i32* %4, align 4
  br label %27

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %24
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @reply(i32 522, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %39

37:                                               ; preds = %31, %27
  %38 = call i32 (i32, i8*, ...) @reply(i32 501, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  br label %241

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctrl_addr, i32 0, i32 0), align 8
  %43 = load i32, i32* @SOCK_STREAM, align 4
  %44 = call i32 @socket(i32 %42, i32 %43, i32 0)
  store i32 %44, i32* @pdata, align 4
  %45 = load i32, i32* @pdata, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @perror_reply(i32 425, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %241

49:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  %50 = load i32, i32* @pdata, align 4
  %51 = load i32, i32* @SOL_SOCKET, align 4
  %52 = load i32, i32* @SO_REUSEADDR, align 4
  %53 = call i64 @setsockopt(i32 %50, i32 %51, i32 %52, i32* %6, i32 4)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @LOG_WARNING, align 4
  %57 = call i32 @syslog(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  %59 = call i32 @seteuid(i32 0)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_10__* @pasv_addr to i8*), i8* align 8 bitcast (%struct.TYPE_10__* @ctrl_addr to i8*), i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 1), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 4), align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @pdata, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @bind(i32 %61, %struct.sockaddr* bitcast (%struct.TYPE_10__* @pasv_addr to %struct.sockaddr*), i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %233

66:                                               ; preds = %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pw, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @seteuid(i32 %69)
  %71 = load i32, i32* @pdata, align 4
  %72 = call i64 @getsockname(i32 %71, %struct.sockaddr* bitcast (%struct.TYPE_10__* @pasv_addr to %struct.sockaddr*), i32* %5)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %233

75:                                               ; preds = %66
  %76 = load i32, i32* @pdata, align 4
  %77 = call i64 @listen(i32 %76, i32 1)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %233

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %219

84:                                               ; preds = %80
  store i8* bitcast (i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 1) to i8*), i8** %7, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 0), align 8
  switch i32 %85, label %218 [
    i32 129, label %86
    i32 128, label %119
  ]

86:                                               ; preds = %84
  store i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 3, i32 0) to i8*), i8** %8, align 8
  br label %87

87:                                               ; preds = %122, %86
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = and i32 %91, 255
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %96, 255
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = and i32 %101, 255
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %106, 255
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 255
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = and i32 %116, 255
  %118 = call i32 (i32, i8*, ...) @reply(i32 228, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 4, i32 4, i32 %92, i32 %97, i32 %102, i32 %107, i32 2, i32 %112, i32 %117)
  br label %241

119:                                              ; preds = %84
  %120 = call i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 2, i32 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 2, i32 0, i32 0), align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 12
  %125 = bitcast i32* %124 to i8*
  store i8* %125, i8** %8, align 8
  br label %87

126:                                              ; preds = %119
  store i8* bitcast (%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 2, i32 0) to i8*), i8** %8, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = and i32 %130, 255
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = and i32 %135, 255
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = and i32 %140, 255
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 3
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = and i32 %145, 255
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 4
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = and i32 %150, 255
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 5
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = and i32 %155, 255
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 6
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = and i32 %160, 255
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 7
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = and i32 %165, 255
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = and i32 %170, 255
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 9
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = and i32 %175, 255
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 10
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = and i32 %180, 255
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 11
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = and i32 %185, 255
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 12
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = and i32 %190, 255
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 13
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = and i32 %195, 255
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 14
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = and i32 %200, 255
  %202 = load i8*, i8** %8, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 15
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = and i32 %205, 255
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = and i32 %210, 255
  %212 = load i8*, i8** %7, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = and i32 %215, 255
  %217 = call i32 (i32, i8*, ...) @reply(i32 228, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0), i32 6, i32 16, i32 %131, i32 %136, i32 %141, i32 %146, i32 %151, i32 %156, i32 %161, i32 %166, i32 %171, i32 %176, i32 %181, i32 %186, i32 %191, i32 %196, i32 %201, i32 %206, i32 2, i32 %211, i32 %216)
  br label %241

218:                                              ; preds = %84
  br label %232

219:                                              ; preds = %80
  %220 = load i8*, i8** %3, align 8
  %221 = call i64 @strcmp(i8* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 0), align 8
  switch i32 %224, label %229 [
    i32 129, label %225
    i32 128, label %225
  ]

225:                                              ; preds = %223, %223
  %226 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pasv_addr, i32 0, i32 1), align 8
  %227 = call i32 @ntohs(i64 %226)
  %228 = call i32 (i32, i8*, ...) @reply(i32 229, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %227)
  br label %241

229:                                              ; preds = %223
  br label %231

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %229
  br label %232

232:                                              ; preds = %231, %218
  br label %233

233:                                              ; preds = %232, %79, %74, %65
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pw, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @seteuid(i32 %236)
  %238 = load i32, i32* @pdata, align 4
  %239 = call i32 @close(i32 %238)
  store i32 -1, i32* @pdata, align 4
  %240 = call i32 @perror_reply(i32 425, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %241

241:                                              ; preds = %233, %225, %126, %87, %47, %39
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @seteuid(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_11__*) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
