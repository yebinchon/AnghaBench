; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_uga_find_pixel.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_uga_find_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i32, i32)* }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_18__*, i32, i32, i64, i64, i64*)* }

@EfiUgaVideoToBltBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"UGA BLT operation failed (video->buffer)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to allocate memory\00", align 1
@EfiPciIoWidthUint32 = common dso_local global i32 0, align 4
@EFI_PCI_IO_PASS_THROUGH_BAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Error reading frame buffer (before)\00", align 1
@EfiUgaBltBufferToVideo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"UGA BLT operation failed (modify)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error reading frame buffer (after)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"UGA BLT operation failed (restore)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"No change detected in frame buffer\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" -- error %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64, %struct.TYPE_18__*, i64, i64)* @efifb_uga_find_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efifb_uga_find_pixel(%struct.TYPE_17__* %0, i64 %1, %struct.TYPE_18__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 1024, i64* %17, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i32, i32)** %22, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = load i32, i32* @EfiUgaVideoToBltBuffer, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 %23(%struct.TYPE_17__* %24, %struct.TYPE_16__* %12, i32 %25, i32 0, i64 %26, i32 0, i64 0, i32 1, i32 1, i32 0)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = call i64 @EFI_ERROR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %176

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i64* @calloc(i64 %47, i32 2)
  store i64* %48, i64** %14, align 8
  %49 = load i64*, i64** %14, align 8
  %50 = icmp eq i64* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %176

53:                                               ; preds = %33
  %54 = load i64*, i64** %14, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64* %56, i64** %15, align 8
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %159, %53
  %58 = load i64, i64* %11, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %168

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %17, align 8
  %63 = call i64 @min(i64 %61, i64 %62)
  store i64 %63, i64* %16, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_18__*, i32, i32, i64, i64, i64*)*, i32 (%struct.TYPE_18__*, i32, i32, i64, i64, i64*)** %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = load i32, i32* @EfiPciIoWidthUint32, align 4
  %70 = load i32, i32* @EFI_PCI_IO_PASS_THROUGH_BAR, align 4
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i64, i64* %16, align 8
  %76 = lshr i64 %75, 2
  %77 = load i64*, i64** %14, align 8
  %78 = call i32 %67(%struct.TYPE_18__* %68, i32 %69, i32 %70, i64 %74, i64 %76, i64* %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i64 @EFI_ERROR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %60
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %170

84:                                               ; preds = %60
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i32, i32)** %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = load i32, i32* @EfiUgaBltBufferToVideo, align 4
  %90 = load i64, i64* %8, align 8
  %91 = call i32 %87(%struct.TYPE_17__* %88, %struct.TYPE_16__* %13, i32 %89, i32 0, i64 0, i32 0, i64 %90, i32 1, i32 1, i32 0)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = call i64 @EFI_ERROR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %170

97:                                               ; preds = %84
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_18__*, i32, i32, i64, i64, i64*)*, i32 (%struct.TYPE_18__*, i32, i32, i64, i64, i64*)** %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %103 = load i32, i32* @EfiPciIoWidthUint32, align 4
  %104 = load i32, i32* @EFI_PCI_IO_PASS_THROUGH_BAR, align 4
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i64, i64* %16, align 8
  %110 = lshr i64 %109, 2
  %111 = load i64*, i64** %15, align 8
  %112 = call i32 %101(%struct.TYPE_18__* %102, i32 %103, i32 %104, i64 %108, i64 %110, i64* %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i64 @EFI_ERROR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %97
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %170

118:                                              ; preds = %97
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i32, i32, i32)** %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = load i32, i32* @EfiUgaBltBufferToVideo, align 4
  %124 = load i64, i64* %8, align 8
  %125 = call i32 %121(%struct.TYPE_17__* %122, %struct.TYPE_16__* %12, i32 %123, i32 0, i64 0, i32 0, i64 %124, i32 1, i32 1, i32 0)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = call i64 @EFI_ERROR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %170

131:                                              ; preds = %118
  store i64 0, i64* %20, align 8
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* %16, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %132
  %137 = load i64*, i64** %14, align 8
  %138 = load i64, i64* %20, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %15, align 8
  %142 = load i64, i64* %20, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %140, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %136
  %147 = load i64*, i64** %14, align 8
  %148 = call i32 @free(i64* %147)
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %20, align 8
  %152 = and i64 %151, -4
  %153 = add i64 %150, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %6, align 4
  br label %176

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %20, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %20, align 8
  br label %132

159:                                              ; preds = %132
  %160 = load i64, i64* %16, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %18, align 4
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* %11, align 8
  %167 = sub i64 %166, %165
  store i64 %167, i64* %11, align 8
  br label %57

168:                                              ; preds = %57
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %129, %116, %95, %82
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @EFI_ERROR_CODE(i32 %171)
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %172)
  %174 = load i64*, i64** %14, align 8
  %175 = call i32 @free(i64* %174)
  store i32 -1, i32* %6, align 4
  br label %176

176:                                              ; preds = %170, %146, %51, %31
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i64 @EFI_ERROR(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64* @calloc(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @EFI_ERROR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
