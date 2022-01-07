; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_post_port_listener.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_post_port_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32*, i32, i32, i32, i64, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Connection to port %d forwarding to %.100s port %d requested.\00", align 1
@SSH_CHANNEL_RPORT_LISTENER = common dso_local global i64 0, align 8
@SSH_CHANNEL_OPENING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"forwarded-tcpip\00", align 1
@SSH_CHANNEL_RUNIX_LISTENER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"forwarded-streamlocal@openssh.com\00", align 1
@PORT_STREAMLOCAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"direct-streamlocal@openssh.com\00", align 1
@SSH_CHANNEL_DYNAMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"dynamic-tcpip\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"direct-tcpip\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ECONNABORTED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"accept: %.100s\00", align 1
@EMFILE = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_5__*, i32*, i32*)* @channel_post_port_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_post_port_listener(%struct.ssh* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @FD_ISSET(i32 %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %159

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %25, i32* %28, i64 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SSH_CHANNEL_RPORT_LISTENER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @SSH_CHANNEL_OPENING, align 4
  store i32 %39, i32* %12, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %68

40:                                               ; preds = %22
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SSH_CHANNEL_RUNIX_LISTENER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SSH_CHANNEL_OPENING, align 4
  store i32 %47, i32* %12, align 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %67

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PORT_STREAMLOCAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @SSH_CHANNEL_OPENING, align 4
  store i32 %55, i32* %12, align 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %66

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @SSH_CHANNEL_DYNAMIC, align 4
  store i32 %62, i32* %12, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @SSH_CHANNEL_OPENING, align 4
  store i32 %64, i32* %12, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %46
  br label %68

68:                                               ; preds = %67, %38
  store i32 4, i32* %13, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %73 = call i32 @accept(i32 %71, %struct.sockaddr* %72, i32* %13)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %68
  %77 = load i64, i64* @errno, align 8
  %78 = load i64, i64* @EINTR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EWOULDBLOCK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @ECONNABORTED, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* @errno, align 8
  %90 = call i32 @strerror(i64 %89)
  %91 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %84, %80, %76
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @EMFILE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @ENFILE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96, %92
  %101 = call i64 (...) @monotime()
  %102 = add nsw i64 %101, 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 6
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %100, %96
  br label %159

106:                                              ; preds = %68
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PORT_STREAMLOCAL, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @set_nodelay(i32 %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.ssh*, %struct.ssh** %5, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %14, align 8
  %128 = call %struct.TYPE_5__* @channel_new(%struct.ssh* %116, i8* %117, i32 %118, i32 %119, i32 %120, i32 -1, i32 %123, i32 %126, i32 0, i8* %127, i32 1)
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %9, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %115
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = call i32* @xstrdup(i32* %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i32* %147, i32** %149, align 8
  br label %150

150:                                              ; preds = %143, %115
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @SSH_CHANNEL_DYNAMIC, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load %struct.ssh*, %struct.ssh** %5, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 @port_open_helper(%struct.ssh* %155, %struct.TYPE_5__* %156, i8* %157)
  br label %159

159:                                              ; preds = %21, %105, %154, %150
  ret void
}

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @debug(i8*, i32, i32*, i64) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @monotime(...) #1

declare dso_local i32 @set_nodelay(i32) #1

declare dso_local %struct.TYPE_5__* @channel_new(%struct.ssh*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32* @xstrdup(i32*) #1

declare dso_local i32 @port_open_helper(%struct.ssh*, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
