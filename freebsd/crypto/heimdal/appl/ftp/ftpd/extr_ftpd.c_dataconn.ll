; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_dataconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_dataconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i64 }
%struct.timeval = type { i32, i64 }

@file_size = common dso_local global i64 0, align 8
@byte_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c" (%ld bytes)\00", align 1
@pdata = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't open data connection.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Opening %s mode data connection for '%s'%s.\00", align 1
@type = common dso_local global i64 0, align 8
@TYPE_A = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@data = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Using existing data connection for '%s'%s.\00", align 1
@usedefault = common dso_local global i32 0, align 4
@his_addr = common dso_local global %struct.TYPE_9__* null, align 8
@data_dest = common dso_local global %struct.TYPE_9__* null, align 8
@PF_UNSPEC = common dso_local global i32 0, align 4
@ctrl_addr = common dso_local global %struct.TYPE_11__* null, align 8
@data_source = common dso_local global %struct.TYPE_10__* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"unknown address\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Can't create data socket (%s,%d): %s.\00", align 1
@errno = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@swaitmax = common dso_local global i32 0, align 4
@swaitint = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Can't build data connection\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i8*)* @dataconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dataconn(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* @file_size, align 8
  store i64 0, i64* @byte_count, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @snprintf(i8* %22, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %27

25:                                               ; preds = %3
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %26, align 16
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* @pdata, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  store %struct.sockaddr* %31, %struct.sockaddr** %13, align 8
  store i32 4, i32* %16, align 4
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 15, i32* %32, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @pdata, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %36 = call i32 @accept_with_timeout(i32 %34, %struct.sockaddr* %35, i32* %16, %struct.timeval* %14)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = call i32 (i32, i8*, ...) @reply(i32 425, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @pdata, align 4
  %42 = call i32 @close(i32 %41)
  store i32 -1, i32* @pdata, align 4
  store i32* null, i32** %4, align 8
  br label %149

43:                                               ; preds = %30
  %44 = load i32, i32* @pdata, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* @pdata, align 4
  %47 = load i64, i64* @type, align 8
  %48 = load i64, i64* @TYPE_A, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %54 = call i32 (i32, i8*, ...) @reply(i32 150, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52, i8* %53)
  %55 = load i32, i32* @pdata, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32* @fdopen(i32 %55, i8* %56)
  store i32* %57, i32** %4, align 8
  br label %149

58:                                               ; preds = %27
  %59 = load i32, i32* @data, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %64 = call i32 (i32, i8*, ...) @reply(i32 125, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %62, i8* %63)
  store i32 1, i32* @usedefault, align 4
  %65 = load i32, i32* @data, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32* @fdopen(i32 %65, i8* %66)
  store i32* %67, i32** %4, align 8
  br label %149

68:                                               ; preds = %58
  %69 = load i32, i32* @usedefault, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @his_addr, align 8
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** @data_dest, align 8
  br label %73

73:                                               ; preds = %71, %68
  store i32 1, i32* @usedefault, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @data_dest, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @PF_UNSPEC, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctrl_addr, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32* @getdatasock(i8* %85, i32 %86)
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @data_source, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** @data_source, align 8
  %95 = call i32 @socket_get_address(%struct.TYPE_10__* %94)
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %97 = call i32* @inet_ntop(i32 %93, i32 %95, i8* %96, i32 256)
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %101 = call i32 @strlcpy(i8* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 256)
  br label %102

102:                                              ; preds = %99, %90
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** @data_source, align 8
  %105 = call i8* @socket_get_port(%struct.TYPE_10__* %104)
  %106 = load i64, i64* @errno, align 8
  %107 = call i8* @strerror(i64 %106)
  %108 = call i32 (i32, i8*, ...) @reply(i32 425, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %103, i8* %105, i8* %107)
  store i32* null, i32** %4, align 8
  br label %149

109:                                              ; preds = %84
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @fileno(i32* %110)
  store i32 %111, i32* @data, align 4
  br label %112

112:                                              ; preds = %127, %109
  %113 = load i32, i32* @data, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @data_dest, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** @data_dest, align 8
  %116 = call i32 @socket_sockaddr_size(%struct.TYPE_9__* %115)
  %117 = call i64 @connect(i32 %113, %struct.TYPE_9__* %114, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %112
  %120 = load i64, i64* @errno, align 8
  %121 = load i64, i64* @EADDRINUSE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @swaitmax, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i64, i64* @swaitint, align 8
  %129 = call i32 @sleep(i64 %128)
  %130 = load i64, i64* @swaitint, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  br label %112

135:                                              ; preds = %123, %119
  %136 = call i32 @perror_reply(i32 425, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @fclose(i32* %137)
  store i32 -1, i32* @data, align 4
  store i32* null, i32** %4, align 8
  br label %149

139:                                              ; preds = %112
  %140 = load i64, i64* @type, align 8
  %141 = load i64, i64* @TYPE_A, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %147 = call i32 (i32, i8*, ...) @reply(i32 150, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %144, i8* %145, i8* %146)
  %148 = load i32*, i32** %9, align 8
  store i32* %148, i32** %4, align 8
  br label %149

149:                                              ; preds = %139, %135, %102, %61, %43, %39
  %150 = load i32*, i32** %4, align 8
  ret i32* %150
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @accept_with_timeout(i32, %struct.sockaddr*, i32*, %struct.timeval*) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32* @getdatasock(i8*, i32) #1

declare dso_local i32* @inet_ntop(i32, i32, i8*, i32) #1

declare dso_local i32 @socket_get_address(%struct.TYPE_10__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @socket_get_port(%struct.TYPE_10__*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @connect(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @socket_sockaddr_size(%struct.TYPE_9__*) #1

declare dso_local i32 @sleep(i64) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
