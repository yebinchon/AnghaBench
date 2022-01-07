; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsdp/extr_service.c_sdp_change_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsdp/extr_service.c_sdp_change_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.iovec = type { i32, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@SDP_SESSION_LOCAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SDP_LOCAL_MTU = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i64 0, align 8
@SDP_PDU_SERVICE_CHANGE_REQUEST = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_change_service(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca [3 x %struct.iovec], align 16
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %110

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SDP_SESSION_LOCAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25, %22, %19
  %33 = load i64, i64* @EINVAL, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  store i32 -1, i32* %5, align 4
  br label %110

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 28, %38
  %40 = load i32, i32* @SDP_LOCAL_MTU, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i64, i64* @EMSGSIZE, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  store i32 -1, i32* %5, align 4
  br label %110

47:                                               ; preds = %36
  %48 = load i32, i32* @SDP_PDU_SERVICE_CHANGE_REQUEST, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = call i8* @htons(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i8* @htons(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @htons(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = bitcast %struct.TYPE_5__* %12 to i8*
  %66 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 0
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 0
  store i32 24, i32* %69, align 16
  %70 = bitcast i32* %7 to i8*
  %71 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 1
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 1
  %74 = getelementptr inbounds %struct.iovec, %struct.iovec* %73, i32 0, i32 0
  store i32 4, i32* %74, align 16
  %75 = load i32*, i32** %8, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 2
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 2
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 16
  br label %82

82:                                               ; preds = %95, %47
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 0
  %87 = call i32 @writev(i32 %85, %struct.iovec* %86, i32 3)
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EINTR, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %82, label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i64, i64* @errno, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  store i32 -1, i32* %5, align 4
  br label %110

104:                                              ; preds = %97
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %106 = call i64 @sdp_receive_error_pdu(%struct.TYPE_4__* %105)
  %107 = icmp slt i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 -1, i32 0
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %104, %100, %43, %32, %18
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i64 @sdp_receive_error_pdu(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
