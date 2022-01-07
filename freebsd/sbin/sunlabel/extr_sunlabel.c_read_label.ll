; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_read_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_read_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_disklabel = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@SUN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@mediasize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: ioctl(DIOCGMEDIASIZE) failed\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@sectorsize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: DIOCGSECTORSIZE failed\00", align 1
@DIOCGFWSECTORS = common dso_local global i32 0, align 4
@DIOCGFWHEADS = common dso_local global i32 0, align 4
@SUN_RAWPART = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"FreeBSD%jdG cyl %u alt %u hd %u sec %u\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"FreeBSD%jdM cyl %u alt %u hd %u sec %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun_disklabel*, i8*)* @read_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_label(%struct.sun_disklabel* %0, i8* %1) #0 {
  %3 = alloca %struct.sun_disklabel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sun_disklabel* %0, %struct.sun_disklabel** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @SUN_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = trunc i64 %13 to i32
  %20 = load i8*, i8** @_PATH_DEV, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @snprintf(i8* %15, i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %15, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i32, i32* %10, align 4
  %30 = trunc i64 %17 to i32
  %31 = call i32 @read(i32 %29, i8* %18, i32 %30)
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, %17
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %38 = call i32 @sunlabel_dec(i8* %18, %struct.sun_disklabel* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %41 = call i64 @ioctl(i32 %39, i32 %40, i32* @mediasize)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %53 = call i64 @ioctl(i32 %51, i32 %52, i32* @sectorsize)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %62

61:                                               ; preds = %55
  store i32 512, i32* @sectorsize, align 4
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %191

66:                                               ; preds = %63
  %67 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %68 = call i32 @bzero(%struct.sun_disklabel* %67, i32 48)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @DIOCGFWSECTORS, align 4
  %71 = call i64 @ioctl(i32 %69, i32 %70, i32* %7)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 63, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DIOCGFWHEADS, align 4
  %77 = call i64 @ioctl(i32 %75, i32 %76, i32* %8)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load i32, i32* @mediasize, align 4
  %81 = load i32, i32* @sectorsize, align 4
  %82 = mul nsw i32 64512, %81
  %83 = icmp sle i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %8, align 4
  br label %93

85:                                               ; preds = %79
  %86 = load i32, i32* @mediasize, align 4
  %87 = load i32, i32* @sectorsize, align 4
  %88 = mul nsw i32 1032192, %87
  %89 = icmp sle i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 16, i32* %8, align 4
  br label %92

91:                                               ; preds = %85
  store i32 255, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %90
  br label %93

93:                                               ; preds = %92, %84
  br label %94

94:                                               ; preds = %93, %74
  %95 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %96 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %95, i32 0, i32 0
  store i32 3600, i32* %96, align 8
  %97 = load i32, i32* @mediasize, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* @sectorsize, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sdiv i32 %97, %102
  %104 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %105 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %107 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %106, i32 0, i32 9
  store i64 0, i64* %107, align 8
  %108 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %109 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %111 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 2
  %114 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %115 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %117 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %116, i32 0, i32 4
  store i32 2, i32* %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %120 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %123 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  %124 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %125 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %124, i32 0, i32 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i64, i64* @SUN_RAWPART, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %131 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %134 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %132, %135
  %137 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %138 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %142 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %141, i32 0, i32 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i64, i64* @SUN_RAWPART, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %140, i32* %146, align 8
  %147 = load i32, i32* @mediasize, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp sgt i64 %148, 5241831424
  br i1 %149, label %150, label %170

150:                                              ; preds = %94
  %151 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %152 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @mediasize, align 4
  %155 = add nsw i32 %154, 536870912
  %156 = sdiv i32 %155, 1073741824
  %157 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %158 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %161 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %164 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %167 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @sprintf(i32 %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %159, i32 %162, i32 %165, i32 %168)
  br label %190

170:                                              ; preds = %94
  %171 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %172 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @mediasize, align 4
  %175 = add nsw i32 %174, 524288
  %176 = sdiv i32 %175, 1048576
  %177 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %178 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %181 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %184 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.sun_disklabel*, %struct.sun_disklabel** %3, align 8
  %187 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sprintf(i32 %173, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %179, i32 %182, i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %170, %150
  br label %191

191:                                              ; preds = %190, %63
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @close(i32 %192)
  %194 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %194)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @sunlabel_dec(i8*, %struct.sun_disklabel*) #2

declare dso_local i64 @ioctl(i32, i32, i32*) #2

declare dso_local i32 @bzero(%struct.sun_disklabel*, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
