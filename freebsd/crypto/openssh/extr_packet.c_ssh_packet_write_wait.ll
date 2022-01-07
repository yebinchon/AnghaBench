; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_write_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_write_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, i64 }
%struct.timeval = type { i32 }

@NFDBITS = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@SSH_ERR_CONN_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_write_wait(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.timeval*, align 8
  %11 = alloca %struct.session_state*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store i32 0, i32* %7, align 4
  store %struct.timeval* null, %struct.timeval** %10, align 8
  %12 = load %struct.ssh*, %struct.ssh** %3, align 8
  %13 = getelementptr inbounds %struct.ssh, %struct.ssh* %12, i32 0, i32 0
  %14 = load %struct.session_state*, %struct.session_state** %13, align 8
  store %struct.session_state* %14, %struct.session_state** %11, align 8
  %15 = load %struct.session_state*, %struct.session_state** %11, align 8
  %16 = getelementptr inbounds %struct.session_state, %struct.session_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* @NFDBITS, align 4
  %20 = call i32 @howmany(i64 %18, i32 %19)
  %21 = call i32* @calloc(i32 %20, i32 4)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %128

26:                                               ; preds = %1
  %27 = load %struct.ssh*, %struct.ssh** %3, align 8
  %28 = call i32 @ssh_packet_write_poll(%struct.ssh* %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @free(i32* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %128

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %124, %34
  %36 = load %struct.ssh*, %struct.ssh** %3, align 8
  %37 = call i64 @ssh_packet_have_data_to_write(%struct.ssh* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %125

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.session_state*, %struct.session_state** %11, align 8
  %42 = getelementptr inbounds %struct.session_state, %struct.session_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = load i32, i32* @NFDBITS, align 4
  %46 = call i32 @howmany(i64 %44, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(i32* %40, i32 0, i32 %49)
  %51 = load %struct.session_state*, %struct.session_state** %11, align 8
  %52 = getelementptr inbounds %struct.session_state, %struct.session_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @FD_SET(i64 %53, i32* %54)
  %56 = load %struct.session_state*, %struct.session_state** %11, align 8
  %57 = getelementptr inbounds %struct.session_state, %struct.session_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %39
  %61 = load %struct.session_state*, %struct.session_state** %11, align 8
  %62 = getelementptr inbounds %struct.session_state, %struct.session_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  store %struct.timeval* %9, %struct.timeval** %10, align 8
  br label %64

64:                                               ; preds = %60, %39
  br label %65

65:                                               ; preds = %108, %102, %64
  %66 = load %struct.session_state*, %struct.session_state** %11, align 8
  %67 = getelementptr inbounds %struct.session_state, %struct.session_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ms_to_timeval(%struct.timeval* %9, i32 %71)
  %73 = call i32 @monotime_tv(%struct.timeval* %8)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.session_state*, %struct.session_state** %11, align 8
  %76 = getelementptr inbounds %struct.session_state, %struct.session_state* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.timeval*, %struct.timeval** %10, align 8
  %81 = call i32 @select(i64 %78, i32* null, i32* %79, i32* null, %struct.timeval* %80)
  store i32 %81, i32* %5, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %109

84:                                               ; preds = %74
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @EAGAIN, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i64, i64* @errno, align 8
  %90 = load i64, i64* @EINTR, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @EWOULDBLOCK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %109

97:                                               ; preds = %92, %88, %84
  %98 = load %struct.session_state*, %struct.session_state** %11, align 8
  %99 = getelementptr inbounds %struct.session_state, %struct.session_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %65

103:                                              ; preds = %97
  %104 = call i32 @ms_subtract_diff(%struct.timeval* %8, i32* %7)
  %105 = load i32, i32* %7, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %109

108:                                              ; preds = %103
  br label %65

109:                                              ; preds = %107, %96, %83
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @free(i32* %113)
  %115 = load i32, i32* @SSH_ERR_CONN_TIMEOUT, align 4
  store i32 %115, i32* %2, align 4
  br label %128

116:                                              ; preds = %109
  %117 = load %struct.ssh*, %struct.ssh** %3, align 8
  %118 = call i32 @ssh_packet_write_poll(%struct.ssh* %117)
  store i32 %118, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @free(i32* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %128

124:                                              ; preds = %116
  br label %35

125:                                              ; preds = %35
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @free(i32* %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %125, %120, %112, %30, %24
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @howmany(i64, i32) #1

declare dso_local i32 @ssh_packet_write_poll(%struct.ssh*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @ssh_packet_have_data_to_write(%struct.ssh*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @ms_to_timeval(%struct.timeval*, i32) #1

declare dso_local i32 @monotime_tv(%struct.timeval*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @ms_subtract_diff(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
