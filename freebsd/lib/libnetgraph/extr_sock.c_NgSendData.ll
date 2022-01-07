; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_sock.c_NgSendData.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_sock.c_NgSendData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ng = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@NG_HOOKSIZ = common dso_local global i32 0, align 4
@NGSA_OVERHEAD = common dso_local global i32 0, align 4
@AF_NETGRAPH = common dso_local global i32 0, align 4
@_gNgDebugLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WRITE PACKET to hook \22%s\22 (%d bytes)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sendto(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NgSendData(i32 %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_ng*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @NG_HOOKSIZ, align 4
  %16 = load i32, i32* @NGSA_OVERHEAD, align 4
  %17 = add nsw i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = bitcast i32* %20 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %21, %struct.sockaddr_ng** %12, align 8
  %22 = load i32, i32* @AF_NETGRAPH, align 4
  %23 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %24 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %26 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @NG_HOOKSIZ, align 4
  %30 = call i32 @strlcpy(i32 %27, i8* %28, i32 %29)
  %31 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %32 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @NGSA_OVERHEAD, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %39 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @_gNgDebugLevel, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %55

42:                                               ; preds = %4
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @NGLOGX(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %44)
  %46 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %47 = call i32 @_NgDebugSockaddr(%struct.sockaddr_ng* %46)
  %48 = load i32, i32* @_gNgDebugLevel, align 4
  %49 = icmp sge i32 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @_NgDebugBytes(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %60 = bitcast %struct.sockaddr_ng* %59 to %struct.sockaddr*
  %61 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %62 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @sendto(i32 %56, i32* %57, i64 %58, i32 0, %struct.sockaddr* %60, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* @_gNgDebugLevel, align 4
  %69 = icmp sge i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %72 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @NGLOG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %78

77:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %78

78:                                               ; preds = %77, %75
  %79 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @NGLOGX(i8*, i8*, i64) #2

declare dso_local i32 @_NgDebugSockaddr(%struct.sockaddr_ng*) #2

declare dso_local i32 @_NgDebugBytes(i32*, i64) #2

declare dso_local i64 @sendto(i32, i32*, i64, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @NGLOG(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
