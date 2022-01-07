; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_peer_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_peer_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32 }

@initial_association_ID = common dso_local global i32 0, align 4
@current_association_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peer_cleanup() #0 {
  %1 = alloca %struct.peer*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @initial_association_ID, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %21, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @current_association_ID, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.peer* @findpeerbyassoc(i32 %12)
  store %struct.peer* %13, %struct.peer** %1, align 8
  %14 = load %struct.peer*, %struct.peer** %1, align 8
  %15 = icmp ne %struct.peer* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.peer*, %struct.peer** %1, align 8
  %18 = call i32 @unpeer(%struct.peer* %17)
  br label %19

19:                                               ; preds = %16, %11
  br label %20

20:                                               ; preds = %19, %8
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32, i32* @current_association_ID, align 4
  %26 = call %struct.peer* @findpeerbyassoc(i32 %25)
  store %struct.peer* %26, %struct.peer** %1, align 8
  %27 = load %struct.peer*, %struct.peer** %1, align 8
  %28 = icmp ne %struct.peer* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.peer*, %struct.peer** %1, align 8
  %31 = call i32 @unpeer(%struct.peer* %30)
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.peer* @findpeerbyassoc(i32) #1

declare dso_local i32 @unpeer(%struct.peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
