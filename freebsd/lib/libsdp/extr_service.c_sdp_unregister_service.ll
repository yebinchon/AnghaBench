; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsdp/extr_service.c_sdp_unregister_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsdp/extr_service.c_sdp_unregister_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.iovec = type { i32, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@SDP_SESSION_LOCAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SDP_LOCAL_MTU = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i64 0, align 8
@SDP_PDU_SERVICE_UNREGISTER_REQUEST = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_unregister_service(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca [2 x %struct.iovec], align 16
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SDP_SESSION_LOCAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* @EINVAL, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  store i32 -1, i32* %3, align 4
  br label %85

26:                                               ; preds = %15
  %27 = load i32, i32* @SDP_LOCAL_MTU, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 28, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @EMSGSIZE, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  store i32 -1, i32* %3, align 4
  br label %85

34:                                               ; preds = %26
  %35 = load i32, i32* @SDP_PDU_SERVICE_UNREGISTER_REQUEST, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = call i8* @htons(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = call i8* @htons(i32 4)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @htonl(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = bitcast %struct.TYPE_5__* %8 to i8*
  %48 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %7, i64 0, i64 0
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %7, i64 0, i64 0
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 0
  store i32 24, i32* %51, align 16
  %52 = bitcast i32* %5 to i8*
  %53 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %7, i64 0, i64 1
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %7, i64 0, i64 1
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 0
  store i32 4, i32* %56, align 16
  br label %57

57:                                               ; preds = %70, %34
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %7, i64 0, i64 0
  %62 = call i32 @writev(i32 %60, %struct.iovec* %61, i32 2)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINTR, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  br i1 %71, label %57, label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* @errno, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  store i32 -1, i32* %3, align 4
  br label %85

79:                                               ; preds = %72
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = call i64 @sdp_receive_error_pdu(%struct.TYPE_4__* %80)
  %82 = icmp slt i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 -1, i32 0
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %75, %30, %22, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i64 @sdp_receive_error_pdu(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
