; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_message = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"P2P: Parsing the received message\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"P2P: No Dialog Token in the message\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"P2P: * Dialog Token: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_parse(i32* %0, i64 %1, %struct.p2p_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.p2p_message*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.p2p_message* %2, %struct.p2p_message** %7, align 8
  %8 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %9 = call i32 @os_memset(%struct.p2p_message* %8, i32 0, i32 4)
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %22 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %25 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 1
  %32 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %33 = call i32 @p2p_parse_ies(i32* %29, i64 %31, %struct.p2p_message* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %17, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @os_memset(%struct.p2p_message*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @p2p_parse_ies(i32*, i64, %struct.p2p_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
