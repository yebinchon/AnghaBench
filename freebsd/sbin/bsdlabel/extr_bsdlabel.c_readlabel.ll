; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_readlabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_readlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@specname = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@is_file = common dso_local global i64 0, align 8
@mediasize = common dso_local global i32 0, align 4
@secsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot get disk geometry\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"disks with more than 2^32-1 sectors are not supported\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@bootarea = common dso_local global i64 0, align 8
@BBSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%s read\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"couldn't read %d bytes from %s\00", align 1
@labeloffset = common dso_local global i64 0, align 8
@labelsoffset = common dso_local global i32 0, align 4
@lab = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAXPARTITIONS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: no valid label found\00", align 1
@RAW_PART = common dso_local global i64 0, align 8
@lba_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @readlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readlabel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @specname, align 4
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @specname, align 4
  %16 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i64, i64* @is_file, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @get_file_parms(i32 %21)
  br label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @g_mediasize(i32 %24)
  store i32 %25, i32* @mediasize, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @g_sectorsize(i32 %26)
  store i32 %27, i32* @secsize, align 4
  %28 = load i32, i32* @secsize, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @mediasize, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %23
  %34 = call i32 (i32, i8*, ...) @err(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* @mediasize, align 4
  %38 = load i32, i32* @secsize, align 4
  %39 = mul nsw i32 -1, %38
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @lseek(i32 %44, i32 0, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* @bootarea, align 8
  %49 = load i32, i32* @BBSIZE, align 4
  %50 = call i32 @read(i32 %47, i64 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @specname, align 4
  %55 = call i32 (i32, i8*, ...) @err(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @BBSIZE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @BBSIZE, align 4
  %62 = load i32, i32* @specname, align 4
  %63 = call i32 (i32, i8*, ...) @errx(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i64, i64* @bootarea, align 8
  %68 = load i64, i64* @labeloffset, align 8
  %69 = load i32, i32* @labelsoffset, align 4
  %70 = load i32, i32* @secsize, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = add nsw i64 %67, %73
  %75 = load i32, i32* @MAXPARTITIONS, align 4
  %76 = call i32 @bsd_disklabel_le_dec(i64 %74, %struct.TYPE_5__* @lab, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %64
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @specname, align 4
  %84 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %79, %64
  %86 = load i64, i64* @is_file, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %156

89:                                               ; preds = %85
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lab, i32 0, i32 0), align 8
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lab, i32 0, i32 1), align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lab, i32 0, i32 1), align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @MIN(i32 %103, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %102, %94
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %90

115:                                              ; preds = %90
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %115
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lab, i32 0, i32 1), align 8
  %120 = load i64, i64* @RAW_PART, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %149, %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lab, i32 0, i32 0), align 8
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %127
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lab, i32 0, i32 1), align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lab, i32 0, i32 1), align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, %140
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %139, %131
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %127

152:                                              ; preds = %127
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* @lba_offset, align 4
  br label %154

154:                                              ; preds = %152, %118, %115
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %88
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @get_file_parms(i32) #1

declare dso_local i32 @g_mediasize(i32) #1

declare dso_local i32 @g_sectorsize(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bsd_disklabel_le_dec(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
