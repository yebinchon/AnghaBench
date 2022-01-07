; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_process_presence_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_process_presence_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32*, i64, i32*, i32)* }
%struct.p2p_message = type { i32, i32*, i64* }

@.str = private unnamed_addr constant [44 x i8] c"Received P2P Action - P2P Presence Response\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to parse P2P Presence Response\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"No Status or NoA attribute in P2P Presence Response\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"P2P Presence Request was rejected: status %u\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"P2P Presence Request was accepted\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"P2P: P2P Presence Response - NoA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32*, i32*, i32*, i64)* @p2p_process_presence_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_process_presence_resp(%struct.p2p_data* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.p2p_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.p2p_message, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %13 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i64 @p2p_parse(i32* %14, i64 %15, %struct.p2p_message* %11)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %20 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %82

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %31 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @p2p_parse_free(%struct.p2p_message* %11)
  br label %82

33:                                               ; preds = %25
  %34 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (i32, i32*, i64, i32*, i32)*, i32 (i32, i32*, i64, i32*, i32)** %37, align 8
  %39 = icmp ne i32 (i32, i32*, i64, i32*, i32)* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %42 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32*, i64, i32*, i32)*, i32 (i32, i32*, i64, i32*, i32)** %44, align 8
  %46 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %45(i32 %50, i32* %51, i64 %54, i32* %56, i32 %58)
  br label %60

60:                                               ; preds = %40, %33
  %61 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %67 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = call i32 @p2p_parse_free(%struct.p2p_message* %11)
  br label %82

72:                                               ; preds = %60
  %73 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %74 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @wpa_hexdump(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32* %77, i32 %79)
  %81 = call i32 @p2p_parse_free(%struct.p2p_message* %11)
  br label %82

82:                                               ; preds = %72, %65, %29, %18
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i64 @p2p_parse(i32*, i64, %struct.p2p_message*) #1

declare dso_local i32 @p2p_parse_free(%struct.p2p_message*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
