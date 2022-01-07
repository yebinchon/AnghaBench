; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_eprt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_eprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@usedefault = common dso_local global i64 0, align 8
@pdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Bad syntax in EPRT\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@data_dest = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Network protocol %d not supported, use (1)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Bad address syntax in EPRT\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Bad port syntax in EPRT\00", align 1
@IPPORT_RESERVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Bad port in invalid range in EPRT\00", align 1
@paranoid = common dso_local global i64 0, align 8
@his_addr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Bad address in EPRT\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"EPRT command successful.\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eprt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @usedefault, align 8
  %8 = load i32, i32* @pdata, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @pdata, align 4
  %12 = call i32 @close(i32 %11)
  store i32 -1, i32* @pdata, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  %16 = load i8, i8* %14, align 1
  store i8 %16, i8* %4, align 1
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (i32, i8*, ...) @reply(i32 500, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %118

22:                                               ; preds = %13
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @strtol(i8* %23, i8** %3, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %22
  %35 = call i32 (i32, i8*, ...) @reply(i32 500, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %118

36:                                               ; preds = %27
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %2, align 8
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %44 [
    i32 1, label %40
  ]

40:                                               ; preds = %36
  %41 = load i64, i64* @AF_INET, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_dest, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, ...) @reply(i32 522, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %118

47:                                               ; preds = %40
  %48 = load i8*, i8** %2, align 8
  %49 = load i8, i8* %4, align 1
  %50 = call i8* @strchr(i8* %48, i8 signext %49)
  store i8* %50, i8** %3, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 (i32, i8*, ...) @reply(i32 500, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %118

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  store i8 0, i8* %56, align 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_dest, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i8*, i8** %2, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_dest, align 8
  %62 = call i32 @socket_get_address(%struct.TYPE_6__* %61)
  %63 = call i32 @inet_pton(i64 %59, i8* %60, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = call i32 (i32, i8*, ...) @reply(i32 500, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %118

68:                                               ; preds = %55
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %2, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @strtol(i8* %71, i8** %3, i32 0)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* %4, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75, %68
  %83 = call i32 (i32, i8*, ...) @reply(i32 500, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %118

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @IPPORT_RESERVED, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i32, i8*, ...) @reply(i32 500, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %118

90:                                               ; preds = %84
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_dest, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @htons(i32 %92)
  %94 = call i32 @socket_set_port(%struct.TYPE_6__* %91, i32 %93)
  %95 = load i64, i64* @paranoid, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %90
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_dest, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @his_addr, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %114, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_dest, align 8
  %107 = call i32 @socket_get_address(%struct.TYPE_6__* %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @his_addr, align 8
  %109 = call i32 @socket_get_address(%struct.TYPE_6__* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data_dest, align 8
  %111 = call i32 @socket_sockaddr_size(%struct.TYPE_6__* %110)
  %112 = call i64 @memcmp(i32 %107, i32 %109, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105, %97
  %115 = call i32 (i32, i8*, ...) @reply(i32 500, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %105, %90
  %117 = call i32 (i32, i8*, ...) @reply(i32 200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %88, %82, %66, %53, %44, %34, %20
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton(i64, i8*, i32) #1

declare dso_local i32 @socket_get_address(%struct.TYPE_6__*) #1

declare dso_local i32 @socket_set_port(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @socket_sockaddr_size(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
