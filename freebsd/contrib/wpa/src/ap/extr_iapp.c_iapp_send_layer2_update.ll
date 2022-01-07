; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_send_layer2_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_send_layer2_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iapp_data = type { i32 }
%struct.iapp_layer2_update = type { i32, i32, i32*, i64, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"send[L2 Update]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iapp_data*, i32*)* @iapp_send_layer2_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iapp_send_layer2_update(%struct.iapp_data* %0, i32* %1) #0 {
  %3 = alloca %struct.iapp_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iapp_layer2_update, align 8
  store %struct.iapp_data* %0, %struct.iapp_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = call i32 @os_memset(i32 %7, i32 255, i32 %8)
  %10 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = call i32 @os_memcpy(i32 %11, i32* %12, i32 %13)
  %15 = call i32 @host_to_be16(i32 6)
  %16 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 1
  store i32 175, i32* %19, align 4
  %20 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 129, i32* %22, align 4
  %23 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %5, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 2, i32* %28, align 4
  %29 = load %struct.iapp_data*, %struct.iapp_data** %3, align 8
  %30 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @send(i32 %31, %struct.iapp_layer2_update* %5, i32 40, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i64 @send(i32, %struct.iapp_layer2_update*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
