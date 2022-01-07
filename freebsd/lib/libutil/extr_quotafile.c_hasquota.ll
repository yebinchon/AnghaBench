; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_hasquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_hasquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i8*, i32 }
%struct.statfs = type { i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@hasquota.initname = internal global i8 0, align 1
@hasquota.usrname = internal global [100 x i8] zeroinitializer, align 16
@hasquota.grpname = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@qfextension = common dso_local global i8** null, align 8
@USRQUOTA = common dso_local global i64 0, align 8
@QUOTAFILENAME = common dso_local global i8* null, align 8
@GRPQUOTA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fstab*, i32, i8*, i32)* @hasquota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hasquota(%struct.fstab* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fstab*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.statfs, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.fstab* %0, %struct.fstab** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i8, i8* @hasquota.initname, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %4
  %23 = load i8**, i8*** @qfextension, align 8
  %24 = load i64, i64* @USRQUOTA, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @QUOTAFILENAME, align 8
  %28 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hasquota.usrname, i64 0, i64 0), i32 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i8**, i8*** @qfextension, align 8
  %30 = load i64, i64* @GRPQUOTA, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @QUOTAFILENAME, align 8
  %34 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hasquota.grpname, i64 0, i64 0), i32 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  store i8 1, i8* @hasquota.initname, align 1
  br label %35

35:                                               ; preds = %22, %4
  %36 = load %struct.fstab*, %struct.fstab** %6, align 8
  %37 = getelementptr inbounds %struct.fstab, %struct.fstab* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @strcpy(i8* %19, i32 %38)
  %40 = call i8* @strtok(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %72, %35
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 61)
  store i8* %46, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 0, i8* %49, align 1
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @USRQUOTA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hasquota.usrname, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %74

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @GRPQUOTA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hasquota.grpname, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %74

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71
  %73 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %73, i8** %10, align 8
  br label %41

74:                                               ; preds = %70, %60, %41
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

78:                                               ; preds = %74
  %79 = load %struct.fstab*, %struct.fstab** %6, align 8
  %80 = getelementptr inbounds %struct.fstab, %struct.fstab* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @statfs(i8* %81, %struct.statfs* %12)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load %struct.fstab*, %struct.fstab** %6, align 8
  %86 = getelementptr inbounds %struct.fstab, %struct.fstab* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.statfs, %struct.statfs* %12, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* %87, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84, %78
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

93:                                               ; preds = %84
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @strlcpy(i8* %97, i8* %98, i32 %99)
  br label %114

101:                                              ; preds = %93
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.fstab*, %struct.fstab** %6, align 8
  %105 = getelementptr inbounds %struct.fstab, %struct.fstab* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** @QUOTAFILENAME, align 8
  %108 = load i8**, i8*** @qfextension, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %102, i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %106, i8* %107, i8* %112)
  br label %114

114:                                              ; preds = %101, %96
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %115

115:                                              ; preds = %114, %92, %77
  %116 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
