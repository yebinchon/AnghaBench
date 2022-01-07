; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_need_rekeying.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_need_rekeying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, i32*, %struct.session_state* }
%struct.session_state = type { i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__**, i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SSH_BUG_NOREKEY = common dso_local global i32 0, align 4
@MAX_PACKETS = common dso_local global i64 0, align 8
@MODE_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i32)* @ssh_packet_need_rekeying to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_packet_need_rekeying(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.session_state*, align 8
  %7 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ssh*, %struct.ssh** %4, align 8
  %9 = getelementptr inbounds %struct.ssh, %struct.ssh* %8, i32 0, i32 2
  %10 = load %struct.session_state*, %struct.session_state** %9, align 8
  store %struct.session_state* %10, %struct.session_state** %6, align 8
  %11 = load %struct.session_state*, %struct.session_state** %6, align 8
  %12 = getelementptr inbounds %struct.session_state, %struct.session_state* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %124

16:                                               ; preds = %2
  %17 = load %struct.ssh*, %struct.ssh** %4, align 8
  %18 = getelementptr inbounds %struct.ssh, %struct.ssh* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.ssh*, %struct.ssh** %4, align 8
  %23 = call i64 @ssh_packet_is_rekeying(%struct.ssh* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16
  store i32 0, i32* %3, align 4
  br label %124

26:                                               ; preds = %21
  %27 = load %struct.ssh*, %struct.ssh** %4, align 8
  %28 = getelementptr inbounds %struct.ssh, %struct.ssh* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SSH_BUG_NOREKEY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %124

34:                                               ; preds = %26
  %35 = load %struct.session_state*, %struct.session_state** %6, align 8
  %36 = getelementptr inbounds %struct.session_state, %struct.session_state* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.session_state*, %struct.session_state** %6, align 8
  %42 = getelementptr inbounds %struct.session_state, %struct.session_state* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %124

47:                                               ; preds = %40, %34
  %48 = load %struct.session_state*, %struct.session_state** %6, align 8
  %49 = getelementptr inbounds %struct.session_state, %struct.session_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.session_state*, %struct.session_state** %6, align 8
  %54 = getelementptr inbounds %struct.session_state, %struct.session_state* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.session_state*, %struct.session_state** %6, align 8
  %57 = getelementptr inbounds %struct.session_state, %struct.session_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i64 (...) @monotime()
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %124

63:                                               ; preds = %52, %47
  %64 = load %struct.session_state*, %struct.session_state** %6, align 8
  %65 = getelementptr inbounds %struct.session_state, %struct.session_state* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MAX_PACKETS, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.session_state*, %struct.session_state** %6, align 8
  %72 = getelementptr inbounds %struct.session_state, %struct.session_state* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MAX_PACKETS, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %63
  store i32 1, i32* %3, align 4
  br label %124

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.session_state*, %struct.session_state** %6, align 8
  %81 = getelementptr inbounds %struct.session_state, %struct.session_state* %80, i32 0, i32 5
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i64, i64* @MODE_OUT, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ROUNDUP(i32 %79, i32 %88)
  store i64 %89, i64* %7, align 8
  %90 = load %struct.session_state*, %struct.session_state** %6, align 8
  %91 = getelementptr inbounds %struct.session_state, %struct.session_state* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %78
  %95 = load %struct.session_state*, %struct.session_state** %6, align 8
  %96 = getelementptr inbounds %struct.session_state, %struct.session_state* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.session_state*, %struct.session_state** %6, align 8
  %102 = getelementptr inbounds %struct.session_state, %struct.session_state* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %121, label %105

105:                                              ; preds = %94, %78
  %106 = load %struct.session_state*, %struct.session_state** %6, align 8
  %107 = getelementptr inbounds %struct.session_state, %struct.session_state* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.session_state*, %struct.session_state** %6, align 8
  %112 = getelementptr inbounds %struct.session_state, %struct.session_state* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.session_state*, %struct.session_state** %6, align 8
  %116 = getelementptr inbounds %struct.session_state, %struct.session_state* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %114, %117
  br label %119

119:                                              ; preds = %110, %105
  %120 = phi i1 [ false, %105 ], [ %118, %110 ]
  br label %121

121:                                              ; preds = %119, %94
  %122 = phi i1 [ true, %94 ], [ %120, %119 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %77, %62, %46, %33, %25, %15
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @ssh_packet_is_rekeying(%struct.ssh*) #1

declare dso_local i64 @monotime(...) #1

declare dso_local i64 @ROUNDUP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
