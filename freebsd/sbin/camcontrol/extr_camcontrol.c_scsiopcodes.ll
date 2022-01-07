; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiopcodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiopcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }

@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid opcode \22%s\22, must be a number\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Invalid opcode 0x%#x, must be between0 and 0xff inclusive\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid service action \22%s\22, must be a number\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Invalid service action 0x%#x, must be between 0 and 0xffff inclusive\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"You must specify an opcode with -o if a service action is given\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i8**, i8*, i32, i32, i32, i32)* @scsiopcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiopcodes(%struct.cam_device* %0, i32 %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32* null, i32** %25, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %73, %8
  %29 = load i32, i32* %10, align 4
  %30 = load i8**, i8*** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @getopt(i32 %29, i8** %30, i8* %31)
  store i32 %32, i32* %17, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load i32, i32* %17, align 4
  switch i32 %35, label %72 [
    i32 78, label %36
    i32 111, label %37
    i32 115, label %54
    i32 84, label %71
  ]

36:                                               ; preds = %34
  store i32 0, i32* %23, align 4
  br label %73

37:                                               ; preds = %34
  %38 = load i32, i32* @optarg, align 4
  %39 = call i32 @strtoul(i32 %38, i8** %26, i32 0)
  store i32 %39, i32* %18, align 4
  %40 = load i8*, i8** %26, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @optarg, align 4
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 1, i32* %27, align 4
  br label %119

47:                                               ; preds = %37
  %48 = load i32, i32* %18, align 4
  %49 = icmp sgt i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %18, align 4
  %52 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 1, i32* %27, align 4
  br label %119

53:                                               ; preds = %47
  store i32 1, i32* %21, align 4
  br label %73

54:                                               ; preds = %34
  %55 = load i32, i32* @optarg, align 4
  %56 = call i32 @strtoul(i32 %55, i8** %26, i32 0)
  store i32 %56, i32* %19, align 4
  %57 = load i8*, i8** %26, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @optarg, align 4
  %63 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i32 1, i32* %27, align 4
  br label %119

64:                                               ; preds = %54
  %65 = load i32, i32* %19, align 4
  %66 = icmp sgt i32 %65, 65535
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %19, align 4
  %69 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  store i32 1, i32* %27, align 4
  br label %70

70:                                               ; preds = %67, %64
  store i32 1, i32* %22, align 4
  br label %73

71:                                               ; preds = %34
  store i32 1, i32* %20, align 4
  br label %73

72:                                               ; preds = %34
  br label %73

73:                                               ; preds = %72, %71, %70, %53, %36
  br label %28

74:                                               ; preds = %28
  %75 = load i32, i32* %22, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %21, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %27, align 4
  br label %119

82:                                               ; preds = %77, %74
  %83 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @scsigetopcodes(%struct.cam_device* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32* %24, i32** %25)
  store i32 %94, i32* %27, align 4
  %95 = load i32, i32* %27, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %119

98:                                               ; preds = %82
  %99 = load i32, i32* %21, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101, %98
  %105 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32*, i32** %25, align 8
  %110 = load i32, i32* %24, align 4
  %111 = call i32 @scsiprintoneopcode(%struct.cam_device* %105, i32 %106, i32 %107, i32 %108, i32* %109, i32 %110)
  store i32 %111, i32* %27, align 4
  br label %118

112:                                              ; preds = %101
  %113 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32*, i32** %25, align 8
  %116 = load i32, i32* %24, align 4
  %117 = call i32 @scsiprintopcodes(%struct.cam_device* %113, i32 %114, i32* %115, i32 %116)
  store i32 %117, i32* %27, align 4
  br label %118

118:                                              ; preds = %112, %104
  br label %119

119:                                              ; preds = %118, %97, %80, %61, %50, %44
  %120 = load i32*, i32** %25, align 8
  %121 = call i32 @free(i32* %120)
  %122 = load i32, i32* %27, align 4
  ret i32 %122
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i32, i8**, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @scsigetopcodes(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @scsiprintoneopcode(%struct.cam_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @scsiprintopcodes(%struct.cam_device*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
