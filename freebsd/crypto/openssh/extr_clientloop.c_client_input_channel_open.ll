; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_input_channel_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_input_channel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [59 x i8] c"client_input_channel_open: ctype %s rchan %d win %d max %d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"forwarded-tcpip\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"forwarded-streamlocal@openssh.com\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"x11\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"auth-agent@openssh.com\00", align 1
@SSH_CHANNEL_MUX_CLIENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"proxied to downstream: %s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"confirm %s\00", align 1
@SSH_CHANNEL_CONNECTING = common dso_local global i64 0, align 8
@SSH2_MSG_CHANNEL_OPEN_CONFIRMATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"failure %s\00", align 1
@SSH2_MSG_CHANNEL_OPEN_FAILURE = common dso_local global i32 0, align 4
@SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @client_input_channel_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_input_channel_open(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %13 = call i8* @packet_get_string(i8** %12)
  store i8* %13, i8** %8, align 8
  %14 = call i8* (...) @packet_get_int()
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = call i8* (...) @packet_get_int()
  store i8* %16, i8** %11, align 8
  %17 = call i8* (...) @packet_get_int()
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19, i8* %20, i8* %21)
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.ssh*, %struct.ssh** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call %struct.TYPE_6__* @client_request_forwarded_tcpip(%struct.ssh* %27, i8* %28, i32 %29, i8* %30, i8* %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %7, align 8
  br label %63

33:                                               ; preds = %3
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.ssh*, %struct.ssh** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.TYPE_6__* @client_request_forwarded_streamlocal(%struct.ssh* %38, i8* %39, i32 %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %7, align 8
  br label %62

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.ssh*, %struct.ssh** %6, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.TYPE_6__* @client_request_x11(%struct.ssh* %47, i8* %48, i32 %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %7, align 8
  br label %61

51:                                               ; preds = %42
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.ssh*, %struct.ssh** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.TYPE_6__* @client_request_agent(%struct.ssh* %56, i8* %57, i32 %58)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %7, align 8
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SSH_CHANNEL_MUX_CLIENT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @debug3(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  br label %131

75:                                               ; preds = %66, %63
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, null
  br i1 %77, label %78, label %118

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SSH_CHANNEL_CONNECTING, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %78
  %98 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN_CONFIRMATION, align 4
  %99 = call i32 @packet_start(i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @packet_put_int(i32 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @packet_put_int(i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @packet_put_int(i32 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @packet_put_int(i32 %114)
  %116 = call i32 (...) @packet_send()
  br label %117

117:                                              ; preds = %97, %78
  br label %130

118:                                              ; preds = %75
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN_FAILURE, align 4
  %122 = call i32 @packet_start(i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @packet_put_int(i32 %123)
  %125 = load i32, i32* @SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED, align 4
  %126 = call i32 @packet_put_int(i32 %125)
  %127 = call i32 @packet_put_cstring(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %128 = call i32 @packet_put_cstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %129 = call i32 (...) @packet_send()
  br label %130

130:                                              ; preds = %118, %117
  br label %131

131:                                              ; preds = %130, %72
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @free(i8* %132)
  ret i32 0
}

declare dso_local i8* @packet_get_string(i8**) #1

declare dso_local i8* @packet_get_int(...) #1

declare dso_local i32 @debug(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @client_request_forwarded_tcpip(%struct.ssh*, i8*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @client_request_forwarded_streamlocal(%struct.ssh*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @client_request_x11(%struct.ssh*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @client_request_agent(%struct.ssh*, i8*, i32) #1

declare dso_local i32 @debug3(i8*, i8*) #1

declare dso_local i32 @packet_start(i32) #1

declare dso_local i32 @packet_put_int(i32) #1

declare dso_local i32 @packet_send(...) #1

declare dso_local i32 @packet_put_cstring(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
