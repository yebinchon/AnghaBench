; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_group = type { i32, i8*, i32, i8* }
%struct.wpa_authenticator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"WPA: Not enough entropy in random pool for secure operations - update keys later when the first station connects\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to get random data for WPA initialization.\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"WPA: Delay group state machine start until Beacon frames have been configured\00", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_group* (%struct.wpa_authenticator*, i32, i32)* @wpa_group_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_group* @wpa_group_init(%struct.wpa_authenticator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_group*, align 8
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.wpa_group* @os_zalloc(i32 32)
  store %struct.wpa_group* %9, %struct.wpa_group** %8, align 8
  %10 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %11 = icmp eq %struct.wpa_group* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.wpa_group* null, %struct.wpa_group** %4, align 8
  br label %63

13:                                               ; preds = %3
  %14 = load i8*, i8** @TRUE, align 8
  %15 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %16 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %19 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wpa_cipher_key_len(i32 %23)
  %25 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %26 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = call i32 (...) @random_pool_ready()
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %13
  %33 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %34 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %35 = call i64 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator* %33, %struct.wpa_group* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @MSG_ERROR, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %41 = call i32 @os_free(%struct.wpa_group* %40)
  store %struct.wpa_group* null, %struct.wpa_group** %4, align 8
  br label %63

42:                                               ; preds = %32
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %45 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  br label %61

51:                                               ; preds = %42
  %52 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %53 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %54 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %52, %struct.wpa_group* %53)
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %57 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %59 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %60 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %58, %struct.wpa_group* %59)
  br label %61

61:                                               ; preds = %51, %48
  %62 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  store %struct.wpa_group* %62, %struct.wpa_group** %4, align 8
  br label %63

63:                                               ; preds = %61, %37, %12
  %64 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  ret %struct.wpa_group* %64
}

declare dso_local %struct.wpa_group* @os_zalloc(i32) #1

declare dso_local i32 @wpa_cipher_key_len(i32) #1

declare dso_local i32 @random_pool_ready(...) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @os_free(%struct.wpa_group*) #1

declare dso_local i32 @wpa_group_sm_step(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
