; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_convert_un_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_convert_un_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i8* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i8*, %struct.TYPE_4__, i32, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i8*, %struct.TYPE_4__, i32, i8*, %struct.TYPE_3__, i32 }

@SOCKET_FORMAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAX_WRAPPED_INTERFACES = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SW_IPV6_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_un*, %struct.sockaddr*, i32*)* @convert_un_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_un_in(%struct.sockaddr_un* %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %14 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @SOCKET_FORMAT, align 4
  %29 = call i32 @sscanf(i8* %27, i32 %28, i8* %11, i32* %8, i32* %9)
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %80

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MAX_WRAPPED_INTERFACES, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %80

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp ugt i32 %43, 65535
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %80

47:                                               ; preds = %42
  %48 = load i8, i8* %11, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %77 [
    i32 131, label %50
    i32 129, label %50
  ]

50:                                               ; preds = %47, %47
  %51 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %52 = bitcast %struct.sockaddr* %51 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %52, %struct.sockaddr_in** %12, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 40
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %80

59:                                               ; preds = %50
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %61 = bitcast %struct.sockaddr_in* %60 to %struct.sockaddr_in6*
  %62 = call i32 @memset(%struct.sockaddr_in6* %61, i32 0, i32 40)
  %63 = load i32, i32* @AF_INET, align 4
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 2130706432, %66
  %68 = call i32 @htonl(i32 %67)
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i8* @htons(i32 %72)
  %74 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %7, align 8
  store i32 40, i32* %76, align 4
  br label %79

77:                                               ; preds = %47
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %80

79:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %77, %57, %45, %40, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
