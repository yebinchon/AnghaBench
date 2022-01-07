; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_peer_refresh_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_peer_refresh_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i64, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [107 x i8] c"peer_refresh_interface: %s->%s mode %d vers %d poll %d %d flags 0x%x 0x%x ttl %u key %08x: new interface: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"fd=%d, bfd=%d, name=%.16s, flags=0x%x, ifindex=%u, sin=%s\00", align 1
@INT_BROADCAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c", bcast=%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c", mask=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<NONE>\0A\00", align 1
@MDF_ACAST = common dso_local global i32 0, align 4
@MODE_BROADCAST = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"XFAC\00", align 1
@MDF_BCAST = common dso_local global i32 0, align 4
@MDF_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.peer*)* @peer_refresh_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peer_refresh_interface(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.peer* %0, %struct.peer** %2, align 8
  %5 = load %struct.peer*, %struct.peer** %2, align 8
  %6 = load %struct.peer*, %struct.peer** %2, align 8
  %7 = getelementptr inbounds %struct.peer, %struct.peer* %6, i32 0, i32 2
  %8 = call %struct.TYPE_6__* @select_peerinterface(%struct.peer* %5, i32* %7, i32* null)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.peer*, %struct.peer** %2, align 8
  %10 = getelementptr inbounds %struct.peer, %struct.peer* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.peer*, %struct.peer** %2, align 8
  %16 = getelementptr inbounds %struct.peer, %struct.peer* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = call i8* @stoa(i32* %18)
  br label %20

20:                                               ; preds = %14, %13
  %21 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %13 ], [ %19, %14 ]
  %22 = load %struct.peer*, %struct.peer** %2, align 8
  %23 = getelementptr inbounds %struct.peer, %struct.peer* %22, i32 0, i32 2
  %24 = call i8* @stoa(i32* %23)
  %25 = load %struct.peer*, %struct.peer** %2, align 8
  %26 = getelementptr inbounds %struct.peer, %struct.peer* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.peer*, %struct.peer** %2, align 8
  %29 = getelementptr inbounds %struct.peer, %struct.peer* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.peer*, %struct.peer** %2, align 8
  %32 = getelementptr inbounds %struct.peer, %struct.peer* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.peer*, %struct.peer** %2, align 8
  %35 = getelementptr inbounds %struct.peer, %struct.peer* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.peer*, %struct.peer** %2, align 8
  %38 = getelementptr inbounds %struct.peer, %struct.peer* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.peer*, %struct.peer** %2, align 8
  %41 = getelementptr inbounds %struct.peer, %struct.peer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.peer*, %struct.peer** %2, align 8
  %44 = getelementptr inbounds %struct.peer, %struct.peer* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.peer*, %struct.peer** %2, align 8
  %47 = getelementptr inbounds %struct.peer, %struct.peer* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @DPRINTF(i32 4, i8* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %90

54:                                               ; preds = %20
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = call i8* @stoa(i32* %71)
  %73 = call i32 @DPRINTF(i32 4, i8* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @INT_BROADCAST, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %54
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = call i8* @stoa(i32* %82)
  %84 = call i32 @DPRINTF(i32 4, i8* %83)
  br label %85

85:                                               ; preds = %80, %54
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = call i8* @stoa(i32* %87)
  %89 = call i32 @DPRINTF(i32 4, i8* %88)
  br label %92

90:                                               ; preds = %20
  %91 = call i32 @DPRINTF(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = load %struct.peer*, %struct.peer** %2, align 8
  %94 = getelementptr inbounds %struct.peer, %struct.peer* %93, i32 0, i32 3
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %4, align 8
  %96 = load %struct.peer*, %struct.peer** %2, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = call i32 @set_peerdstadr(%struct.peer* %96, %struct.TYPE_6__* %97)
  %99 = load %struct.peer*, %struct.peer** %2, align 8
  %100 = getelementptr inbounds %struct.peer, %struct.peer* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = icmp ne %struct.TYPE_6__* %101, null
  br i1 %102, label %103, label %154

103:                                              ; preds = %92
  %104 = load %struct.peer*, %struct.peer** %2, align 8
  %105 = getelementptr inbounds %struct.peer, %struct.peer* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = icmp ne %struct.TYPE_6__* %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load i32, i32* @MDF_ACAST, align 4
  %111 = load %struct.peer*, %struct.peer** %2, align 8
  %112 = getelementptr inbounds %struct.peer, %struct.peer* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %109
  %117 = load i64, i64* @MODE_BROADCAST, align 8
  %118 = load %struct.peer*, %struct.peer** %2, align 8
  %119 = getelementptr inbounds %struct.peer, %struct.peer* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.peer*, %struct.peer** %2, align 8
  %124 = call i32 @peer_clear(%struct.peer* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %116, %109, %103
  %126 = load i32, i32* @MDF_BCAST, align 4
  %127 = load %struct.peer*, %struct.peer** %2, align 8
  %128 = getelementptr inbounds %struct.peer, %struct.peer* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.peer*, %struct.peer** %2, align 8
  %134 = getelementptr inbounds %struct.peer, %struct.peer* %133, i32 0, i32 3
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load %struct.peer*, %struct.peer** %2, align 8
  %137 = getelementptr inbounds %struct.peer, %struct.peer* %136, i32 0, i32 2
  %138 = call i32 @enable_broadcast(%struct.TYPE_6__* %135, i32* %137)
  br label %139

139:                                              ; preds = %132, %125
  %140 = load i32, i32* @MDF_MCAST, align 4
  %141 = load %struct.peer*, %struct.peer** %2, align 8
  %142 = getelementptr inbounds %struct.peer, %struct.peer* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load %struct.peer*, %struct.peer** %2, align 8
  %148 = getelementptr inbounds %struct.peer, %struct.peer* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load %struct.peer*, %struct.peer** %2, align 8
  %151 = getelementptr inbounds %struct.peer, %struct.peer* %150, i32 0, i32 2
  %152 = call i32 @enable_multicast_if(%struct.TYPE_6__* %149, i32* %151)
  br label %153

153:                                              ; preds = %146, %139
  br label %154

154:                                              ; preds = %153, %92
  ret void
}

declare dso_local %struct.TYPE_6__* @select_peerinterface(%struct.peer*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i32 @set_peerdstadr(%struct.peer*, %struct.TYPE_6__*) #1

declare dso_local i32 @peer_clear(%struct.peer*, i8*) #1

declare dso_local i32 @enable_broadcast(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @enable_multicast_if(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
