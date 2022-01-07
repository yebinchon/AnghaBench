; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphnextunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_camperiphnextunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.periph_driver = type { i8*, i32 }
%struct.cam_periph = type { i32, i32 }

@unit_links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Duplicate Wired Device entry!\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Second device (%s device at scbus%d target %d lun %d) will not be wired\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"scbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.periph_driver*, i32, i32, i32, i32, i32)* @camperiphnextunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camperiphnextunit(%struct.periph_driver* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.periph_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cam_periph*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.periph_driver* %0, %struct.periph_driver** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load %struct.periph_driver*, %struct.periph_driver** %7, align 8
  %22 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  br label %24

24:                                               ; preds = %108, %6
  %25 = load %struct.periph_driver*, %struct.periph_driver** %7, align 8
  %26 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %25, i32 0, i32 1
  %27 = call %struct.cam_periph* @TAILQ_FIRST(i32* %26)
  store %struct.cam_periph* %27, %struct.cam_periph** %13, align 8
  br label %28

28:                                               ; preds = %40, %24
  %29 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %30 = icmp ne %struct.cam_periph* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %33 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ false, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %42 = load i32, i32* @unit_links, align 4
  %43 = call %struct.cam_periph* @TAILQ_NEXT(%struct.cam_periph* %41, i32 %42)
  store %struct.cam_periph* %43, %struct.cam_periph** %13, align 8
  br label %28

44:                                               ; preds = %37
  %45 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %46 = icmp ne %struct.cam_periph* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %49 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %58 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @xpt_print(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %62 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (i32, i8*, ...) @xpt_print(i32 %63, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %65, i32 %66, i32 %67)
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %56, %53
  br label %108

70:                                               ; preds = %47, %44
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %111

74:                                               ; preds = %70
  store i32 0, i32* %15, align 4
  %75 = load i8*, i8** %14, align 8
  store i8* %75, i8** %19, align 8
  br label %76

76:                                               ; preds = %102, %96, %74
  %77 = load i8*, i8** %19, align 8
  %78 = call i32 @resource_find_dev(i32* %15, i8* %77, i32* %17, i32* null, i32* null)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %103

82:                                               ; preds = %76
  %83 = load i8*, i8** %19, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call i64 @resource_int_value(i8* %83, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %16)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load i8*, i8** %19, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i64 @resource_string_value(i8* %88, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %20)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %20, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %87
  br label %76

97:                                               ; preds = %92, %82
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %103

102:                                              ; preds = %97
  br label %76

103:                                              ; preds = %101, %81
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %111

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %69
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %24

111:                                              ; preds = %106, %73
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local %struct.cam_periph* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_periph* @TAILQ_NEXT(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_print(i32, i8*, ...) #1

declare dso_local i32 @resource_find_dev(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i64 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
