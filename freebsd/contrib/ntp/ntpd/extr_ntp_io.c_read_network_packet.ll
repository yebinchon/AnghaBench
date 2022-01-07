; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_read_network_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_read_network_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i64, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.recvbuf = type { i32, i32, i32, i32, %struct.interface*, %struct.TYPE_5__, i32 }

@RX_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s on (%lu) fd=%d from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@packets_ignored = common dso_local global i32 0, align 4
@packets_dropped = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"recvfrom(%s) fd=%d: %m\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"read_network_packet: fd=%d dropped (bad recvfrom)\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"read_network_packet: fd=%d length %d from %s\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"Got an IPv6 packet, from <%s> (%d) to <%s> (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"DROPPING that packet\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"processing that packet\0A\00", align 1
@receive = common dso_local global i32 0, align 4
@packets_received = common dso_local global i32 0, align 4
@CMSG_BUFSIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.interface*, i32)* @read_network_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_network_packet(i32 %0, %struct.interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.recvbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %5, align 4
  store %struct.interface* %1, %struct.interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = call %struct.recvbuf* (...) @get_free_recv_buffer()
  store %struct.recvbuf* %14, %struct.recvbuf** %10, align 8
  %15 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %16 = icmp eq %struct.recvbuf* null, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.interface*, %struct.interface** %6, align 8
  %19 = getelementptr inbounds %struct.interface, %struct.interface* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @RX_BUFF_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %28 = icmp ne %struct.recvbuf* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %31 = call i32 @freerecvbuf(%struct.recvbuf* %30)
  br label %32

32:                                               ; preds = %29, %22
  store i32 4, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = trunc i64 %24 to i32
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %36 = call i8* @recvfrom(i32 %33, i8* %26, i32 %34, i32 0, i32* %35, i32* %8)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.interface*, %struct.interface** %6, align 8
  %39 = getelementptr inbounds %struct.interface, %struct.interface* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 (...) @free_recvbuffs()
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @stoa(%struct.TYPE_5__* %13)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @DPRINTF(i32 4, i8* %48)
  %50 = load %struct.interface*, %struct.interface** %6, align 8
  %51 = getelementptr inbounds %struct.interface, %struct.interface* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @packets_ignored, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @packets_ignored, align 4
  br label %60

57:                                               ; preds = %32
  %58 = load i32, i32* @packets_dropped, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @packets_dropped, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  %62 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %62)
  br label %186

63:                                               ; preds = %17
  store i32 4, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %66 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %65, i32 0, i32 6
  %67 = bitcast i32* %66 to i8*
  %68 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %69 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i8* @recvfrom(i32 %64, i8* %67, i32 4, i32 0, i32* %70, i32* %8)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %74 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %76 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i64, i64* @EWOULDBLOCK, align 8
  %85 = load i64, i64* @errno, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %63
  %88 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %89 = call i32 @freerecvbuf(%struct.recvbuf* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %186

91:                                               ; preds = %83, %80
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i32, i32* @LOG_ERR, align 4
  %96 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %97 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %96, i32 0, i32 5
  %98 = call i32 @stoa(%struct.TYPE_5__* %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @msyslog(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @DPRINTF(i32 5, i8* %103)
  %105 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %106 = call i32 @freerecvbuf(%struct.recvbuf* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %186

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %113 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %112, i32 0, i32 5
  %114 = call i32 @stoa(%struct.TYPE_5__* %113)
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @DPRINTF(i32 3, i8* %116)
  %118 = load i64, i64* @AF_INET6, align 8
  %119 = load %struct.interface*, %struct.interface** %6, align 8
  %120 = getelementptr inbounds %struct.interface, %struct.interface* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %164

123:                                              ; preds = %109
  %124 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %125 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %124, i32 0, i32 5
  %126 = call i32 @stoa(%struct.TYPE_5__* %125)
  %127 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %128 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %127, i32 0, i32 5
  %129 = call i32 @PSOCK_ADDR6(%struct.TYPE_5__* %128)
  %130 = call i64 @IN6_IS_ADDR_LOOPBACK(i32 %129)
  %131 = load %struct.interface*, %struct.interface** %6, align 8
  %132 = getelementptr inbounds %struct.interface, %struct.interface* %131, i32 0, i32 2
  %133 = call i32 @stoa(%struct.TYPE_5__* %132)
  %134 = load %struct.interface*, %struct.interface** %6, align 8
  %135 = getelementptr inbounds %struct.interface, %struct.interface* %134, i32 0, i32 2
  %136 = call i32 @PSOCK_ADDR6(%struct.TYPE_5__* %135)
  %137 = call i64 @IN6_IS_ADDR_LOOPBACK(i32 %136)
  %138 = icmp ne i64 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @DPRINTF(i32 2, i8* %142)
  %144 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %145 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %144, i32 0, i32 5
  %146 = call i32 @PSOCK_ADDR6(%struct.TYPE_5__* %145)
  %147 = call i64 @IN6_IS_ADDR_LOOPBACK(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %123
  %150 = load %struct.interface*, %struct.interface** %6, align 8
  %151 = getelementptr inbounds %struct.interface, %struct.interface* %150, i32 0, i32 2
  %152 = call i32 @PSOCK_ADDR6(%struct.TYPE_5__* %151)
  %153 = call i64 @IN6_IS_ADDR_LOOPBACK(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* @packets_dropped, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @packets_dropped, align 4
  %158 = call i32 @DPRINTF(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %159 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %160 = call i32 @freerecvbuf(%struct.recvbuf* %159)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %4, align 4
  br label %186

162:                                              ; preds = %149, %123
  %163 = call i32 @DPRINTF(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %109
  %165 = load %struct.interface*, %struct.interface** %6, align 8
  %166 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %167 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %166, i32 0, i32 4
  store %struct.interface* %165, %struct.interface** %167, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %170 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %173 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @receive, align 4
  %175 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %176 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.recvbuf*, %struct.recvbuf** %10, align 8
  %178 = call i32 @add_full_recv_buffer(%struct.recvbuf* %177)
  %179 = load %struct.interface*, %struct.interface** %6, align 8
  %180 = getelementptr inbounds %struct.interface, %struct.interface* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* @packets_received, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @packets_received, align 4
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %164, %155, %94, %87, %60
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.recvbuf* @get_free_recv_buffer(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @freerecvbuf(%struct.recvbuf*) #1

declare dso_local i8* @recvfrom(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @free_recvbuffs(...) #1

declare dso_local i32 @stoa(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @msyslog(i32, i8*, i32, i32) #1

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(i32) #1

declare dso_local i32 @PSOCK_ADDR6(%struct.TYPE_5__*) #1

declare dso_local i32 @add_full_recv_buffer(%struct.recvbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
