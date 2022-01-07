; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (i32)* }

@.str = private unnamed_addr constant [47 x i8] c"Clear pending_listen_freq for p2p_go_neg_start\00", align 1
@P2P_SC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @p2p_go_neg_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_go_neg_start(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.p2p_data*
  store %struct.p2p_data* %7, %struct.p2p_data** %5, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %20 = call i32 @p2p_dbg(%struct.p2p_data* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %25 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %30 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %28(i32 %33)
  %35 = load i32, i32* @P2P_SC_SUCCESS, align 4
  %36 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %37 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %41 = call i32 @p2p_set_timeout(%struct.p2p_data* %40, i32 0, i32 500000)
  %42 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %43 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %44 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @p2p_connect_send(%struct.p2p_data* %42, %struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %23, %12
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

declare dso_local i32 @p2p_connect_send(%struct.p2p_data*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
