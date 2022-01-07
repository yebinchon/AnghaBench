; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_clear_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_clear_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, %struct.peer* }

@peer_list = common dso_local global %struct.peer* null, align 8
@MDF_TXONLY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clear_all: at %lu\0A\00", align 1
@current_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_all() #0 {
  %1 = alloca %struct.peer*, align 8
  %2 = load %struct.peer*, %struct.peer** @peer_list, align 8
  store %struct.peer* %2, %struct.peer** %1, align 8
  br label %3

3:                                                ; preds = %17, %0
  %4 = load %struct.peer*, %struct.peer** %1, align 8
  %5 = icmp ne %struct.peer* %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load i32, i32* @MDF_TXONLY_MASK, align 4
  %8 = load %struct.peer*, %struct.peer** %1, align 8
  %9 = getelementptr inbounds %struct.peer, %struct.peer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = load %struct.peer*, %struct.peer** %1, align 8
  %15 = call i32 @peer_clear(%struct.peer* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %6
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.peer*, %struct.peer** %1, align 8
  %19 = getelementptr inbounds %struct.peer, %struct.peer* %18, i32 0, i32 1
  %20 = load %struct.peer*, %struct.peer** %19, align 8
  store %struct.peer* %20, %struct.peer** %1, align 8
  br label %3

21:                                               ; preds = %3
  %22 = load i32, i32* @current_time, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DPRINTF(i32 1, i8* %24)
  ret void
}

declare dso_local i32 @peer_clear(%struct.peer*, i8*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
