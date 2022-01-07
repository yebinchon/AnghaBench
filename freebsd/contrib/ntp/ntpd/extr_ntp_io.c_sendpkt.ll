; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_sendpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_sendpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, %struct.TYPE_16__, %struct.interface*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.pkt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@mc4_list = common dso_local global %struct.interface* null, align 8
@mc6_list = common dso_local global %struct.interface* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"%ssendpkt(dst=%s, ttl=%d, len=%d): no interface - IGNORED\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09MCAST\09***** \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%ssendpkt(%d, dst=%s, src=%s, ttl=%d, len=%d)\0A\00", align 1
@packets_notsent = common dso_local global i32 0, align 4
@packets_sent = common dso_local global i32 0, align 4
@MIN_V4_PKT_LEN = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_MULTICAST_HOPS = common dso_local global i32 0, align 4
@IP_MULTICAST_TTL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendpkt(%struct.TYPE_16__* %0, %struct.interface* %1, i32 %2, %struct.pkt* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.interface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.interface* %1, %struct.interface** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pkt* %3, %struct.pkt** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = bitcast %struct.TYPE_17__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = call i32 @IS_MCAST(%struct.TYPE_16__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load %struct.interface*, %struct.interface** %7, align 8
  store %struct.interface* %23, %struct.interface** %11, align 8
  br label %34

24:                                               ; preds = %5
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = call i64 @IS_IPV4(%struct.TYPE_16__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load %struct.interface*, %struct.interface** @mc4_list, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load %struct.interface*, %struct.interface** @mc6_list, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi %struct.interface* [ %29, %28 ], [ %31, %30 ]
  store %struct.interface* %33, %struct.interface** %11, align 8
  br label %34

34:                                               ; preds = %32, %22
  %35 = load %struct.interface*, %struct.interface** %11, align 8
  %36 = icmp eq %struct.interface* null, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call i32 @stoa(%struct.TYPE_16__* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @DPRINTF(i32 2, i8* %47)
  br label %164

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %109, %49
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load %struct.interface*, %struct.interface** %11, align 8
  %56 = getelementptr inbounds %struct.interface, %struct.interface* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = call i32 @stoa(%struct.TYPE_16__* %58)
  %60 = load %struct.interface*, %struct.interface** %11, align 8
  %61 = getelementptr inbounds %struct.interface, %struct.interface* %60, i32 0, i32 1
  %62 = call i32 @stoa(%struct.TYPE_16__* %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @DPRINTF(i32 2, i8* %66)
  %68 = load %struct.interface*, %struct.interface** %11, align 8
  %69 = getelementptr inbounds %struct.interface, %struct.interface* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.pkt*, %struct.pkt** %9, align 8
  %72 = bitcast %struct.pkt* %71 to i8*
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = call i32 @SOCKLEN(%struct.TYPE_16__* %76)
  %78 = call i32 @sendto(i32 %70, i8* %72, i32 %73, i32 0, i32* %75, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %88

81:                                               ; preds = %50
  %82 = load %struct.interface*, %struct.interface** %11, align 8
  %83 = getelementptr inbounds %struct.interface, %struct.interface* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @packets_notsent, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @packets_notsent, align 4
  br label %95

88:                                               ; preds = %50
  %89 = load %struct.interface*, %struct.interface** %11, align 8
  %90 = getelementptr inbounds %struct.interface, %struct.interface* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @packets_sent, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @packets_sent, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.interface*, %struct.interface** %11, align 8
  %100 = getelementptr inbounds %struct.interface, %struct.interface* %99, i32 0, i32 2
  %101 = load %struct.interface*, %struct.interface** %100, align 8
  store %struct.interface* %101, %struct.interface** %11, align 8
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.interface*, %struct.interface** %11, align 8
  %108 = icmp ne %struct.interface* %107, null
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ false, %103 ], [ %108, %106 ]
  br i1 %110, label %50, label %111

111:                                              ; preds = %109
  %112 = load %struct.interface*, %struct.interface** %11, align 8
  %113 = icmp ne %struct.interface* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.interface*, %struct.interface** %11, align 8
  %116 = getelementptr inbounds %struct.interface, %struct.interface* %115, i32 0, i32 1
  br label %118

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi %struct.TYPE_16__* [ %116, %114 ], [ null, %117 ]
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = load %struct.pkt*, %struct.pkt** %9, align 8
  %122 = getelementptr inbounds %struct.pkt, %struct.pkt* %121, i32 0, i32 10
  %123 = load %struct.pkt*, %struct.pkt** %9, align 8
  %124 = getelementptr inbounds %struct.pkt, %struct.pkt* %123, i32 0, i32 9
  %125 = load %struct.pkt*, %struct.pkt** %9, align 8
  %126 = getelementptr inbounds %struct.pkt, %struct.pkt* %125, i32 0, i32 8
  %127 = load %struct.pkt*, %struct.pkt** %9, align 8
  %128 = getelementptr inbounds %struct.pkt, %struct.pkt* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @PKT_MODE(i32 %129)
  %131 = load %struct.pkt*, %struct.pkt** %9, align 8
  %132 = getelementptr inbounds %struct.pkt, %struct.pkt* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @PKT_VERSION(i32 %133)
  %135 = load %struct.pkt*, %struct.pkt** %9, align 8
  %136 = getelementptr inbounds %struct.pkt, %struct.pkt* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @PKT_LEAP(i32 %137)
  %139 = load %struct.pkt*, %struct.pkt** %9, align 8
  %140 = getelementptr inbounds %struct.pkt, %struct.pkt* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pkt*, %struct.pkt** %9, align 8
  %143 = getelementptr inbounds %struct.pkt, %struct.pkt* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.pkt*, %struct.pkt** %9, align 8
  %146 = getelementptr inbounds %struct.pkt, %struct.pkt* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pkt*, %struct.pkt** %9, align 8
  %149 = getelementptr inbounds %struct.pkt, %struct.pkt* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.pkt*, %struct.pkt** %9, align 8
  %152 = getelementptr inbounds %struct.pkt, %struct.pkt* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.pkt*, %struct.pkt** %9, align 8
  %155 = getelementptr inbounds %struct.pkt, %struct.pkt* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @MIN_V4_PKT_LEN, align 8
  %160 = sub nsw i64 %158, %159
  %161 = load %struct.pkt*, %struct.pkt** %9, align 8
  %162 = getelementptr inbounds %struct.pkt, %struct.pkt* %161, i32 0, i32 0
  %163 = call i32 @record_raw_stats(%struct.TYPE_16__* %119, %struct.TYPE_16__* %120, i32* %122, i32* %124, i32* %126, %struct.TYPE_17__* %16, i32 %130, i32 %134, i32 %138, i32 %141, i32 %144, i32 %147, i32 %150, i32 %153, i32 %156, i64 %160, i32* %162)
  br label %164

164:                                              ; preds = %118, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IS_MCAST(%struct.TYPE_16__*) #2

declare dso_local i64 @IS_IPV4(%struct.TYPE_16__*) #2

declare dso_local i32 @DPRINTF(i32, i8*) #2

declare dso_local i32 @stoa(%struct.TYPE_16__*) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @SOCKLEN(%struct.TYPE_16__*) #2

declare dso_local i32 @record_raw_stats(%struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*, i32*, %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*) #2

declare dso_local i32 @PKT_MODE(i32) #2

declare dso_local i32 @PKT_VERSION(i32) #2

declare dso_local i32 @PKT_LEAP(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
