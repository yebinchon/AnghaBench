; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_find_exact_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_find_exact_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_dev = type { i32, i32, i32, i32, i32 }
%struct.exact_info = type { i8*, %struct.devinfo_dev*, i32 }

@DF_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devinfo_dev*, i8*)* @find_exact_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_exact_dev(%struct.devinfo_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.devinfo_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.devinfo_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.exact_info*, align 8
  store %struct.devinfo_dev* %0, %struct.devinfo_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.exact_info*
  store %struct.exact_info* %9, %struct.exact_info** %7, align 8
  br label %10

10:                                               ; preds = %2
  %11 = load %struct.exact_info*, %struct.exact_info** %7, align 8
  %12 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %11, i32 0, i32 1
  %13 = load %struct.devinfo_dev*, %struct.devinfo_dev** %12, align 8
  %14 = icmp ne %struct.devinfo_dev* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %59

16:                                               ; preds = %10
  %17 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %18 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DF_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %59

24:                                               ; preds = %16
  %25 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %26 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.devinfo_dev* @devinfo_handle_to_device(i32 %27)
  store %struct.devinfo_dev* %28, %struct.devinfo_dev** %5, align 8
  %29 = load %struct.exact_info*, %struct.exact_info** %7, align 8
  %30 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.devinfo_dev*, %struct.devinfo_dev** %5, align 8
  %33 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strcmp(i8* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %59

38:                                               ; preds = %24
  %39 = load %struct.devinfo_dev*, %struct.devinfo_dev** %5, align 8
  %40 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.devinfo_dev*, %struct.devinfo_dev** %5, align 8
  %43 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.exact_info*, %struct.exact_info** %7, align 8
  %48 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @strcmp(i8* %46, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %54 = load %struct.exact_info*, %struct.exact_info** %7, align 8
  %55 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %54, i32 0, i32 1
  store %struct.devinfo_dev* %53, %struct.devinfo_dev** %55, align 8
  br label %56

56:                                               ; preds = %52, %38
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %56, %37, %23, %15
  %60 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @devinfo_foreach_device_child(%struct.devinfo_dev* %60, i32 (%struct.devinfo_dev*, i8*)* @find_exact_dev, i8* %61)
  ret i32 %62
}

declare dso_local %struct.devinfo_dev* @devinfo_handle_to_device(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @devinfo_foreach_device_child(%struct.devinfo_dev*, i32 (%struct.devinfo_dev*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
