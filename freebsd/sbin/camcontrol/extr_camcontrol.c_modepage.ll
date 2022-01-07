; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_modepage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_modepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }

@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid mode page %d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid mode subpage %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid page control field %d\00", align 1
@SMS_ALL_PAGES_PAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"you must specify a mode page!\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"-d and -D are incompatible!\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"LLBAA bit is not present in MODE SENSE(6)!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modepage(%struct.cam_device* %0, i32 %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.cam_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 10, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %86, %7
  %28 = load i32, i32* %9, align 4
  %29 = load i8**, i8*** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @getopt(i32 %28, i8** %29, i8* %30)
  store i32 %31, i32* %16, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  %34 = load i32, i32* %16, align 4
  switch i32 %34, label %85 [
    i32 54, label %35
    i32 98, label %36
    i32 100, label %37
    i32 101, label %38
    i32 108, label %39
    i32 109, label %42
    i32 68, label %71
    i32 76, label %72
    i32 80, label %73
  ]

35:                                               ; preds = %33
  store i32 6, i32* %22, align 4
  br label %86

36:                                               ; preds = %33
  store i32 1, i32* %21, align 4
  br label %86

37:                                               ; preds = %33
  store i32 1, i32* %23, align 4
  br label %86

38:                                               ; preds = %33
  store i32 1, i32* %25, align 4
  br label %86

39:                                               ; preds = %33
  %40 = load i32, i32* %26, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %26, align 4
  br label %86

42:                                               ; preds = %33
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** %15, align 8
  %44 = call i32 @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @strtol(i8* %45, i32* null, i32 0)
  store i32 %46, i32* %17, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 @strtol(i8* %50, i32* null, i32 0)
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = icmp sgt i32 %56, 63
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %17, align 4
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %18, align 4
  %66 = icmp sgt i32 %65, 255
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %18, align 4
  %69 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %86

71:                                               ; preds = %33
  store i32 1, i32* %24, align 4
  br label %86

72:                                               ; preds = %33
  store i32 1, i32* %20, align 4
  br label %86

73:                                               ; preds = %33
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i32 @strtol(i8* %74, i32* null, i32 0)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %19, align 4
  %80 = icmp sgt i32 %79, 3
  br i1 %80, label %81, label %84

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %19, align 4
  %83 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %86

85:                                               ; preds = %33
  br label %86

86:                                               ; preds = %85, %84, %72, %71, %70, %39, %38, %37, %36, %35
  br label %27

87:                                               ; preds = %27
  %88 = load i32, i32* %24, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @SMS_ALL_PAGES_PAGE, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %93, %90, %87
  %96 = load i32, i32* %17, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %26, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98, %95
  %104 = load i32, i32* %23, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %24, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %106, %103
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = icmp ne i32 %115, 10
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %114, %111
  %120 = load i32, i32* %26, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %26, align 4
  %128 = icmp sgt i32 %127, 1
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @mode_list(%struct.cam_device* %123, i32 %124, i32 %125, i32 %126, i32 %129, i32 %130, i32 %131, i32 %132)
  br label %149

134:                                              ; preds = %119
  %135 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @mode_edit(%struct.cam_device* %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %134, %122
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @mode_list(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mode_edit(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
