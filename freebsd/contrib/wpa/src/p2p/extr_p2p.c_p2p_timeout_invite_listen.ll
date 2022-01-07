; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_invite_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_invite_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 (i32, i32, i32*, i32*, i32, i32, i32)* }

@P2P_INVITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invitation Request retry limit reached\00", align 1
@P2P_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_timeout_invite_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_timeout_invite_listen(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %16 = load i32, i32* @P2P_INVITE, align 4
  %17 = call i32 @p2p_set_state(%struct.p2p_data* %15, i32 %16)
  %18 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %19 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %23 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @p2p_invite_send(%struct.p2p_data* %18, %struct.TYPE_6__* %21, i32 %24, i32 %27)
  br label %66

29:                                               ; preds = %7, %1
  %30 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %31 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %36 = call i32 @p2p_dbg(%struct.p2p_data* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %38 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32, i32*, i32*, i32, i32, i32)*, i32 (i32, i32, i32*, i32*, i32, i32, i32)** %40, align 8
  %42 = icmp ne i32 (i32, i32, i32*, i32*, i32, i32, i32)* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %34
  %44 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %45 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32 (i32, i32, i32*, i32*, i32, i32, i32)*, i32 (i32, i32, i32*, i32*, i32, i32, i32)** %47, align 8
  %49 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %48(i32 %53, i32 -1, i32* null, i32* null, i32 %59, i32 0, i32 0)
  br label %61

61:                                               ; preds = %43, %34
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %64 = load i32, i32* @P2P_IDLE, align 4
  %65 = call i32 @p2p_set_state(%struct.p2p_data* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_invite_send(%struct.p2p_data*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
