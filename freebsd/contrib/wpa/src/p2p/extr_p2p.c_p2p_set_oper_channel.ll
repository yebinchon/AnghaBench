; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_oper_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_oper_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [47 x i8] c"Set Operating channel: reg_class %u channel %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_set_oper_channel(%struct.p2p_data* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p2p_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @p2p_channel_to_freq(i8* %10, i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

15:                                               ; preds = %4
  %16 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @p2p_dbg(%struct.p2p_data* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i8* %20, i8** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %27 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %32 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %15, %14
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @p2p_channel_to_freq(i8*, i8*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
