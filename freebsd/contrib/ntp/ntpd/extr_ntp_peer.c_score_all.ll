; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_score_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_score_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, %struct.peer* }

@peer_list = common dso_local global %struct.peer* null, align 8
@FLAG_PREEMPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"score_all: at %lu score %d min %d\0A\00", align 1
@current_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @score_all(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  %3 = alloca %struct.peer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.peer* %0, %struct.peer** %2, align 8
  %7 = load %struct.peer*, %struct.peer** %2, align 8
  %8 = call i32 @score(%struct.peer* %7)
  store i32 %8, i32* %5, align 4
  store i32 100, i32* %4, align 4
  %9 = load %struct.peer*, %struct.peer** @peer_list, align 8
  store %struct.peer* %9, %struct.peer** %3, align 8
  br label %10

10:                                               ; preds = %30, %1
  %11 = load %struct.peer*, %struct.peer** %3, align 8
  %12 = icmp ne %struct.peer* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.peer*, %struct.peer** %3, align 8
  %15 = getelementptr inbounds %struct.peer, %struct.peer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FLAG_PREEMPT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.peer*, %struct.peer** %3, align 8
  %22 = call i32 @score(%struct.peer* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %20
  br label %29

29:                                               ; preds = %28, %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.peer*, %struct.peer** %3, align 8
  %32 = getelementptr inbounds %struct.peer, %struct.peer* %31, i32 0, i32 1
  %33 = load %struct.peer*, %struct.peer** %32, align 8
  store %struct.peer* %33, %struct.peer** %3, align 8
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* @current_time, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @DPRINTF(i32 1, i8* %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @score(%struct.peer*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
