; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_recvmmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_recvmmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_recvmmsg_args = type { i32, i32, i64, i32, i32 }
%struct.l_mmsghdr = type { i32, i32 }
%struct.msghdr = type { i32 }
%struct.l_timespec = type { i32 }
%struct.timespec = type { i64 }

@LINUX_MSG_WAITFORONE = common dso_local global i32 0, align 4
@LINUX_MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_recvmmsg(%struct.thread* %0, %struct.linux_recvmmsg_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_recvmmsg_args*, align 8
  %6 = alloca %struct.l_mmsghdr*, align 8
  %7 = alloca %struct.msghdr, align 4
  %8 = alloca %struct.l_timespec, align 4
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_recvmmsg_args* %1, %struct.linux_recvmmsg_args** %5, align 8
  %14 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %15 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @copyin(i64 %21, %struct.l_timespec* %8, i32 4)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %3, align 4
  br label %128

27:                                               ; preds = %18
  %28 = call i32 @linux_to_native_timespec(%struct.timespec* %9, %struct.l_timespec* %8)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %3, align 4
  br label %128

33:                                               ; preds = %27
  %34 = call i32 @getnanotime(%struct.timespec* %10)
  %35 = call i32 @timespecadd(%struct.timespec* %10, %struct.timespec* %9, %struct.timespec* %10)
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %38 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.l_mmsghdr* @PTRIN(i32 %39)
  store %struct.l_mmsghdr* %40, %struct.l_mmsghdr** %6, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %116, %36
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %44 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %41
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %50 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.l_mmsghdr*, %struct.l_mmsghdr** %6, align 8
  %53 = getelementptr inbounds %struct.l_mmsghdr, %struct.l_mmsghdr* %52, i32 0, i32 1
  %54 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %55 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LINUX_MSG_WAITFORONE, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @linux_recvmsg_common(%struct.thread* %48, i32 %51, i32* %53, i32 %59, %struct.msghdr* %7)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %117

64:                                               ; preds = %47
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.l_mmsghdr*, %struct.l_mmsghdr** %6, align 8
  %71 = getelementptr inbounds %struct.l_mmsghdr, %struct.l_mmsghdr* %70, i32 0, i32 0
  %72 = call i32 @copyout(i32* %11, i32* %71, i32 4)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %117

76:                                               ; preds = %64
  %77 = load %struct.l_mmsghdr*, %struct.l_mmsghdr** %6, align 8
  %78 = getelementptr inbounds %struct.l_mmsghdr, %struct.l_mmsghdr* %77, i32 1
  store %struct.l_mmsghdr* %78, %struct.l_mmsghdr** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %82 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @LINUX_MSG_WAITFORONE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i32, i32* @LINUX_MSG_DONTWAIT, align 4
  %89 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %90 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %76
  %94 = load %struct.linux_recvmmsg_args*, %struct.linux_recvmmsg_args** %5, align 8
  %95 = getelementptr inbounds %struct.linux_recvmmsg_args, %struct.linux_recvmmsg_args* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = call i32 @getnanotime(%struct.timespec* %9)
  %100 = call i32 @timespecsub(%struct.timespec* %9, %struct.timespec* %10, %struct.timespec* %9)
  %101 = call i32 @timespecisset(%struct.timespec* %9)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %98
  br label %117

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %93
  %110 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MSG_OOB, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %117

116:                                              ; preds = %109
  br label %41

117:                                              ; preds = %115, %107, %75, %63, %41
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.thread*, %struct.thread** %4, align 8
  %123 = getelementptr inbounds %struct.thread, %struct.thread* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %117
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %31, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @copyin(i64, %struct.l_timespec*, i32) #1

declare dso_local i32 @linux_to_native_timespec(%struct.timespec*, %struct.l_timespec*) #1

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local %struct.l_mmsghdr* @PTRIN(i32) #1

declare dso_local i32 @linux_recvmsg_common(%struct.thread*, i32, i32*, i32, %struct.msghdr*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespecisset(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
