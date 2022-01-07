; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgRecvMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgRecvMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_ng = type { i32 }
%struct.sockaddr = type { i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@NGSA_OVERHEAD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@_gNgDebugLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"RECEIVED %s:\00", align 1
@NGF_RESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"RESPONSE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NgRecvMsg(i32 %0, %struct.ng_mesg* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_ng*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.ng_mesg* %1, %struct.ng_mesg** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @NG_PATHSIZ, align 4
  %18 = load i32, i32* @NGSA_OVERHEAD, align 4
  %19 = add nsw i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = bitcast i32* %22 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %23, %struct.sockaddr_ng** %12, align 8
  %24 = mul nuw i64 4, %20
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %30 = bitcast %struct.sockaddr_ng* %29 to %struct.sockaddr*
  %31 = call i32 @recvfrom(i32 %26, %struct.ng_mesg* %27, i64 %28, i32 0, %struct.sockaddr* %30, i32* %13)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @_gNgDebugLevel, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @NGLOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  br label %74

41:                                               ; preds = %4
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %47 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NG_PATHSIZ, align 4
  %50 = call i32 @strlcpy(i8* %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* @_gNgDebugLevel, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %56 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NGF_RESP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %64 = call i32 @NGLOGX(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %66 = call i32 @_NgDebugSockaddr(%struct.sockaddr_ng* %65)
  %67 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %68 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %12, align 8
  %69 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @_NgDebugMsg(%struct.ng_mesg* %67, i32 %70)
  br label %72

72:                                               ; preds = %54, %51
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %76

74:                                               ; preds = %40
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recvfrom(i32, %struct.ng_mesg*, i64, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @NGLOG(i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @NGLOGX(i8*, i8*) #2

declare dso_local i32 @_NgDebugSockaddr(%struct.sockaddr_ng*) #2

declare dso_local i32 @_NgDebugMsg(%struct.ng_mesg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
