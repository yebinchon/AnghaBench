; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fw_read_img.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_fwdownload.c_fw_read_img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.fw_vendor = type { i32, i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not open image file %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not stat image file %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Zero length image file %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Could not allocate buffer to read image file %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not read image file %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Unable to lseek\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SEAGATE,SEAGATE \00", align 1
@T_SEQUENTIAL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Skipping %d byte header.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Could not lseek\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cam_device*, i32, i32, i32, i8*, %struct.fw_vendor*, i32*)* @fw_read_img to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fw_read_img(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i8* %4, %struct.fw_vendor* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.fw_vendor*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.stat, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.fw_vendor* %5, %struct.fw_vendor** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = call i32 @open(i8* %21, i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i8* null, i8** %8, align 8
  br label %142

28:                                               ; preds = %7
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @fstat(i32 %29, %struct.stat* %17)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %138

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %19, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %138

42:                                               ; preds = %35
  %43 = load i32, i32* %19, align 4
  %44 = call i8* @malloc(i32 %43)
  store i8* %44, i8** %18, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %138

49:                                               ; preds = %42
  %50 = load %struct.fw_vendor*, %struct.fw_vendor** %14, align 8
  %51 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %100 [
    i32 128, label %53
    i32 129, label %78
    i32 130, label %81
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = load i8*, i8** %18, align 8
  %56 = call i32 @read(i32 %54, i8* %55, i32 16)
  %57 = icmp ne i32 %56, 16
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %135

61:                                               ; preds = %53
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @SEEK_SET, align 4
  %64 = call i32 @lseek(i32 %62, i32 0, i32 %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %135

68:                                               ; preds = %61
  %69 = load i8*, i8** %18, align 8
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %19, align 4
  %74 = srem i32 %73, 512
  %75 = icmp eq i32 %74, 80
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  store i32 80, i32* %20, align 4
  br label %77

77:                                               ; preds = %76, %72
  br label %101

78:                                               ; preds = %49
  %79 = load i32, i32* %19, align 4
  %80 = srem i32 %79, 1030
  store i32 %80, i32* %20, align 4
  br label %101

81:                                               ; preds = %49
  %82 = load %struct.fw_vendor*, %struct.fw_vendor** %14, align 8
  %83 = getelementptr inbounds %struct.fw_vendor, %struct.fw_vendor* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @T_SEQUENTIAL, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %101

88:                                               ; preds = %81
  %89 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i8*, i8** %18, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @fw_validate_ibm(%struct.cam_device* %89, i32 %90, i32 %91, i32 %92, i8* %93, i8* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %135

99:                                               ; preds = %88
  br label %101

100:                                              ; preds = %49
  br label %101

101:                                              ; preds = %100, %99, %87, %78, %77
  %102 = load i32, i32* %20, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load i32, i32* @stdout, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* @SEEK_SET, align 4
  %111 = call i32 @lseek(i32 %108, i32 %109, i32 %110)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %135

115:                                              ; preds = %104
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %19, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %115, %101
  %120 = load i32, i32* %16, align 4
  %121 = load i8*, i8** %18, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @read(i32 %120, i8* %121, i32 %122)
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  br label %135

129:                                              ; preds = %119
  %130 = load i32, i32* %19, align 4
  %131 = load i32*, i32** %15, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @close(i32 %132)
  %134 = load i8*, i8** %18, align 8
  store i8* %134, i8** %8, align 8
  br label %142

135:                                              ; preds = %126, %113, %98, %66, %58
  %136 = load i8*, i8** %18, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %135, %46, %39, %32
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @close(i32 %139)
  %141 = load i32*, i32** %15, align 8
  store i32 0, i32* %141, align 4
  store i8* null, i8** %8, align 8
  br label %142

142:                                              ; preds = %138, %129, %25
  %143 = load i8*, i8** %8, align 8
  ret i8* %143
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fw_validate_ibm(%struct.cam_device*, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
