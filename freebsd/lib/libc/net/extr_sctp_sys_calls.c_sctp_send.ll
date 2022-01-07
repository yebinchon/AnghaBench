; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sndrcvinfo = type { i32 }
%struct.msghdr = type { i32, i8*, i32, i64, %struct.iovec*, i64, i32* }
%struct.iovec = type { i8*, i64 }
%struct.cmsghdr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_SNDRCV = common dso_local global i32 0, align 4
@SYS_sctp_generic_sendmsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_send(i32 %0, i8* %1, i64 %2, %struct.sctp_sndrcvinfo* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sctp_sndrcvinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.msghdr, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cmsghdr*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sctp_sndrcvinfo* %3, %struct.sctp_sndrcvinfo** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = call i32 @CMSG_SPACE(i32 4)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %10, align 8
  %23 = icmp eq %struct.sctp_sndrcvinfo* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %56

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4
  store %struct.iovec* %13, %struct.iovec** %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 1
  store i8* %21, i8** %35, align 8
  %36 = call i32 @CMSG_SPACE(i32 4)
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = bitcast i8* %21 to %struct.cmsghdr*
  store %struct.cmsghdr* %39, %struct.cmsghdr** %16, align 8
  %40 = load i32, i32* @IPPROTO_SCTP, align 4
  %41 = load %struct.cmsghdr*, %struct.cmsghdr** %16, align 8
  %42 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @SCTP_SNDRCV, align 4
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %16, align 8
  %45 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = call i32 @CMSG_LEN(i32 4)
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %16, align 8
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cmsghdr*, %struct.cmsghdr** %16, align 8
  %50 = call i32 @CMSG_DATA(%struct.cmsghdr* %49)
  %51 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %10, align 8
  %52 = call i32 @memcpy(i32 %50, %struct.sctp_sndrcvinfo* %51, i32 4)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @sendmsg(i32 %53, %struct.msghdr* %12, i32 %54)
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %56

56:                                               ; preds = %26, %24
  %57 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i32, %struct.sctp_sndrcvinfo*, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
