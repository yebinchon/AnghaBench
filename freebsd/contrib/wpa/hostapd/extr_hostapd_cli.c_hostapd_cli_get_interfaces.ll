; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_get_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_get_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }
%struct.dl_list = type { i32 }
%struct.dirent = type { i32 }

@ctrl_iface_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_ctrl*, %struct.dl_list*)* @hostapd_cli_get_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_cli_get_interfaces(%struct.wpa_ctrl* %0, %struct.dl_list* %1) #0 {
  %3 = alloca %struct.wpa_ctrl*, align 8
  %4 = alloca %struct.dl_list*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32*, align 8
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %3, align 8
  store %struct.dl_list* %1, %struct.dl_list** %4, align 8
  %7 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %3, align 8
  %8 = icmp ne %struct.wpa_ctrl* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dl_list*, %struct.dl_list** %4, align 8
  %11 = icmp ne %struct.dl_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %46

13:                                               ; preds = %9
  %14 = load i32, i32* @ctrl_iface_dir, align 4
  %15 = call i32* @opendir(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %46

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %37, %36, %19
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.dirent* @readdir(i32* %21)
  store %struct.dirent* %22, %struct.dirent** %5, align 8
  %23 = icmp ne %struct.dirent* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.dirent*, %struct.dirent** %5, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.dirent*, %struct.dirent** %5, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24
  br label %20

37:                                               ; preds = %30
  %38 = load %struct.dl_list*, %struct.dl_list** %4, align 8
  %39 = load %struct.dirent*, %struct.dirent** %5, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cli_txt_list_add(%struct.dl_list* %38, i32 %41)
  br label %20

43:                                               ; preds = %20
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @closedir(i32* %44)
  br label %46

46:                                               ; preds = %43, %18, %12
  ret void
}

declare dso_local i32* @opendir(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @cli_txt_list_add(%struct.dl_list*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
