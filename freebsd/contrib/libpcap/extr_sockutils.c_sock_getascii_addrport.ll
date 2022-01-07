; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_getascii_addrport.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_getascii_addrport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@NI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] zeroinitializer, align 1
@SOCKET_NAME_NULL_DAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"getnameinfo(): \00", align 1
@SOCKET_NO_NAME_AVAILABLE = common dso_local global i32 0, align 4
@SOCKET_NO_PORT_AVAILABLE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_getascii_addrport(%struct.sockaddr_storage* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 -1, i32* %19, align 4
  store i32 8, i32* %18, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @NI_NUMERICHOST, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %8
  %25 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %26 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr_in6*
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  %34 = call i64 @memcmp(i32* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* @SOCKET_NAME_NULL_DAD, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @strlcpy(i8* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %9, align 4
  br label %99

46:                                               ; preds = %30, %24
  br label %47

47:                                               ; preds = %46, %8
  %48 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %49 = bitcast %struct.sockaddr_storage* %48 to %struct.sockaddr*
  %50 = load i32, i32* %18, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i64 @getnameinfo(%struct.sockaddr* %49, i32 %50, i8* %51, i32 %52, i8* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %47
  %59 = load i8*, i8** %16, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load i8*, i8** %16, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* @SOCKET_NO_NAME_AVAILABLE, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @strlcpy(i8* %74, i32 %75, i32 %76)
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %73, %70
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* @SOCKET_NO_PORT_AVAILABLE, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @strlcpy(i8* %87, i32 %88, i32 %89)
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %86, %83
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %96, %47
  %98 = load i32, i32* %19, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %44
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @sock_geterror(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
