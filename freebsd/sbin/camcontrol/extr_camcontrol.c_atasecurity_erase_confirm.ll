; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_erase_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_erase_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i8*, i32, i32 }
%struct.ata_params = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"\0AYou are about to ERASE ALL DATA from the following device:\0A%s%d,%s%d: \00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\0AAre you SURE you want to ERASE ALL DATA? (yes/no) \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Please answer \22yes\22 or \22no\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %struct.ata_params*)* @atasecurity_erase_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atasecurity_erase_confirm(%struct.cam_device* %0, %struct.ata_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca %struct.ata_params*, align 8
  %6 = alloca [50 x i8], align 16
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store %struct.ata_params* %1, %struct.ata_params** %5, align 8
  %7 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %8 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %11 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %14 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %17 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %12, i32 %15, i32 %18)
  %20 = load %struct.ata_params*, %struct.ata_params** %5, align 8
  %21 = call i32 @ata_print_ident(%struct.ata_params* %20)
  br label %22

22:                                               ; preds = %42, %2
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* @stdin, align 4
  %26 = call i32* @fgets(i8* %24, i32 50, i32 %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %30 = call i64 @strncasecmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %43

33:                                               ; preds = %28
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %35 = call i64 @strncasecmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %43

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %22
  br label %22

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
