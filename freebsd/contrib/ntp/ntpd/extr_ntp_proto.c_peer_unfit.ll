; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_peer_unfit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_peer_unfit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i64, i32, i32, i32, i32, i32 }

@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@sys_floor = common dso_local global i32 0, align 4
@sys_ceiling = common dso_local global i32 0, align 4
@TEST10 = common dso_local global i32 0, align 4
@FLAG_REFCLOCK = common dso_local global i32 0, align 4
@sys_maxdist = common dso_local global i64 0, align 8
@clock_phi = common dso_local global i32 0, align 4
@TEST11 = common dso_local global i32 0, align 4
@TEST12 = common dso_local global i32 0, align 4
@FLAG_NOSELECT = common dso_local global i32 0, align 4
@TEST13 = common dso_local global i32 0, align 4
@PEER_TEST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peer_unfit(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  %3 = alloca i32, align 4
  store %struct.peer* %0, %struct.peer** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.peer*, %struct.peer** %2, align 8
  %5 = getelementptr inbounds %struct.peer, %struct.peer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.peer*, %struct.peer** %2, align 8
  %11 = getelementptr inbounds %struct.peer, %struct.peer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @sys_floor, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.peer*, %struct.peer** %2, align 8
  %17 = getelementptr inbounds %struct.peer, %struct.peer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @sys_ceiling, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %9, %1
  %22 = load i32, i32* @TEST10, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.peer*, %struct.peer** %2, align 8
  %27 = getelementptr inbounds %struct.peer, %struct.peer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FLAG_REFCLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %25
  %33 = load %struct.peer*, %struct.peer** %2, align 8
  %34 = call i64 @root_distance(%struct.peer* %33)
  %35 = load i64, i64* @sys_maxdist, align 8
  %36 = load i32, i32* @clock_phi, align 4
  %37 = load %struct.peer*, %struct.peer** %2, align 8
  %38 = getelementptr inbounds %struct.peer, %struct.peer* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ULOGTOD(i32 %39)
  %41 = mul nsw i32 %36, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %35, %42
  %44 = icmp sge i64 %34, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @TEST11, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %32, %25
  %50 = load %struct.peer*, %struct.peer** %2, align 8
  %51 = getelementptr inbounds %struct.peer, %struct.peer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.peer*, %struct.peer** %2, align 8
  %56 = call i64 @local_refid(%struct.peer* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @TEST12, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %54, %49
  %63 = load %struct.peer*, %struct.peer** %2, align 8
  %64 = getelementptr inbounds %struct.peer, %struct.peer* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.peer*, %struct.peer** %2, align 8
  %69 = getelementptr inbounds %struct.peer, %struct.peer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FLAG_NOSELECT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67, %62
  %75 = load i32, i32* @TEST13, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* @PEER_TEST_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.peer*, %struct.peer** %2, align 8
  %82 = getelementptr inbounds %struct.peer, %struct.peer* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.peer*, %struct.peer** %2, align 8
  %87 = getelementptr inbounds %struct.peer, %struct.peer* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @root_distance(%struct.peer*) #1

declare dso_local i32 @ULOGTOD(i32) #1

declare dso_local i64 @local_refid(%struct.peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
