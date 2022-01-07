; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/boot2/extr_boot2.c_dskread.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/boot2/extr_boot2.c_dskread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }
%struct.dos_partition = type { i64, i32, i32 }
%struct.disklabel = type { i64, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@dsk_meta = common dso_local global i32 0, align 4
@dmadat = common dso_local global %struct.TYPE_6__* null, align 8
@dsk = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@DOSBBSECTOR = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@BASE_SLICE = common dso_local global i64 0, align 8
@NDOSPART = common dso_local global i32 0, align 4
@DOSPTYP_386BSD = common dso_local global i64 0, align 8
@COMPATIBILITY_SLICE = common dso_local global i64 0, align 8
@WHOLE_DISK_SLICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@LABELSECTOR = common dso_local global i32 0, align 4
@LABELOFFSET = common dso_local global i32 0, align 4
@DISKMAGIC = common dso_local global i64 0, align 8
@RAW_PART = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@DTYPE_SCSI = common dso_local global i64 0, align 8
@TYPE_DA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Invalid %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @dskread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dskread(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dos_partition*, align 8
  %9 = alloca %struct.disklabel*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @dsk_meta, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %198, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dmadat, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* @DOSBBSECTOR, align 4
  %22 = call i32 @drvread(i8* %20, i32 %21, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %208

25:                                               ; preds = %16
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* @DOSPARTOFF, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to %struct.dos_partition*
  store %struct.dos_partition* %30, %struct.dos_partition** %8, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 1), align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @BASE_SLICE, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %82, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @NDOSPART, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load %struct.dos_partition*, %struct.dos_partition** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %41, i64 %43
  %45 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DOSPTYP_386BSD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %40
  %50 = load %struct.dos_partition*, %struct.dos_partition** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %50, i64 %52
  %54 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @BASE_SLICE, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58, %49
  %63 = load i64, i64* @BASE_SLICE, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  store i64 %66, i64* %12, align 8
  %67 = load %struct.dos_partition*, %struct.dos_partition** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %67, i64 %69
  %71 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %62
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 1), align 8
  %77 = load i64, i64* @COMPATIBILITY_SLICE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %62
  br label %85

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %58, %40
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %36

85:                                               ; preds = %79, %36
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 1), align 8
  %87 = load i64, i64* @WHOLE_DISK_SLICE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 1), align 8
  br label %91

91:                                               ; preds = %89, %85
  br label %92

92:                                               ; preds = %91, %25
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @WHOLE_DISK_SLICE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @COMPATIBILITY_SLICE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @BASE_SLICE, align 8
  %103 = sub nsw i64 %101, %102
  %104 = load %struct.dos_partition*, %struct.dos_partition** %8, align 8
  %105 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %104, i64 %103
  store %struct.dos_partition* %105, %struct.dos_partition** %8, align 8
  br label %106

106:                                              ; preds = %100, %96
  %107 = load %struct.dos_partition*, %struct.dos_partition** %8, align 8
  %108 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DOSPTYP_386BSD, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %205

113:                                              ; preds = %106
  %114 = load %struct.dos_partition*, %struct.dos_partition** %8, align 8
  %115 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  br label %117

117:                                              ; preds = %113, %92
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  %120 = load i32, i32* @LABELSECTOR, align 4
  %121 = add i32 %119, %120
  %122 = call i32 @drvread(i8* %118, i32 %121, i32 1)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 -1, i32* %4, align 4
  br label %208

125:                                              ; preds = %117
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* @LABELOFFSET, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = bitcast i8* %129 to %struct.disklabel*
  store %struct.disklabel* %130, %struct.disklabel** %9, align 8
  %131 = load %struct.disklabel*, %struct.disklabel** %9, align 8
  %132 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DISKMAGIC, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %125
  %137 = load %struct.disklabel*, %struct.disklabel** %9, align 8
  %138 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DISKMAGIC, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136, %125
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 2), align 8
  %144 = load i64, i64* @RAW_PART, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %205

147:                                              ; preds = %142
  br label %197

148:                                              ; preds = %136
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 3), align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %148
  %152 = load %struct.disklabel*, %struct.disklabel** %9, align 8
  %153 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DTYPE_SCSI, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @TYPE_DA, align 4
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 4), align 4
  br label %159

159:                                              ; preds = %157, %151
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 3), align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 3), align 8
  br label %162

162:                                              ; preds = %159, %148
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 2), align 8
  %164 = load %struct.disklabel*, %struct.disklabel** %9, align 8
  %165 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp uge i64 %163, %166
  br i1 %167, label %177, label %168

168:                                              ; preds = %162
  %169 = load %struct.disklabel*, %struct.disklabel** %9, align 8
  %170 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %169, i32 0, i32 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 2), align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %168, %162
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %205

178:                                              ; preds = %168
  %179 = load %struct.disklabel*, %struct.disklabel** %9, align 8
  %180 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %179, i32 0, i32 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 2), align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  %187 = add i32 %186, %185
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  %188 = load %struct.disklabel*, %struct.disklabel** %9, align 8
  %189 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %188, i32 0, i32 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i64, i64* @RAW_PART, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  %196 = sub i32 %195, %194
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  br label %197

197:                                              ; preds = %178, %147
  br label %198

198:                                              ; preds = %197, %3
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dsk, i32 0, i32 0), align 8
  %201 = load i32, i32* %6, align 4
  %202 = add i32 %200, %201
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @drvread(i8* %199, i32 %202, i32 %203)
  store i32 %204, i32* %4, align 4
  br label %208

205:                                              ; preds = %177, %146, %112
  %206 = load i8*, i8** %13, align 8
  %207 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %206)
  store i32 -1, i32* %4, align 4
  br label %208

208:                                              ; preds = %205, %198, %124, %24
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @drvread(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
