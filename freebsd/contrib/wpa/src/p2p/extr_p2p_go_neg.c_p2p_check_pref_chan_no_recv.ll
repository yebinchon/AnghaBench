; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_check_pref_chan_no_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_check_pref_chan_no_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_device = type { i32 }
%struct.p2p_message = type { i32, i64* }

@.str = private unnamed_addr constant [114 x i8] c"Peer didn't provide a preferred frequency list, see if any of our preferred channels are supported by peer device\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"Freq %d MHz is a preferred channel and is also supported by peer, use it as the operating channel\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"None of our preferred channels are supported by peer!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32, %struct.p2p_device*, %struct.p2p_message*, i32*, i32)* @p2p_check_pref_chan_no_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_check_pref_chan_no_recv(%struct.p2p_data* %0, i32 %1, %struct.p2p_device* %2, %struct.p2p_message* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p2p_device*, align 8
  %10 = alloca %struct.p2p_message*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.p2p_device* %2, %struct.p2p_device** %9, align 8
  store %struct.p2p_message* %3, %struct.p2p_message** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %20 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %19, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %77, %6
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %80

31:                                               ; preds = %29
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %16, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i64 @p2p_freq_to_channel(i32 %37, i64* %13, i64* %14)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %77

41:                                               ; preds = %31
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.p2p_message*, %struct.p2p_message** %10, align 8
  %45 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load i64, i64* %14, align 8
  %50 = load %struct.p2p_message*, %struct.p2p_message** %10, align 8
  %51 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %73

59:                                               ; preds = %48
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %62 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %65 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %67 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %66, i32 0, i32 1
  %68 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %69 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @os_memcpy(i32* %67, i32* %71, i32 4)
  store i32 1, i32* %18, align 4
  br label %76

73:                                               ; preds = %58
  %74 = load i32, i32* %17, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %42

76:                                               ; preds = %59, %42
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i32, i32* %16, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %21

80:                                               ; preds = %29
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %84, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %90

87:                                               ; preds = %80
  %88 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %89 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %83
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i64 @p2p_freq_to_channel(i32, i64*, i64*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
