; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_make_listen_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_make_listen_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"socket AF_INET\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bad port `%s'\00", align 1
@IPROP_SERVICE = common dso_local global i8* null, align 8
@IPROP_PORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @make_listen_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_listen_socket(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %6, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @rk_IS_BAD_SOCKET(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %19 = call i32 @krb5_err(i32 %17, i32 1, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SOL_SOCKET, align 4
  %23 = load i32, i32* @SO_REUSEADDR, align 4
  %24 = bitcast i32* %6 to i8*
  %25 = call i32 @setsockopt(i32 %21, i32 %22, i32 %23, i8* %24, i32 4)
  %26 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 16)
  %27 = load i32, i32* @AF_INET, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @krb5_getportbyname(i32 %32, i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %35 = ptrtoint i8* %34 to i64
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strtol(i8* %41, i8** %8, i32 10)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @krb5_errx(i32 %50, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %45, %40
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @htons(i64 %54)
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %31
  br label %65

58:                                               ; preds = %20
  %59 = load i32, i32* %3, align 4
  %60 = load i8*, i8** @IPROP_SERVICE, align 8
  %61 = load i32, i32* @IPROP_PORT, align 4
  %62 = call i8* @krb5_getportbyname(i32 %59, i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %57
  %66 = load i32, i32* %5, align 4
  %67 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %68 = call i64 @bind(i32 %66, %struct.sockaddr* %67, i32 16)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @krb5_err(i32 %71, i32 1, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SOMAXCONN, align 4
  %77 = call i64 @listen(i32 %75, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @krb5_err(i32 %80, i32 1, i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @rk_IS_BAD_SOCKET(i32) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @krb5_getportbyname(i32, i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i8*) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
