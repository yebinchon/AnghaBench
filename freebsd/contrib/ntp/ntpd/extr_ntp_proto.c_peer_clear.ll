; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_peer_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_peer_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i32, i64, i32, i32, i64*, i32, i32, i32, i32, i8*, %struct.TYPE_2__*, i32, i32, i32, i8**, i32, i32, i32, i8*, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@MAXDISPERSE = common dso_local global i8* null, align 8
@sys_precision = common dso_local global i32 0, align 4
@MODE_BCLIENT = common dso_local global i64 0, align 8
@FLAG_XLEAVE = common dso_local global i32 0, align 4
@NTP_SHIFT = common dso_local global i64 0, align 8
@LEAP_NOTINSYNC = common dso_local global i32 0, align 4
@STRATUM_UNSPEC = common dso_local global i32 0, align 4
@current_time = common dso_local global i8* null, align 8
@initializing = common dso_local global i64 0, align 8
@peer_associations = common dso_local global i64 0, align 8
@MODE_PASSIVE = common dso_local global i64 0, align 8
@ntp_minpkt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"peer_clear: at %ld next %ld associd %d refid %s\0A\00", align 1
@FLAG_REFCLOCK = common dso_local global i32 0, align 4
@NTP_REFRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peer_clear(%struct.peer* %0, i8* %1) #0 {
  %3 = alloca %struct.peer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.peer* %0, %struct.peer** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.peer*, %struct.peer** %3, align 8
  %8 = getelementptr inbounds %struct.peer, %struct.peer* %7, i32 0, i32 16
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.peer*, %struct.peer** %3, align 8
  %11 = call i32 @CLEAR_TO_ZERO(%struct.peer* %10)
  %12 = load %struct.peer*, %struct.peer** %3, align 8
  %13 = call i32 @LEN_CLEAR_TO_ZERO(%struct.peer* %12)
  %14 = call i32 @memset(i32 %11, i32 0, i32 %13)
  %15 = load %struct.peer*, %struct.peer** %3, align 8
  %16 = getelementptr inbounds %struct.peer, %struct.peer* %15, i32 0, i32 20
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.peer*, %struct.peer** %3, align 8
  %19 = getelementptr inbounds %struct.peer, %struct.peer* %18, i32 0, i32 21
  store i32 %17, i32* %19, align 4
  %20 = load %struct.peer*, %struct.peer** %3, align 8
  %21 = getelementptr inbounds %struct.peer, %struct.peer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.peer*, %struct.peer** %3, align 8
  %24 = getelementptr inbounds %struct.peer, %struct.peer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** @MAXDISPERSE, align 8
  %26 = load %struct.peer*, %struct.peer** %3, align 8
  %27 = getelementptr inbounds %struct.peer, %struct.peer* %26, i32 0, i32 19
  store i8* %25, i8** %27, align 8
  %28 = load %struct.peer*, %struct.peer** %3, align 8
  %29 = call i32 @peer_unfit(%struct.peer* %28)
  %30 = load %struct.peer*, %struct.peer** %3, align 8
  %31 = getelementptr inbounds %struct.peer, %struct.peer* %30, i32 0, i32 18
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @sys_precision, align 4
  %33 = call i32 @LOGTOD(i32 %32)
  %34 = load %struct.peer*, %struct.peer** %3, align 8
  %35 = getelementptr inbounds %struct.peer, %struct.peer* %34, i32 0, i32 17
  store i32 %33, i32* %35, align 4
  %36 = load %struct.peer*, %struct.peer** %3, align 8
  %37 = getelementptr inbounds %struct.peer, %struct.peer* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MODE_BCLIENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.peer*, %struct.peer** %3, align 8
  %44 = getelementptr inbounds %struct.peer, %struct.peer* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %2
  %46 = load %struct.peer*, %struct.peer** %3, align 8
  %47 = getelementptr inbounds %struct.peer, %struct.peer* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FLAG_XLEAVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.peer*, %struct.peer** %3, align 8
  %54 = getelementptr inbounds %struct.peer, %struct.peer* %53, i32 0, i32 4
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %45
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @NTP_SHIFT, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.peer*, %struct.peer** %3, align 8
  %63 = getelementptr inbounds %struct.peer, %struct.peer* %62, i32 0, i32 5
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %61, i64* %66, align 8
  %67 = load i8*, i8** @MAXDISPERSE, align 8
  %68 = load %struct.peer*, %struct.peer** %3, align 8
  %69 = getelementptr inbounds %struct.peer, %struct.peer* %68, i32 0, i32 15
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %67, i8** %72, align 8
  br label %73

73:                                               ; preds = %60
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %56

76:                                               ; preds = %56
  %77 = load i32, i32* @LEAP_NOTINSYNC, align 4
  %78 = load %struct.peer*, %struct.peer** %3, align 8
  %79 = getelementptr inbounds %struct.peer, %struct.peer* %78, i32 0, i32 14
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @STRATUM_UNSPEC, align 4
  %81 = load %struct.peer*, %struct.peer** %3, align 8
  %82 = getelementptr inbounds %struct.peer, %struct.peer* %81, i32 0, i32 13
  store i32 %80, i32* %82, align 4
  %83 = load %struct.peer*, %struct.peer** %3, align 8
  %84 = getelementptr inbounds %struct.peer, %struct.peer* %83, i32 0, i32 12
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @memcpy(i32* %84, i8* %85, i32 4)
  %87 = load i8*, i8** @current_time, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.peer*, %struct.peer** %3, align 8
  %90 = getelementptr inbounds %struct.peer, %struct.peer* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load %struct.peer*, %struct.peer** %3, align 8
  %92 = getelementptr inbounds %struct.peer, %struct.peer* %91, i32 0, i32 7
  store i32 %88, i32* %92, align 4
  %93 = load %struct.peer*, %struct.peer** %3, align 8
  %94 = getelementptr inbounds %struct.peer, %struct.peer* %93, i32 0, i32 6
  store i32 %88, i32* %94, align 8
  %95 = load i64, i64* @initializing, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %76
  %98 = load i64, i64* @peer_associations, align 8
  %99 = load %struct.peer*, %struct.peer** %3, align 8
  %100 = getelementptr inbounds %struct.peer, %struct.peer* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  br label %130

105:                                              ; preds = %76
  %106 = load i64, i64* @MODE_PASSIVE, align 8
  %107 = load %struct.peer*, %struct.peer** %3, align 8
  %108 = getelementptr inbounds %struct.peer, %struct.peer* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i64, i64* @ntp_minpkt, align 8
  %113 = load %struct.peer*, %struct.peer** %3, align 8
  %114 = getelementptr inbounds %struct.peer, %struct.peer* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 8
  br label %129

119:                                              ; preds = %105
  %120 = call i32 (...) @ntp_random()
  %121 = load %struct.peer*, %struct.peer** %3, align 8
  %122 = getelementptr inbounds %struct.peer, %struct.peer* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = srem i32 %120, %123
  %125 = load %struct.peer*, %struct.peer** %3, align 8
  %126 = getelementptr inbounds %struct.peer, %struct.peer* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %119, %111
  br label %130

130:                                              ; preds = %129, %97
  %131 = load i8*, i8** @current_time, align 8
  %132 = load %struct.peer*, %struct.peer** %3, align 8
  %133 = getelementptr inbounds %struct.peer, %struct.peer* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.peer*, %struct.peer** %3, align 8
  %136 = getelementptr inbounds %struct.peer, %struct.peer* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @DPRINTF(i32 1, i8* %138)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @CLEAR_TO_ZERO(%struct.peer*) #1

declare dso_local i32 @LEN_CLEAR_TO_ZERO(%struct.peer*) #1

declare dso_local i32 @peer_unfit(%struct.peer*) #1

declare dso_local i32 @LOGTOD(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @ntp_random(...) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
