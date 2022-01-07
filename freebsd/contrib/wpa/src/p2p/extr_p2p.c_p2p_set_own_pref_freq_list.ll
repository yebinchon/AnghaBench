; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_own_pref_freq_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_own_pref_freq_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32* }

@P2P_MAX_PREF_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Own preferred frequency list[%u]=%u MHz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_set_own_pref_freq_list(%struct.p2p_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %43, %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %28 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %36 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @p2p_dbg(%struct.p2p_data* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %17

46:                                               ; preds = %17
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
