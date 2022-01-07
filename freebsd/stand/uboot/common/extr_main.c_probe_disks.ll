; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_probe_disks.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_probe_disks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.open_file*, %struct.TYPE_10__*)* }
%struct.open_file = type { %struct.TYPE_10__* }

@currdev = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"  Probing all disk devices...\0A\00", align 1
@UB_MAX_DEV = common dso_local global i32 0, align 4
@devsw = common dso_local global %struct.TYPE_11__** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c" good.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  Probing all %s devices...\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"  Requested disk type/unit/slice/partition not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @probe_disks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_disks(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.open_file, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 1, i32 0), align 4
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 1, i32 1), align 4
  %17 = getelementptr inbounds %struct.open_file, %struct.open_file* %14, i32 0, i32 0
  store %struct.TYPE_10__* @currdev, %struct.TYPE_10__** %17, align 8
  store i32 -1, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %46

20:                                               ; preds = %5
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 0, i32 0), align 4
  br label %22

22:                                               ; preds = %42, %20
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 0, i32 0), align 4
  %24 = load i32, i32* @UB_MAX_DEV, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = call i32 (...) @print_disk_probe_info()
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @devsw, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32 (%struct.open_file*, %struct.TYPE_10__*)*, i32 (%struct.open_file*, %struct.TYPE_10__*)** %33, align 8
  %35 = call i32 %34(%struct.open_file* %14, %struct.TYPE_10__* @currdev)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %109

40:                                               ; preds = %26
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 0, i32 0), align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 0, i32 0), align 4
  br label %22

45:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %109

46:                                               ; preds = %5
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %85

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @device_typename(i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %81, %49
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @UB_MAX_DEV, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i8* @uboot_diskgetunit(i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 0, i32 0), align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 0, i32 0), align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %84

65:                                               ; preds = %57
  %66 = call i32 (...) @print_disk_probe_info()
  %67 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @devsw, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %67, i64 %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32 (%struct.open_file*, %struct.TYPE_10__*)*, i32 (%struct.open_file*, %struct.TYPE_10__*)** %72, align 8
  %74 = call i32 %73(%struct.open_file* %14, %struct.TYPE_10__* @currdev)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %109

79:                                               ; preds = %65
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %53

84:                                               ; preds = %64, %53
  store i32 -1, i32* %6, align 4
  br label %109

85:                                               ; preds = %46
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i8* @uboot_diskgetunit(i32 %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @currdev, i32 0, i32 0, i32 0), align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = call i32 (...) @print_disk_probe_info()
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @devsw, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %93, i64 %95
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32 (%struct.open_file*, %struct.TYPE_10__*)*, i32 (%struct.open_file*, %struct.TYPE_10__*)** %98, align 8
  %100 = call i32 %99(%struct.open_file* %14, %struct.TYPE_10__* @currdev)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %109

105:                                              ; preds = %91
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %85
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %103, %84, %77, %45, %38
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_disk_probe_info(...) #1

declare dso_local i8* @device_typename(i32) #1

declare dso_local i8* @uboot_diskgetunit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
