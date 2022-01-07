; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_sendto.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.msghdr = type { i32, i8*, i8*, i64, i32, %struct.iovec* }
%struct.iovec = type { i8*, i32 }
%struct.sockaddr_in = type { %struct.in_addr }
%struct.in_addr = type { i64 }
%struct.cmsghdr = type { i32, i32, i8* }

@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_SENDSRCADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32)* @svc_dg_sendto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_dg_sendto(i32 %0, i8* %1, i32 %2, %struct.sockaddr* %3, i32 %4, %struct.sockaddr* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.msghdr, align 8
  %16 = alloca [1 x %struct.iovec], align 16
  %17 = alloca %struct.sockaddr_in*, align 8
  %18 = alloca %struct.in_addr*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.cmsghdr*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.sockaddr* %5, %struct.sockaddr** %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %17, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  store %struct.in_addr* %25, %struct.in_addr** %18, align 8
  %26 = call i32 @CMSG_SPACE(i32 8)
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = bitcast %struct.msghdr* %15 to i8*
  %31 = call i32 @memset(i8* %30, i32 0, i32 48)
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %16, i64 0, i64 0
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 16
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %16, i64 0, i64 0
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %16, i64 0, i64 0
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 5
  store %struct.iovec* %38, %struct.iovec** %39, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %44 = bitcast %struct.sockaddr* %43 to i8*
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %47 = icmp ne %struct.sockaddr* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %7
  %49 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load %struct.in_addr*, %struct.in_addr** %18, align 8
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INADDR_ANY, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = ptrtoint i8* %29 to i64
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 3
  store i64 %61, i64* %62, align 8
  %63 = call i8* @CMSG_LEN(i32 8)
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %15)
  store %struct.cmsghdr* %65, %struct.cmsghdr** %21, align 8
  %66 = call i8* @CMSG_LEN(i32 8)
  %67 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %68 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @IPPROTO_IP, align 4
  %70 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %71 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @IP_SENDSRCADDR, align 4
  %73 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %74 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cmsghdr*, %struct.cmsghdr** %21, align 8
  %76 = call i32 @CMSG_DATA(%struct.cmsghdr* %75)
  %77 = load %struct.in_addr*, %struct.in_addr** %18, align 8
  %78 = call i32 @memcpy(i32 %76, %struct.in_addr* %77, i32 8)
  br label %79

79:                                               ; preds = %60, %54, %48, %7
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @_sendmsg(i32 %80, %struct.msghdr* %15, i32 0)
  %82 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %82)
  ret i32 %81
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @CMSG_LEN(i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @memcpy(i32, %struct.in_addr*, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @_sendmsg(i32, %struct.msghdr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
