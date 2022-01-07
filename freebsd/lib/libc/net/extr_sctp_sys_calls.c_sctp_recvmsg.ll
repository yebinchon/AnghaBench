; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctp_sndrcvinfo = type { i64 }
%struct.msghdr = type { i32, i8*, i32, i32, %struct.iovec*, i64, i64 }
%struct.iovec = type { i64, i8* }
%struct.cmsghdr = type { i64, i64 }

@SCTP_CONTROL_VEC_SIZE_RCV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@SCTP_SNDRCV = common dso_local global i64 0, align 8
@SCTP_EXTRCV = common dso_local global i64 0, align 8
@SYS_sctp_generic_recvmsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_recvmsg(i32 %0, i8* %1, i64 %2, %struct.sockaddr* %3, i64* %4, %struct.sctp_sndrcvinfo* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.sctp_sndrcvinfo*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.msghdr, align 8
  %18 = alloca %struct.iovec, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.cmsghdr*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i64* %4, i64** %13, align 8
  store %struct.sctp_sndrcvinfo* %5, %struct.sctp_sndrcvinfo** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i32, i32* @SCTP_CONTROL_VEC_SIZE_RCV, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %19, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %20, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %119

31:                                               ; preds = %7
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %37 = ptrtoint %struct.sockaddr* %36 to i64
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 6
  store i64 %37, i64* %38, align 8
  %39 = load i64*, i64** %13, align 8
  %40 = icmp eq i64* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 5
  store i64 0, i64* %42, align 8
  br label %47

43:                                               ; preds = %31
  %44 = load i64*, i64** %13, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 5
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %41
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 4
  store %struct.iovec* %18, %struct.iovec** %48, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 1
  store i8* %26, i8** %50, align 8
  %51 = trunc i64 %24 to i32
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @recvmsg(i32 %54, %struct.msghdr* %17, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %47
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %119

65:                                               ; preds = %47
  %66 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %67 = icmp ne %struct.sctp_sndrcvinfo* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %70 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %71
  %76 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %77 = icmp ne %struct.sctp_sndrcvinfo* %76, null
  br i1 %77, label %78, label %117

78:                                               ; preds = %75
  %79 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %17)
  store %struct.cmsghdr* %79, %struct.cmsghdr** %21, align 8
  br label %80

80:                                               ; preds = %113, %78
  %81 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %82 = icmp ne %struct.cmsghdr* %81, null
  br i1 %82, label %83, label %116

83:                                               ; preds = %80
  %84 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %85 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IPPROTO_SCTP, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %113

90:                                               ; preds = %83
  %91 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %92 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SCTP_SNDRCV, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %98 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %99 = call i32 @CMSG_DATA(%struct.cmsghdr* %98)
  %100 = call i32 @memcpy(%struct.sctp_sndrcvinfo* %97, i32 %99, i32 8)
  br label %116

101:                                              ; preds = %90
  %102 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %103 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SCTP_EXTRCV, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %109 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %110 = call i32 @CMSG_DATA(%struct.cmsghdr* %109)
  %111 = call i32 @memcpy(%struct.sctp_sndrcvinfo* %108, i32 %110, i32 4)
  br label %116

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %89
  %114 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %115 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %17, %struct.cmsghdr* %114)
  store %struct.cmsghdr* %115, %struct.cmsghdr** %21, align 8
  br label %80

116:                                              ; preds = %107, %96, %80
  br label %117

117:                                              ; preds = %116, %75, %71
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %119

119:                                              ; preds = %117, %63, %29
  %120 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #2

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #2

declare dso_local i32 @memcpy(%struct.sctp_sndrcvinfo*, i32, i32) #2

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #2

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
