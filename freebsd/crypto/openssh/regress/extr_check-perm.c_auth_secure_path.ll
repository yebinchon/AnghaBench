; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_check-perm.c_auth_secure_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_check-perm.c_auth_secure_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"realpath %s failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad ownership or modes for file %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"dirname() failed\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"bad ownership or modes for directory %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_secure_path(i8* %0, %struct.stat* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.stat, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.stat* %1, %struct.stat** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @realpath(i8* %28, i8* %24)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %6
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @strerror(i32 %35)
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %36)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

38:                                               ; preds = %6
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = call i32* @realpath(i8* %42, i8* %27)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %18, align 4
  br label %46

46:                                               ; preds = %45, %41, %38
  %47 = load %struct.stat*, %struct.stat** %9, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @S_ISREG(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

56:                                               ; preds = %46
  %57 = load %struct.stat*, %struct.stat** %9, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @platform_sys_dir_uid(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.stat*, %struct.stat** %9, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.stat*, %struct.stat** %9, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 18
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68, %62
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %75, i64 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %125, %78
  %80 = call i8* @dirname(i8* %24)
  store i8* %80, i8** %17, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %83, i64 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

86:                                               ; preds = %79
  %87 = load i8*, i8** %17, align 8
  %88 = trunc i64 %22 to i32
  %89 = call i32 @strlcpy(i8* %24, i8* %87, i32 %88)
  %90 = call i64 @stat(i8* %24, %struct.stat* %19)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @platform_sys_dir_uid(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %97, %92
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 18
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %97, %86
  %108 = load i8*, i8** %12, align 8
  %109 = load i64, i64* %13, align 8
  %110 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %108, i64 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

111:                                              ; preds = %102
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = call i64 @strcmp(i8* %27, i8* %24)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %126

118:                                              ; preds = %114, %111
  %119 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %24)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %118
  br label %126

125:                                              ; preds = %121
  br label %79

126:                                              ; preds = %124, %117
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %127

127:                                              ; preds = %126, %107, %82, %74, %52, %31
  %128 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @platform_sys_dir_uid(i64) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
