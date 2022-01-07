; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_process_spp_user_input_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_process_spp_user_input_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"addMO\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Subscription registration completed\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Could not add MO\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Error occurred\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MO addition or update failed\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i32*)* @process_spp_user_input_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_spp_user_input_response(%struct.hs20_osu_client* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [300 x i8], align 16
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @debug_dump_node(%struct.hs20_osu_client* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %18 = call i64 @hs20_add_mo(%struct.hs20_osu_client* %15, i32* %16, i8* %17, i32 300)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @hs20_spp_update_response(%struct.hs20_osu_client* %23, i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @hs20_spp_update_response(%struct.hs20_osu_client* %27, i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* null)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %34 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %35 = call i32 @hs20_sub_rem_complete(%struct.hs20_osu_client* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hs20_add_mo(%struct.hs20_osu_client*, i32*, i8*, i32) #1

declare dso_local i32 @hs20_spp_update_response(%struct.hs20_osu_client*, i8*, i8*, i8*) #1

declare dso_local i32 @hs20_sub_rem_complete(%struct.hs20_osu_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
