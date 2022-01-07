; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_recvmmsg.c_recvmmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_recvmmsg.c_recvmmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmsghdr = type { i32, i32 }
%struct.timespec = type { i32 }
%struct.pollfd = type { i32, i32, i16 }

@POLLIN = common dso_local global i16 0, align 2
@POLLRDNORM = common dso_local global i16 0, align 2
@POLLRDBAND = common dso_local global i16 0, align 2
@POLLPRI = common dso_local global i16 0, align 2
@POLLNVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MSG_WAITFORONE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recvmmsg(i32 %0, %struct.mmsghdr* noalias %1, i64 %2, i32 %3, %struct.timespec* noalias %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmsghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca [1 x %struct.pollfd], align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  store i32 %0, i32* %7, align 4
  store %struct.mmsghdr* %1, %struct.mmsghdr** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.timespec* %4, %struct.timespec** %11, align 8
  %18 = load %struct.timespec*, %struct.timespec** %11, align 8
  %19 = icmp ne %struct.timespec* %18, null
  br i1 %19, label %20, label %70

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load i16, i16* @POLLIN, align 2
  %27 = sext i16 %26 to i32
  %28 = load i16, i16* @POLLRDNORM, align 2
  %29 = sext i16 %28 to i32
  %30 = or i32 %27, %29
  %31 = load i16, i16* @POLLRDBAND, align 2
  %32 = sext i16 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i16, i16* @POLLPRI, align 2
  %35 = sext i16 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %17, align 2
  %38 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %38, i32 0, i32 2
  store i16 %37, i16* %39, align 4
  %40 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %41 = load %struct.timespec*, %struct.timespec** %11, align 8
  %42 = call i32 @ppoll(%struct.pollfd* %40, i32 1, %struct.timespec* %41, i32* null)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %48, label %45

45:                                               ; preds = %20
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %20
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %6, align 4
  br label %127

50:                                               ; preds = %45
  %51 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %52 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @POLLNVAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EBADF, align 4
  store i32 %58, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %127

59:                                               ; preds = %50
  %60 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %61 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i16, i16* %17, align 2
  %64 = sext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %68, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %127

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %5
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %73 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %72, i64 0
  %74 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %73, i32 0, i32 1
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @__sys_recvmsg(i32 %71, i32* %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %6, align 4
  br label %127

81:                                               ; preds = %70
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %84 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %83, i64 0
  %85 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @MSG_WAITFORONE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @MSG_DONTWAIT, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %81
  store i64 1, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %13, align 8
  br label %96

96:                                               ; preds = %119, %94
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %102, i64 %103
  %105 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %104, i32 0, i32 1
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @__sys_recvmsg(i32 %101, i32* %105, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i64, i64* %14, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %6, align 4
  br label %127

113:                                              ; preds = %100
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %115, i64 %116
  %118 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %113
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %14, align 8
  br label %96

124:                                              ; preds = %96
  %125 = load i64, i64* %14, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %110, %79, %67, %57, %48
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @ppoll(%struct.pollfd*, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @__sys_recvmsg(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
