; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_parsedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_parsedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@D_SLICEWILD = common dso_local global i32 0, align 4
@D_PARTWILD = common dso_local global i32 0, align 4
@D_SLICENONE = common dso_local global i32 0, align 4
@D_PARTNONE = common dso_local global i32 0, align 4
@EUNIT = common dso_local global i32 0, align 4
@EPART = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@D_PARTISGPT = common dso_local global i32 0, align 4
@ESLICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_parsedev(%struct.disk_devdesc* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_devdesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  store i32 -1, i32* %8, align 4
  %14 = load i8*, i8** %11, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 58)
  store i8* %15, i8** %12, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i8*, i8** %12, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @D_SLICEWILD, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @D_PARTWILD, align 4
  store i32 %25, i32* %10, align 4
  br label %29

26:                                               ; preds = %17, %3
  %27 = load i32, i32* @D_SLICENONE, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @D_PARTNONE, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 58
  br i1 %38, label %39, label %70

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strtol(i8* %40, i8** %12, i32 10)
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EUNIT, align 4
  store i32 %46, i32* %4, align 4
  br label %111

47:                                               ; preds = %39
  %48 = load i8*, i8** %12, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 58
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 97
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @EPART, align 4
  store i32 %65, i32* %4, align 4
  br label %111

66:                                               ; preds = %57
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %12, align 8
  br label %69

69:                                               ; preds = %66, %52, %47
  br label %72

70:                                               ; preds = %34, %29
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %4, align 4
  br label %111

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %12, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 58
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %4, align 4
  br label %111

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %87 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %91 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %94 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i8**, i8*** %7, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %84
  %98 = load i8*, i8** %12, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  br label %107

104:                                              ; preds = %97
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  br label %107

107:                                              ; preds = %104, %102
  %108 = phi i8* [ %103, %102 ], [ %106, %104 ]
  %109 = load i8**, i8*** %7, align 8
  store i8* %108, i8** %109, align 8
  br label %110

110:                                              ; preds = %107, %84
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %82, %70, %64, %45
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
