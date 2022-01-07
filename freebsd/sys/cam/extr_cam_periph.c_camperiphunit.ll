; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.periph_driver = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"scbus%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.periph_driver*, i32, i32, i32)* @camperiphunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camperiphunit(%struct.periph_driver* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.periph_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca i8*, align 8
  store %struct.periph_driver* %0, %struct.periph_driver** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.periph_driver*, %struct.periph_driver** %5, align 8
  %19 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %17, align 8
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @snprintf(i8* %21, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = load i8*, i8** %17, align 8
  store i8* %24, i8** %14, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %75, %4
  %26 = load i8*, i8** %14, align 8
  %27 = call i64 @resource_find_dev(i32* %11, i8* %26, i32* %13, i32* null, i32* null)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @resource_string_value(i8* %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %15)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %75

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @resource_int_value(i8* %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %75

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i8*, i8** %14, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i64 @resource_int_value(i8* %57, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %9, align 4
  br label %76

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %65, %52, %39
  store i32 0, i32* %10, align 4
  br label %25

76:                                               ; preds = %72, %25
  %77 = load %struct.periph_driver*, %struct.periph_driver** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @camperiphnextunit(%struct.periph_driver* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @resource_find_dev(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @camperiphnextunit(%struct.periph_driver*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
