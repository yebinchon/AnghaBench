; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_valid_NAK.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_valid_NAK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i64, i32, i32, i32 }
%struct.recvbuf = type { i32, %struct.pkt }
%struct.pkt = type { i32 }

@MIN_V4_PKT_LEN = common dso_local global i32 0, align 4
@NONAK = common dso_local global i32 0, align 4
@MODE_SERVER = common dso_local global i64 0, align 8
@MODE_ACTIVE = common dso_local global i64 0, align 8
@MODE_PASSIVE = common dso_local global i64 0, align 8
@INVALIDNAK = common dso_local global i32 0, align 4
@FLAG_SKEY = common dso_local global i32 0, align 4
@VALIDNAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_NAK(%struct.peer* %0, %struct.recvbuf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.peer*, align 8
  %6 = alloca %struct.recvbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pkt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.peer* %0, %struct.peer** %5, align 8
  store %struct.recvbuf* %1, %struct.recvbuf** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @MIN_V4_PKT_LEN, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.recvbuf*, %struct.recvbuf** %6, align 8
  %16 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NONAK, align 4
  store i32 %21, i32* %4, align 4
  br label %107

22:                                               ; preds = %3
  %23 = load %struct.recvbuf*, %struct.recvbuf** %6, align 8
  %24 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @NONAK, align 4
  store i32 %31, i32* %4, align 4
  br label %107

32:                                               ; preds = %22
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MODE_SERVER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @MODE_ACTIVE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @MODE_PASSIVE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @INVALIDNAK, align 4
  store i32 %45, i32* %4, align 4
  br label %107

46:                                               ; preds = %40, %36, %32
  %47 = load %struct.recvbuf*, %struct.recvbuf** %6, align 8
  %48 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %47, i32 0, i32 1
  store %struct.pkt* %48, %struct.pkt** %10, align 8
  %49 = load %struct.pkt*, %struct.pkt** %10, align 8
  %50 = bitcast %struct.pkt* %49 to i32*
  %51 = load i32, i32* %8, align 4
  %52 = sdiv i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohl(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @INVALIDNAK, align 4
  store i32 %60, i32* %4, align 4
  br label %107

61:                                               ; preds = %46
  %62 = load %struct.peer*, %struct.peer** %5, align 8
  %63 = icmp ne %struct.peer* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.peer*, %struct.peer** %5, align 8
  %66 = getelementptr inbounds %struct.peer, %struct.peer* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = load %struct.peer*, %struct.peer** %5, align 8
  %71 = getelementptr inbounds %struct.peer, %struct.peer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FLAG_SKEY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69, %61
  %77 = load i32, i32* @INVALIDNAK, align 4
  store i32 %77, i32* %4, align 4
  br label %107

78:                                               ; preds = %69, %64
  %79 = load %struct.pkt*, %struct.pkt** %10, align 8
  %80 = getelementptr inbounds %struct.pkt, %struct.pkt* %79, i32 0, i32 0
  %81 = call i32 @NTOHL_FP(i32* %80, i32* %12)
  %82 = load %struct.peer*, %struct.peer** %5, align 8
  %83 = getelementptr inbounds %struct.peer, %struct.peer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.peer*, %struct.peer** %5, align 8
  %88 = getelementptr inbounds %struct.peer, %struct.peer* %87, i32 0, i32 3
  store i32* %88, i32** %13, align 8
  br label %92

89:                                               ; preds = %78
  %90 = load %struct.peer*, %struct.peer** %5, align 8
  %91 = getelementptr inbounds %struct.peer, %struct.peer* %90, i32 0, i32 2
  store i32* %91, i32** %13, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = call i64 @L_ISZERO(i32* %12)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load i32*, i32** %13, align 8
  %97 = call i64 @L_ISZERO(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @L_ISEQU(i32* %12, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99, %95, %92
  %104 = load i32, i32* @INVALIDNAK, align 4
  store i32 %104, i32* %4, align 4
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @VALIDNAK, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %103, %76, %59, %44, %30, %20
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i64 @L_ISZERO(i32*) #1

declare dso_local i32 @L_ISEQU(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
