; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_init_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_init_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i32, i32, i8* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"krb5_addr2sockaddr\00", align 1
@rk_INVALID_SOCKET = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"socket(%d, %d, 0)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bind %s/%d\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"listen %s/%d\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.descr*, i32*, i32, i32, i32)* @init_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_socket(i32 %0, i32* %1, %struct.descr* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.descr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.sockaddr_storage, align 4
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [256 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca [256 x i8], align 16
  %22 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct.descr* %2, %struct.descr** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr*
  store %struct.sockaddr* %23, %struct.sockaddr** %17, align 8
  store i32 4, i32* %18, align 4
  %24 = load %struct.descr*, %struct.descr** %10, align 8
  %25 = call i32 @init_descr(%struct.descr* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @krb5_addr2sockaddr(i32 %26, i32* %27, %struct.sockaddr* %28, i32* %18, i32 %29)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %7
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %15, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %34, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.descr*, %struct.descr** %10, align 8
  %39 = getelementptr inbounds %struct.descr, %struct.descr* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @rk_closesocket(i8* %40)
  %42 = load i8*, i8** @rk_INVALID_SOCKET, align 8
  %43 = load %struct.descr*, %struct.descr** %10, align 8
  %44 = getelementptr inbounds %struct.descr, %struct.descr* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %133

45:                                               ; preds = %7
  %46 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %133

52:                                               ; preds = %45
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i8* @socket(i32 %53, i32 %54, i32 0)
  %56 = load %struct.descr*, %struct.descr** %10, align 8
  %57 = getelementptr inbounds %struct.descr, %struct.descr* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.descr*, %struct.descr** %10, align 8
  %59 = getelementptr inbounds %struct.descr, %struct.descr* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @rk_IS_BAD_SOCKET(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %64, i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i8*, i8** @rk_INVALID_SOCKET, align 8
  %70 = load %struct.descr*, %struct.descr** %10, align 8
  %71 = getelementptr inbounds %struct.descr, %struct.descr* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  br label %133

72:                                               ; preds = %52
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.descr*, %struct.descr** %10, align 8
  %75 = getelementptr inbounds %struct.descr, %struct.descr* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.descr*, %struct.descr** %10, align 8
  %78 = getelementptr inbounds %struct.descr, %struct.descr* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.descr*, %struct.descr** %10, align 8
  %80 = getelementptr inbounds %struct.descr, %struct.descr* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @bind(i8* %81, %struct.sockaddr* %82, i32 %83)
  %85 = call i64 @rk_IS_SOCKET_ERROR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %72
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %90 = call i32 @krb5_print_address(i32* %88, i8* %89, i32 256, i64* %20)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @errno, align 4
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @ntohs(i32 %94)
  %96 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %91, i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %93, i32 %95)
  %97 = load %struct.descr*, %struct.descr** %10, align 8
  %98 = getelementptr inbounds %struct.descr, %struct.descr* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @rk_closesocket(i8* %99)
  %101 = load i8*, i8** @rk_INVALID_SOCKET, align 8
  %102 = load %struct.descr*, %struct.descr** %10, align 8
  %103 = getelementptr inbounds %struct.descr, %struct.descr* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %133

104:                                              ; preds = %72
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @SOCK_STREAM, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = load %struct.descr*, %struct.descr** %10, align 8
  %110 = getelementptr inbounds %struct.descr, %struct.descr* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @SOMAXCONN, align 4
  %113 = call i32 @listen(i8* %111, i32 %112)
  %114 = call i64 @rk_IS_SOCKET_ERROR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %108
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %119 = call i32 @krb5_print_address(i32* %117, i8* %118, i32 256, i64* %22)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @errno, align 4
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @ntohs(i32 %123)
  %125 = call i32 (i32, i32, i8*, ...) @krb5_warn(i32 %120, i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %122, i32 %124)
  %126 = load %struct.descr*, %struct.descr** %10, align 8
  %127 = getelementptr inbounds %struct.descr, %struct.descr* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @rk_closesocket(i8* %128)
  %130 = load i8*, i8** @rk_INVALID_SOCKET, align 8
  %131 = load %struct.descr*, %struct.descr** %10, align 8
  %132 = getelementptr inbounds %struct.descr, %struct.descr* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %33, %51, %63, %87, %116, %108, %104
  ret void
}

declare dso_local i32 @init_descr(%struct.descr*) #1

declare dso_local i64 @krb5_addr2sockaddr(i32, i32*, %struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*, ...) #1

declare dso_local i32 @rk_closesocket(i8*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i64 @rk_IS_BAD_SOCKET(i8*) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @bind(i8*, %struct.sockaddr*, i32) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i32, i64*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @listen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
