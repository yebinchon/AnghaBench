; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_type.c_ufs_disk_fillout_blank.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_type.c_ufs_disk_fillout_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, i32, i8*, i32, i32*, i32*, i64, i64, i64, i64, i32*, i64 }
%struct.stat = type { i32 }
%struct.fstab = type { i8* }
%struct.statfs = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"could not find special device\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not open special device\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"could not allocate memory for disk name\00", align 1
@MINE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_disk_fillout_blank(%struct.uufsd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uufsd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.fstab*, align 8
  %8 = alloca %struct.statfs, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uufsd* %0, %struct.uufsd** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %20 = call i32 @ERROR(%struct.uufsd* %19, i8* null)
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %31, %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @stat(i8* %23, %struct.stat* %6)
  store i32 %24, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 47
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = trunc i64 %16 to i32
  %33 = load i8*, i8** @_PATH_DEV, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @snprintf(i8* %18, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  store i8* %18, i8** %5, align 8
  br label %22

36:                                               ; preds = %26
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i32, i32* %13, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @S_ISREG(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %90

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @S_ISCHR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %89

56:                                               ; preds = %50, %47
  %57 = load i8*, i8** %5, align 8
  %58 = call %struct.fstab* @getfsfile(i8* %57)
  store %struct.fstab* %58, %struct.fstab** %7, align 8
  %59 = icmp ne %struct.fstab* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.fstab*, %struct.fstab** %7, align 8
  %62 = getelementptr inbounds %struct.fstab, %struct.fstab* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %5, align 8
  br label %88

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @S_ISDIR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  %74 = call i64 @statfs(i8* %73, %struct.statfs* %8)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %78 = call i32 @ERROR(%struct.uufsd* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %144

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.statfs, %struct.statfs* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = trunc i64 %16 to i32
  %83 = call i32 @strlcpy(i8* %18, i32 %81, i32 %82)
  store i8* %18, i8** %5, align 8
  br label %87

84:                                               ; preds = %67, %64
  %85 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %86 = call i32 @ERROR(%struct.uufsd* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %144

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %60
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* @O_RDONLY, align 4
  %93 = call i32 @open(i8* %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %98 = call i32 @ERROR(%struct.uufsd* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %144

99:                                               ; preds = %90
  %100 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %101 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %103 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %102, i32 0, i32 11
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %106 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %108 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %107, i32 0, i32 10
  store i32* null, i32** %108, align 8
  %109 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %110 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %109, i32 0, i32 9
  store i64 0, i64* %110, align 8
  %111 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %112 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %111, i32 0, i32 8
  store i64 0, i64* %112, align 8
  %113 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %114 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %113, i32 0, i32 7
  store i64 0, i64* %114, align 8
  %115 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %116 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %115, i32 0, i32 3
  store i32 0, i32* %116, align 8
  %117 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %118 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %120 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %119, i32 0, i32 5
  store i32* null, i32** %120, align 8
  %121 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %122 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %121, i32 0, i32 4
  store i32* null, i32** %122, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = icmp ne i8* %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %99
  %127 = load i8*, i8** %5, align 8
  %128 = call i8* @strdup(i8* %127)
  store i8* %128, i8** %5, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %133 = call i32 @ERROR(%struct.uufsd* %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %144

134:                                              ; preds = %126
  %135 = load i32, i32* @MINE_NAME, align 4
  %136 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %137 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %99
  %141 = load i8*, i8** %5, align 8
  %142 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %143 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %144

144:                                              ; preds = %140, %131, %96, %84, %76
  %145 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @S_ISCHR(i32) #2

declare dso_local %struct.fstab* @getfsfile(i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
