; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_udp_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_udp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_reply = type { %struct.comm_point*, i64, i32, i64 }
%struct.comm_point = type { i64, i32, %struct.sldns_buffer*, %struct.sldns_buffer*, i32, i64 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, %struct.TYPE_2__* }
%struct.sldns_buffer = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@comm_udp = common dso_local global i64 0, align 8
@UB_EV_READ = common dso_local global i16 0, align 2
@NUM_UDP_PER_SELECT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"recvfrom %d failed: %s\00", align 1
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_udp_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.comm_reply, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sldns_buffer*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.comm_point*
  %13 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  store %struct.comm_point* %12, %struct.comm_point** %13, align 8
  %14 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %15 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %16 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @comm_udp, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @log_assert(i32 %20)
  %22 = load i16, i16* %5, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @UB_EV_READ, align 2
  %25 = sext i16 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %173

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %31 = load %struct.comm_point*, %struct.comm_point** %30, align 8
  %32 = icmp ne %struct.comm_point* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %35 = load %struct.comm_point*, %struct.comm_point** %34, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 2
  %37 = load %struct.sldns_buffer*, %struct.sldns_buffer** %36, align 8
  %38 = icmp ne %struct.sldns_buffer* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %41 = load %struct.comm_point*, %struct.comm_point** %40, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %39, %33, %29
  %47 = phi i1 [ false, %33 ], [ false, %29 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @log_assert(i32 %48)
  %50 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %51 = load %struct.comm_point*, %struct.comm_point** %50, align 8
  %52 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %51, i32 0, i32 6
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ub_comm_base_now(i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %170, %46
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @NUM_UDP_PER_SELECT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %173

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %63 = load %struct.comm_point*, %struct.comm_point** %62, align 8
  %64 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %63, i32 0, i32 2
  %65 = load %struct.sldns_buffer*, %struct.sldns_buffer** %64, align 8
  %66 = call i32 @sldns_buffer_clear(%struct.sldns_buffer* %65)
  %67 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 1
  store i64 4, i64* %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, -1
  %70 = zext i1 %69 to i32
  %71 = call i32 @log_assert(i32 %70)
  %72 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %73 = load %struct.comm_point*, %struct.comm_point** %72, align 8
  %74 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %73, i32 0, i32 2
  %75 = load %struct.sldns_buffer*, %struct.sldns_buffer** %74, align 8
  %76 = call i64 @sldns_buffer_remaining(%struct.sldns_buffer* %75)
  %77 = icmp sgt i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @log_assert(i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %82 = load %struct.comm_point*, %struct.comm_point** %81, align 8
  %83 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %82, i32 0, i32 2
  %84 = load %struct.sldns_buffer*, %struct.sldns_buffer** %83, align 8
  %85 = call i64 @sldns_buffer_begin(%struct.sldns_buffer* %84)
  %86 = inttoptr i64 %85 to i8*
  %87 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %88 = load %struct.comm_point*, %struct.comm_point** %87, align 8
  %89 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %88, i32 0, i32 2
  %90 = load %struct.sldns_buffer*, %struct.sldns_buffer** %89, align 8
  %91 = call i64 @sldns_buffer_remaining(%struct.sldns_buffer* %90)
  %92 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 2
  %93 = bitcast i32* %92 to %struct.sockaddr*
  %94 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 1
  %95 = call i32 @recvfrom(i32 %80, i8* %86, i64 %91, i32 0, %struct.sockaddr* %93, i64* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %112

98:                                               ; preds = %61
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @EAGAIN, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i64, i64* @errno, align 8
  %104 = load i64, i64* @EINTR, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %4, align 4
  %108 = load i64, i64* @errno, align 8
  %109 = call i32 @strerror(i64 %108)
  %110 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %106, %102, %98
  br label %173

112:                                              ; preds = %61
  %113 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %114 = load %struct.comm_point*, %struct.comm_point** %113, align 8
  %115 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %114, i32 0, i32 2
  %116 = load %struct.sldns_buffer*, %struct.sldns_buffer** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @sldns_buffer_skip(%struct.sldns_buffer* %116, i32 %117)
  %119 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %120 = load %struct.comm_point*, %struct.comm_point** %119, align 8
  %121 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %120, i32 0, i32 2
  %122 = load %struct.sldns_buffer*, %struct.sldns_buffer** %121, align 8
  %123 = call i32 @sldns_buffer_flip(%struct.sldns_buffer* %122)
  %124 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 3
  store i64 0, i64* %124, align 8
  %125 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %126 = load %struct.comm_point*, %struct.comm_point** %125, align 8
  %127 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %126, i32 0, i32 5
  %128 = load i64 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i64 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %127, align 8
  %129 = call i32 @fptr_whitelist_comm_point(i64 (%struct.comm_point*, i32, i32, %struct.comm_reply*)* %128)
  %130 = call i32 @fptr_ok(i32 %129)
  %131 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %132 = load %struct.comm_point*, %struct.comm_point** %131, align 8
  %133 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %132, i32 0, i32 5
  %134 = load i64 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i64 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %133, align 8
  %135 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %136 = load %struct.comm_point*, %struct.comm_point** %135, align 8
  %137 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %138 = load %struct.comm_point*, %struct.comm_point** %137, align 8
  %139 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @NETEVENT_NOERROR, align 4
  %142 = call i64 %134(%struct.comm_point* %136, i32 %140, i32 %141, %struct.comm_reply* %7)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %112
  %145 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %146 = load %struct.comm_point*, %struct.comm_point** %145, align 8
  %147 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %146, i32 0, i32 2
  %148 = load %struct.sldns_buffer*, %struct.sldns_buffer** %147, align 8
  store %struct.sldns_buffer* %148, %struct.sldns_buffer** %10, align 8
  %149 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %150 = load %struct.comm_point*, %struct.comm_point** %149, align 8
  %151 = load %struct.sldns_buffer*, %struct.sldns_buffer** %10, align 8
  %152 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 2
  %153 = bitcast i32* %152 to %struct.sockaddr*
  %154 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @comm_point_send_udp_msg(%struct.comm_point* %150, %struct.sldns_buffer* %151, %struct.sockaddr* %153, i64 %155)
  br label %157

157:                                              ; preds = %144, %112
  %158 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %159 = load %struct.comm_point*, %struct.comm_point** %158, align 8
  %160 = icmp ne %struct.comm_point* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %163 = load %struct.comm_point*, %struct.comm_point** %162, align 8
  %164 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161, %157
  br label %173

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %57

173:                                              ; preds = %28, %111, %168, %57
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ub_comm_base_now(i32) #1

declare dso_local i32 @sldns_buffer_clear(%struct.sldns_buffer*) #1

declare dso_local i64 @sldns_buffer_remaining(%struct.sldns_buffer*) #1

declare dso_local i32 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i64*) #1

declare dso_local i64 @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i32 @log_err(i8*, i32, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @sldns_buffer_skip(%struct.sldns_buffer*, i32) #1

declare dso_local i32 @sldns_buffer_flip(%struct.sldns_buffer*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i64 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*) #1

declare dso_local i32 @comm_point_send_udp_msg(%struct.comm_point*, %struct.sldns_buffer*, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
