; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_check_pref_chan_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_check_pref_chan_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_device = type { i32 }
%struct.p2p_message = type { i32, i32* }

@.str = private unnamed_addr constant [95 x i8] c"Freq %d MHz is a common preferred channel for both peer and local, use it as operating channel\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"No common preferred channels found!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32, %struct.p2p_device*, %struct.p2p_message*, i32*, i32)* @p2p_check_pref_chan_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_check_pref_chan_recv(%struct.p2p_data* %0, i32 %1, %struct.p2p_device* %2, %struct.p2p_message* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p2p_device*, align 8
  %10 = alloca %struct.p2p_message*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
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
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %87, %6
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %90

29:                                               ; preds = %27
  store i32 2, i32* %17, align 4
  br label %30

30:                                               ; preds = %83, %29
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.p2p_message*, %struct.p2p_message** %10, align 8
  %33 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 2
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %30
  %38 = load %struct.p2p_message*, %struct.p2p_message** %10, align 8
  %39 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = mul i32 2, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.p2p_message*, %struct.p2p_message** %10, align 8
  %47 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %17, align 4
  %50 = mul i32 2, %49
  %51 = add i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @p2p_channel_to_freq(i32 %45, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %16, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %37
  br label %83

64:                                               ; preds = %37
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @p2p_freq_to_channel(i32 %65, i8** %13, i8** %14)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %83

69:                                               ; preds = %64
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %72 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %75 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %77 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %76, i32 0, i32 1
  %78 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %79 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @os_memcpy(i32* %77, i32* %81, i32 4)
  store i32 1, i32* %18, align 4
  br label %86

83:                                               ; preds = %68, %63
  %84 = load i32, i32* %17, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %30

86:                                               ; preds = %69, %30
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %16, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %19

90:                                               ; preds = %27
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %94, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %100

97:                                               ; preds = %90
  %98 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %99 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %93
  ret void
}

declare dso_local i32 @p2p_channel_to_freq(i32, i32) #1

declare dso_local i64 @p2p_freq_to_channel(i32, i8**, i8**) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
