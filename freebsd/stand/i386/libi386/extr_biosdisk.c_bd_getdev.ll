; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_devdesc = type { i32 }
%struct.disk_devdesc = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"unit %d BIOS device %d\00", align 1
@DEVT_DISK = common dso_local global i64 0, align 8
@DT_ATAPI = common dso_local global i64 0, align 8
@WFDMAJOR = common dso_local global i32 0, align 4
@FDMAJOR = common dso_local global i32 0, align 4
@WDMAJOR = common dso_local global i32 0, align 4
@DEVT_CD = common dso_local global i64 0, align 8
@ACDMAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"root_disk_unit\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dev is 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_getdev(%struct.i386_devdesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i386_devdesc*, align 8
  %4 = alloca %struct.disk_devdesc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i386_devdesc* %0, %struct.i386_devdesc** %3, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.i386_devdesc*, %struct.i386_devdesc** %3, align 8
  %16 = bitcast %struct.i386_devdesc* %15 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %16, %struct.disk_devdesc** %4, align 8
  %17 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %18 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %17, i32 0, i32 2
  %19 = call %struct.TYPE_6__* @bd_get_bdinfo(%struct.TYPE_7__* %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %125

23:                                               ; preds = %1
  %24 = load %struct.i386_devdesc*, %struct.i386_devdesc** %3, align 8
  %25 = call i32 @bd_unit2bios(%struct.i386_devdesc* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %27 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %125

35:                                               ; preds = %23
  %36 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %37 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DEVT_DISK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %35
  %45 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @disk_open(%struct.disk_devdesc* %45, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %125

59:                                               ; preds = %44
  %60 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %61 = call i32 @disk_close(%struct.disk_devdesc* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %64 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %68 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %62, %35
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 128
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DT_ATAPI, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @WFDMAJOR, align 4
  store i32 %80, i32* %7, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @FDMAJOR, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %79
  br label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @WDMAJOR, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 127
  store i32 %88, i32* %12, align 4
  %89 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %90 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DEVT_CD, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* @ACDMAJOR, align 4
  store i32 %98, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %86
  %100 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %100, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @strtol(i8* %103, i8** %10, i32 0)
  store i32 %104, i32* %11, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %113, %108, %102
  br label %116

116:                                              ; preds = %115, %99
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @MAKEBOOTDEV(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %116, %58, %34, %22
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_6__* @bd_get_bdinfo(%struct.TYPE_7__*) #1

declare dso_local i32 @bd_unit2bios(%struct.i386_devdesc*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i64 @disk_open(%struct.disk_devdesc*, i32, i32) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @MAKEBOOTDEV(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
