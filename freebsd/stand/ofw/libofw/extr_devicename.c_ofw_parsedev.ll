; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_devicename.c_ofw_parsedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_devicename.c_ofw_parsedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devsw = type { i64, i32 }
%struct.ofw_devdesc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.devsw* }
%struct.zfs_devdesc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@devsw = common dso_local global %struct.devsw** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ofw_parsedev: malloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DEVT_ZFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofw_devdesc**, i8*, i8**)* @ofw_parsedev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_parsedev(%struct.ofw_devdesc** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofw_devdesc**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ofw_devdesc*, align 8
  %9 = alloca %struct.devsw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ofw_devdesc** %0, %struct.ofw_devdesc*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %12, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %90, %3
  %21 = load i8*, i8** %12, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %92

25:                                               ; preds = %20
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i8* @strchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %12, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %11, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 0)
  store i8* %32, i8** %12, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %17, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @bcopy(i8* %40, i8* %41, i32 %42)
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %48 = call i32 @OF_finddevice(i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %33
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @bcopy(i8* %51, i8* %52, i32 %53)
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  br label %65

58:                                               ; preds = %33
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %61 = call i32 @OF_getprop(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %60, i32 64)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %90

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %50
  store i32 0, i32* %18, align 4
  br label %66

66:                                               ; preds = %86, %65
  %67 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.devsw*, %struct.devsw** %67, i64 %69
  %71 = load %struct.devsw*, %struct.devsw** %70, align 8
  store %struct.devsw* %71, %struct.devsw** %9, align 8
  %72 = icmp ne %struct.devsw* %71, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.devsw*, %struct.devsw** %9, align 8
  %75 = getelementptr inbounds %struct.devsw, %struct.devsw* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %78 = load %struct.devsw*, %struct.devsw** %9, align 8
  %79 = getelementptr inbounds %struct.devsw, %struct.devsw* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @strlen(i32 %80)
  %82 = call i64 @strncmp(i32 %76, i8* %77, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %94

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %66

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i8*, i8** %12, align 8
  store i8* %91, i8** %11, align 8
  br label %20

92:                                               ; preds = %20
  %93 = load i32, i32* @ENOENT, align 4
  store i32 %93, i32* %4, align 4
  br label %152

94:                                               ; preds = %84
  %95 = load i8**, i8*** %7, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %12, align 8
  %99 = load i8**, i8*** %7, align 8
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = call %struct.ofw_devdesc* @malloc(i32 16)
  store %struct.ofw_devdesc* %101, %struct.ofw_devdesc** %8, align 8
  %102 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %103 = icmp eq %struct.ofw_devdesc* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  store i32 %106, i32* %4, align 4
  br label %152

107:                                              ; preds = %100
  %108 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %109 = getelementptr inbounds %struct.ofw_devdesc, %struct.ofw_devdesc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %112 = call i32 @strcpy(i32 %110, i8* %111)
  %113 = load %struct.devsw*, %struct.devsw** %9, align 8
  %114 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %115 = getelementptr inbounds %struct.ofw_devdesc, %struct.ofw_devdesc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store %struct.devsw* %113, %struct.devsw** %116, align 8
  %117 = load %struct.devsw*, %struct.devsw** %9, align 8
  %118 = getelementptr inbounds %struct.devsw, %struct.devsw* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @DEVT_ZFS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %107
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.devsw*, %struct.devsw** %9, align 8
  %125 = getelementptr inbounds %struct.devsw, %struct.devsw* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @strlen(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %123, i64 %128
  store i8* %129, i8** %11, align 8
  %130 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %131 = bitcast %struct.ofw_devdesc* %130 to %struct.zfs_devdesc*
  %132 = load i8*, i8** %11, align 8
  %133 = load i8**, i8*** %7, align 8
  %134 = call i32 @zfs_parsedev(%struct.zfs_devdesc* %131, i8* %132, i8** %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %122
  %138 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %139 = call i32 @free(%struct.ofw_devdesc* %138)
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %4, align 4
  br label %152

141:                                              ; preds = %122
  br label %142

142:                                              ; preds = %141, %107
  %143 = load %struct.ofw_devdesc**, %struct.ofw_devdesc*** %5, align 8
  %144 = icmp eq %struct.ofw_devdesc** %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %147 = call i32 @free(%struct.ofw_devdesc* %146)
  br label %151

148:                                              ; preds = %142
  %149 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %150 = load %struct.ofw_devdesc**, %struct.ofw_devdesc*** %5, align 8
  store %struct.ofw_devdesc* %149, %struct.ofw_devdesc** %150, align 8
  br label %151

151:                                              ; preds = %148, %145
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %137, %104, %92
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.ofw_devdesc* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @zfs_parsedev(%struct.zfs_devdesc*, i8*, i8**) #1

declare dso_local i32 @free(%struct.ofw_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
