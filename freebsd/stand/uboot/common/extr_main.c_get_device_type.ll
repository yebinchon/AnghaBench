; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_get_device_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_get_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_type = type { i32, i32 }

@device_types = common dso_local global %struct.device_type* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unknown device type '%s'\0A\00", align 1
@DEV_TYP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @get_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_device_type(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_type*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %43, %11
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.device_type*, %struct.device_type** @device_types, align 8
  %15 = call i32 @nitems(%struct.device_type* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = load %struct.device_type*, %struct.device_type** @device_types, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.device_type, %struct.device_type* %18, i64 %20
  store %struct.device_type* %21, %struct.device_type** %8, align 8
  %22 = load %struct.device_type*, %struct.device_type** %8, align 8
  %23 = getelementptr inbounds %struct.device_type, %struct.device_type* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlen(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.device_type*, %struct.device_type** %8, align 8
  %27 = getelementptr inbounds %struct.device_type, %struct.device_type* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @strncmp(i32 %28, i8* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %17
  %34 = load %struct.device_type*, %struct.device_type** %8, align 8
  %35 = getelementptr inbounds %struct.device_type, %struct.device_type* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %3, align 8
  br label %52

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %12

46:                                               ; preds = %12
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %2
  %50 = load i32, i32* @DEV_TYP_NONE, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i8* null, i8** %3, align 8
  br label %52

52:                                               ; preds = %49, %33
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32 @nitems(%struct.device_type*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
