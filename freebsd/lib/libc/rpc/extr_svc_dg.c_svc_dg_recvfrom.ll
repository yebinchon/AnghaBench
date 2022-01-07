; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_recvfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.msghdr = type { i32, i32, i8*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i8*, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cmsghdr = type { i64, i64 }
%struct.in_addr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MSG_CTRUNC = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i64 0, align 8
@IP_RECVDSTADDR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.sockaddr*, i32*, %struct.sockaddr*, i32*)* @svc_dg_recvfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_dg_recvfrom(i32 %0, i8* %1, i32 %2, %struct.sockaddr* %3, i32* %4, %struct.sockaddr* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca [1 x %struct.iovec], align 16
  %18 = alloca %struct.sockaddr_in*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.cmsghdr*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %18, align 8
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %20, align 4
  %28 = call i32 @CMSG_LEN(i32 24)
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %21, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %32 = bitcast %struct.msghdr* %16 to i8*
  %33 = call i32 @memset(i8* %32, i32 0, i32 40)
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %17, i64 0, i64 0
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 16
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %17, i64 0, i64 0
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %17, i64 0, i64 0
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 6
  store %struct.iovec* %40, %struct.iovec** %41, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %47 = bitcast %struct.sockaddr* %46 to i8*
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %50 = icmp ne %struct.sockaddr* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %7
  %52 = ptrtoint i8* %31 to i64
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 5
  store i64 %52, i64* %53, align 8
  %54 = call i32 @CMSG_LEN(i32 24)
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %7
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @_recvmsg(i32 %57, %struct.msghdr* %16, i32 0)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %19, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %82, label %68

68:                                               ; preds = %65
  %69 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %70 = icmp eq %struct.sockaddr* %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %74, 16
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MSG_CTRUNC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %71, %68, %65
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %129

84:                                               ; preds = %76
  %85 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %16)
  store %struct.cmsghdr* %85, %struct.cmsghdr** %23, align 8
  br label %86

86:                                               ; preds = %110, %84
  %87 = load %struct.cmsghdr*, %struct.cmsghdr** %23, align 8
  %88 = icmp ne %struct.cmsghdr* %87, null
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load %struct.cmsghdr*, %struct.cmsghdr** %23, align 8
  %91 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IPPROTO_IP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.cmsghdr*, %struct.cmsghdr** %23, align 8
  %97 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IP_RECVDSTADDR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %20, align 4
  %103 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %103, i32 0, i32 0
  %105 = load %struct.cmsghdr*, %struct.cmsghdr** %23, align 8
  %106 = call i64 @CMSG_DATA(%struct.cmsghdr* %105)
  %107 = inttoptr i64 %106 to %struct.in_addr*
  %108 = call i32 @memcpy(%struct.TYPE_2__* %104, %struct.in_addr* %107, i32 4)
  br label %113

109:                                              ; preds = %95, %89
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.cmsghdr*, %struct.cmsghdr** %23, align 8
  %112 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %16, %struct.cmsghdr* %111)
  store %struct.cmsghdr* %112, %struct.cmsghdr** %23, align 8
  br label %86

113:                                              ; preds = %101, %86
  %114 = load i32, i32* @AF_INET, align 4
  %115 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %116 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load i32*, i32** %15, align 8
  store i32 24, i32* %119, align 4
  %120 = load i32, i32* %20, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* @INADDR_ANY, align 4
  %124 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %125 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %122, %113
  %128 = load i32, i32* %19, align 4
  store i32 %128, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %129

129:                                              ; preds = %127, %82
  %130 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @CMSG_LEN(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @_recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.in_addr*, i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
