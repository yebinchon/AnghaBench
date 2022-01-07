; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_dataconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_dataconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.sockunion = type { i64 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@file_size = common dso_local global i32 0, align 4
@byte_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c" (%jd bytes)\00", align 1
@pdata = common dso_local global i32 0, align 4
@ctrl_addr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Opening %s mode data connection for '%s'%s.\00", align 1
@type = common dso_local global i64 0, align 8
@TYPE_A = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't open data connection.\00", align 1
@data = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Using existing data connection for '%s'%s.\00", align 1
@usedefault = common dso_local global i32 0, align 4
@data_dest = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@his_addr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@data_source = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Can't create data socket (%s,%s): %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@swaitint = common dso_local global i64 0, align 8
@swaitmax = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't build data connection: %s.\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*)* @dataconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dataconn(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.sockunion, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* @file_size, align 4
  store i64 0, i64* @byte_count, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @snprintf(i8* %26, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %31

29:                                               ; preds = %3
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %30, align 16
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @pdata, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %31
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctrl_addr, i32 0, i32 0), align 4
  store i32 %35, i32* %14, align 4
  %36 = call i32 @FD_ZERO(i32* %18)
  %37 = load i32, i32* @pdata, align 4
  %38 = call i32 @FD_SET(i32 %37, i32* %18)
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 120, i32* %40, align 8
  %41 = load i32, i32* @pdata, align 4
  %42 = load i32, i32* @F_GETFL, align 4
  %43 = call i32 @fcntl(i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %15, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %53, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @pdata, align 4
  %47 = load i32, i32* @F_SETFL, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @O_NONBLOCK, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @fcntl(i32 %46, i32 %47, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %34
  br label %95

54:                                               ; preds = %45
  %55 = load i32, i32* @pdata, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i64 @select(i32 %56, i32* %18, i32* null, i32* null, %struct.timeval* %17)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @pdata, align 4
  %61 = bitcast %union.sockunion* %13 to %struct.sockaddr*
  %62 = call i32 @accept(i32 %60, %struct.sockaddr* %61, i32* %14)
  store i32 %62, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  br label %95

65:                                               ; preds = %59
  %66 = load i32, i32* @pdata, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* @pdata, align 4
  %69 = load i32, i32* @pdata, align 4
  %70 = load i32, i32* @F_GETFL, align 4
  %71 = call i32 @fcntl(i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %15, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %82, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @pdata, align 4
  %75 = load i32, i32* @F_SETFL, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @O_NONBLOCK, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @fcntl(i32 %74, i32 %75, i32 %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %73, %65
  br label %95

83:                                               ; preds = %73
  %84 = load i64, i64* @type, align 8
  %85 = load i64, i64* @TYPE_A, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %91 = call i32 (i32, i8*, ...) @reply(i32 150, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %88, i8* %89, i8* %90)
  %92 = load i32, i32* @pdata, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = call i32* @fdopen(i32 %92, i8* %93)
  store i32* %94, i32** %4, align 8
  br label %193

95:                                               ; preds = %82, %64, %53
  %96 = call i32 (i32, i8*, ...) @reply(i32 425, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* @pdata, align 4
  %98 = call i32 @close(i32 %97)
  store i32 -1, i32* @pdata, align 4
  store i32* null, i32** %4, align 8
  br label %193

99:                                               ; preds = %31
  %100 = load i32, i32* @data, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %105 = call i32 (i32, i8*, ...) @reply(i32 125, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %103, i8* %104)
  store i32 1, i32* @usedefault, align 4
  %106 = load i32, i32* @data, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = call i32* @fdopen(i32 %106, i8* %107)
  store i32* %108, i32** %4, align 8
  br label %193

109:                                              ; preds = %99
  %110 = load i32, i32* @usedefault, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_5__* @data_dest to i8*), i8* align 4 bitcast (%struct.TYPE_5__* @his_addr to i8*), i64 4, i1 false)
  br label %113

113:                                              ; preds = %112, %109
  store i32 1, i32* @usedefault, align 4
  br label %114

114:                                              ; preds = %172, %113
  %115 = load i8*, i8** %7, align 8
  %116 = call i32* @getdatasock(i8* %115)
  store i32* %116, i32** %9, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %147

119:                                              ; preds = %114
  %120 = load i32, i32* @NI_MAXHOST, align 4
  %121 = zext i32 %120 to i64
  %122 = call i8* @llvm.stacksave()
  store i8* %122, i8** %19, align 8
  %123 = alloca i8, i64 %121, align 16
  store i64 %121, i64* %20, align 8
  %124 = load i32, i32* @NI_MAXSERV, align 4
  %125 = zext i32 %124 to i64
  %126 = alloca i8, i64 %125, align 16
  store i64 %125, i64* %21, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @data_source, i32 0, i32 0), align 4
  %128 = sub i64 %121, 1
  %129 = trunc i64 %128 to i32
  %130 = sub i64 %125, 1
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* @NI_NUMERICHOST, align 4
  %133 = load i32, i32* @NI_NUMERICSERV, align 4
  %134 = or i32 %132, %133
  %135 = call i64 @getnameinfo(%struct.sockaddr* bitcast (%struct.TYPE_6__* @data_source to %struct.sockaddr*), i32 %127, i8* %123, i32 %129, i8* %126, i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %119
  store i8 0, i8* %126, align 16
  store i8 0, i8* %123, align 16
  br label %138

138:                                              ; preds = %137, %119
  %139 = sub i64 %121, 1
  %140 = getelementptr inbounds i8, i8* %123, i64 %139
  store i8 0, i8* %140, align 1
  %141 = sub i64 %125, 1
  %142 = getelementptr inbounds i8, i8* %126, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load i32, i32* @errno, align 4
  %144 = call i8* @strerror(i32 %143)
  %145 = call i32 (i32, i8*, ...) @reply(i32 425, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %123, i8* %126, i8* %144)
  store i32* null, i32** %4, align 8
  %146 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %146)
  br label %193

147:                                              ; preds = %114
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @fileno(i32* %148)
  store i32 %149, i32* @data, align 4
  store i32 0, i32* %12, align 4
  %150 = load i32, i32* @data, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @data_dest, i32 0, i32 0), align 4
  %152 = call i64 @connect(i32 %150, %struct.sockaddr* bitcast (%struct.TYPE_5__* @data_dest to %struct.sockaddr*), i32 %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %176

155:                                              ; preds = %147
  %156 = load i32, i32* @errno, align 4
  store i32 %156, i32* %12, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 @fclose(i32* %157)
  store i32 -1, i32* @data, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @EADDRINUSE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %155
  %163 = load i64, i64* @swaitint, align 8
  %164 = call i32 @sleep(i64 %163)
  %165 = load i64, i64* @swaitint, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %10, align 4
  br label %171

170:                                              ; preds = %155
  br label %176

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @swaitmax, align 4
  %175 = icmp sle i32 %173, %174
  br i1 %175, label %114, label %176

176:                                              ; preds = %172, %170, %154
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %12, align 4
  %181 = call i8* @strerror(i32 %180)
  %182 = call i32 (i32, i8*, ...) @reply(i32 425, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %181)
  store i32* null, i32** %4, align 8
  br label %193

183:                                              ; preds = %176
  %184 = load i64, i64* @type, align 8
  %185 = load i64, i64* @TYPE_A, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %189 = load i8*, i8** %5, align 8
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %191 = call i32 (i32, i8*, ...) @reply(i32 150, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %188, i8* %189, i8* %190)
  %192 = load i32*, i32** %9, align 8
  store i32* %192, i32** %4, align 8
  br label %193

193:                                              ; preds = %183, %179, %138, %102, %95, %83
  %194 = load i32*, i32** %4, align 8
  ret i32* %194
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @getdatasock(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
