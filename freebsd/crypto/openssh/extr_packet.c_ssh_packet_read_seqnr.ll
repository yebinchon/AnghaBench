; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_read_seqnr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_read_seqnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, i64 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"packet_read()\00", align 1
@NFDBITS = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_MSG_NONE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_CONN_TIMEOUT = common dso_local global i32 0, align 4
@SSH_ERR_CONN_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_read_seqnr(%struct.ssh* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.session_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [8192 x i8], align 16
  %14 = alloca %struct.timeval, align 4
  %15 = alloca %struct.timeval, align 4
  %16 = alloca %struct.timeval*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.ssh*, %struct.ssh** %5, align 8
  %18 = getelementptr inbounds %struct.ssh, %struct.ssh* %17, i32 0, i32 0
  %19 = load %struct.session_state*, %struct.session_state** %18, align 8
  store %struct.session_state* %19, %struct.session_state** %8, align 8
  store %struct.timeval* null, %struct.timeval** %16, align 8
  %20 = call i32 @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @DBG(i32 %20)
  %22 = load %struct.session_state*, %struct.session_state** %8, align 8
  %23 = getelementptr inbounds %struct.session_state, %struct.session_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* @NFDBITS, align 4
  %27 = call i32 @howmany(i64 %25, i32 %26)
  %28 = call i32* @calloc(i32 %27, i32 4)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %157

33:                                               ; preds = %3
  %34 = load %struct.ssh*, %struct.ssh** %5, align 8
  %35 = call i32 @ssh_packet_write_wait(%struct.ssh* %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %153

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %151, %38
  %40 = load %struct.ssh*, %struct.ssh** %5, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @ssh_packet_read_poll_seqnr(%struct.ssh* %40, i64* %41, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %152

47:                                               ; preds = %39
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SSH_MSG_NONE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %152

53:                                               ; preds = %47
  %54 = load i32*, i32** %12, align 8
  %55 = load %struct.session_state*, %struct.session_state** %8, align 8
  %56 = getelementptr inbounds %struct.session_state, %struct.session_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = load i32, i32* @NFDBITS, align 4
  %60 = call i32 @howmany(i64 %58, i32 %59)
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memset(i32* %54, i32 0, i32 %63)
  %65 = load %struct.session_state*, %struct.session_state** %8, align 8
  %66 = getelementptr inbounds %struct.session_state, %struct.session_state* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @FD_SET(i64 %67, i32* %68)
  %70 = load %struct.session_state*, %struct.session_state** %8, align 8
  %71 = getelementptr inbounds %struct.session_state, %struct.session_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %53
  %75 = load %struct.session_state*, %struct.session_state** %8, align 8
  %76 = getelementptr inbounds %struct.session_state, %struct.session_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  store %struct.timeval* %14, %struct.timeval** %16, align 8
  br label %78

78:                                               ; preds = %74, %53
  br label %79

79:                                               ; preds = %123, %117, %78
  %80 = load %struct.session_state*, %struct.session_state** %8, align 8
  %81 = getelementptr inbounds %struct.session_state, %struct.session_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @ms_to_timeval(%struct.timeval* %14, i32 %85)
  %87 = call i32 @monotime_tv(%struct.timeval* %15)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.session_state*, %struct.session_state** %8, align 8
  %90 = getelementptr inbounds %struct.session_state, %struct.session_state* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = load i32*, i32** %12, align 8
  %94 = load %struct.timeval*, %struct.timeval** %16, align 8
  %95 = call i32 @select(i64 %92, i32* %93, i32* null, i32* null, %struct.timeval* %94)
  store i32 %95, i32* %10, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %124

98:                                               ; preds = %88
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @EAGAIN, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i64, i64* @errno, align 8
  %104 = load i64, i64* @EINTR, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i64, i64* @errno, align 8
  %108 = load i64, i64* @EWOULDBLOCK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %111, i32* %10, align 4
  br label %153

112:                                              ; preds = %106, %102, %98
  %113 = load %struct.session_state*, %struct.session_state** %8, align 8
  %114 = getelementptr inbounds %struct.session_state, %struct.session_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %79

118:                                              ; preds = %112
  %119 = call i32 @ms_subtract_diff(%struct.timeval* %15, i32* %11)
  %120 = load i32, i32* %11, align 4
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  br label %124

123:                                              ; preds = %118
  br label %79

124:                                              ; preds = %122, %97
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @SSH_ERR_CONN_TIMEOUT, align 4
  store i32 %128, i32* %10, align 4
  br label %153

129:                                              ; preds = %124
  %130 = load %struct.session_state*, %struct.session_state** %8, align 8
  %131 = getelementptr inbounds %struct.session_state, %struct.session_state* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds [8192 x i8], [8192 x i8]* %13, i64 0, i64 0
  %134 = call i32 @read(i64 %132, i8* %133, i32 8192)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* @SSH_ERR_CONN_CLOSED, align 4
  store i32 %138, i32* %10, align 4
  br label %153

139:                                              ; preds = %129
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %143, i32* %10, align 4
  br label %153

144:                                              ; preds = %139
  %145 = load %struct.ssh*, %struct.ssh** %5, align 8
  %146 = getelementptr inbounds [8192 x i8], [8192 x i8]* %13, i64 0, i64 0
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @ssh_packet_process_incoming(%struct.ssh* %145, i8* %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %153

151:                                              ; preds = %144
  br label %39

152:                                              ; preds = %52, %46
  br label %153

153:                                              ; preds = %152, %150, %142, %137, %127, %110, %37
  %154 = load i32*, i32** %12, align 8
  %155 = call i32 @free(i32* %154)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %153, %31
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @howmany(i64, i32) #1

declare dso_local i32 @ssh_packet_write_wait(%struct.ssh*) #1

declare dso_local i32 @ssh_packet_read_poll_seqnr(%struct.ssh*, i64*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @ms_to_timeval(%struct.timeval*, i32) #1

declare dso_local i32 @monotime_tv(%struct.timeval*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @ms_subtract_diff(%struct.timeval*, i32*) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i32 @ssh_packet_process_incoming(%struct.ssh*, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
