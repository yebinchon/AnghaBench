; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_set_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_set_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32, i32, i32, i32 }
%struct.ata_params = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"\0AYou are about to configure HPA to limit the user accessible\0Asectors to %ju %s on the device:\0A%s%d,%s%d: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"persistently\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"temporarily\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\0AAre you SURE you want to configure HPA? (yes/no) \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Please answer \22yes\22 or \22no\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %struct.ata_params*, i32, i32)* @atahpa_set_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atahpa_set_confirm(%struct.cam_device* %0, %struct.ata_params* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca %struct.ata_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [50 x i8], align 16
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store %struct.ata_params* %1, %struct.ata_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %16 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %17 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %20 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %23 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %26 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.ata_params*, %struct.ata_params** %7, align 8
  %30 = call i32 @ata_print_ident(%struct.ata_params* %29)
  br label %31

31:                                               ; preds = %51, %4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %33 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %34 = load i32, i32* @stdin, align 4
  %35 = call i32* @fgets(i8* %33, i32 50, i32 %34)
  %36 = icmp ne i32* null, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %39 = call i64 @strncasecmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %40 = icmp eq i64 0, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %52

42:                                               ; preds = %37
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %44 = call i64 @strncasecmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %45 = icmp eq i64 0, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %52

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %31
  br label %31

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ata_print_ident(%struct.ata_params*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
