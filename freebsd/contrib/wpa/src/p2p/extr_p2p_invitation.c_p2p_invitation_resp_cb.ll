; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_invitation.c_p2p_invitation_resp_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_invitation.c_p2p_invitation_resp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32)* }

@.str = private unnamed_addr constant [44 x i8] c"Invitation Response TX callback: success=%d\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"Assume Invitation Response was actually received by the peer even though Ack was not reported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_invitation_resp_cb(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 7
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 7
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %12(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %23 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %22, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 7
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32)** %28, align 8
  %30 = icmp ne i32 (i32, i32, i32, i32, i32, i32, i32, i32)* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %24
  %32 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %33 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %32, i32 0, i32 7
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32)** %35, align 8
  %37 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %38 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %37, i32 0, i32 7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %43 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %46 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %49 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %52 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %58 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %61 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %36(i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %31, %24
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
