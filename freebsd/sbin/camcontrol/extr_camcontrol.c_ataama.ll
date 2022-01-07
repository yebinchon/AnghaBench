; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataama.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataama.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%union.ccb = type { i32 }
%struct.ata_params = type { i32 }
%struct.ccb_getdev = type { i32 }

@ATA_AMA_ACTION_PRINT = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"too many AMA actions specified\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"couldn't get CGD\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@ATA_SUPPORT_AMAX_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Accessible Max Address is not supported by this device\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Accessible Max Address has been frozen\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Option currently not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32, i8**, i8*)* @ataama to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ataama(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i8** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.ccb*, align 8
  %15 = alloca %struct.ata_params*, align 8
  %16 = alloca %struct.ccb_getdev, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.cam_device* %0, %struct.cam_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @ATA_AMA_ACTION_PRINT, align 4
  store i32 %24, i32* %20, align 4
  br label %25

25:                                               ; preds = %44, %6
  %26 = load i32, i32* %11, align 4
  %27 = load i8**, i8*** %12, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @getopt(i32 %26, i8** %27, i8* %28)
  store i32 %29, i32* %19, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i32, i32* %19, align 4
  switch i32 %32, label %44 [
    i32 115, label %33
    i32 102, label %38
    i32 113, label %41
  ]

33:                                               ; preds = %31
  store i32 128, i32* %20, align 4
  %34 = load i32, i32* @optarg, align 4
  %35 = call i64 @strtoumax(i32 %34, i32* null, i32 0)
  store i64 %35, i64* %23, align 8
  %36 = load i32, i32* %21, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %21, align 4
  br label %44

38:                                               ; preds = %31
  store i32 129, i32* %20, align 4
  %39 = load i32, i32* %21, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %21, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %18, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %31, %41, %38, %33
  br label %25

45:                                               ; preds = %25
  %46 = load i32, i32* %21, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %186

50:                                               ; preds = %45
  %51 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %52 = call i64 @get_cgd(%struct.cam_device* %51, %struct.ccb_getdev* %16)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %186

56:                                               ; preds = %50
  %57 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %58 = call %union.ccb* @cam_getccb(%struct.cam_device* %57)
  store %union.ccb* %58, %union.ccb** %14, align 8
  %59 = load %union.ccb*, %union.ccb** %14, align 8
  %60 = icmp eq %union.ccb* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %186

63:                                               ; preds = %56
  %64 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %union.ccb*, %union.ccb** %14, align 8
  %68 = call i32 @ata_do_identify(%struct.cam_device* %64, i32 %65, i32 %66, %union.ccb* %67, %struct.ata_params** %15)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %union.ccb*, %union.ccb** %14, align 8
  %73 = call i32 @cam_freeccb(%union.ccb* %72)
  store i32 1, i32* %7, align 4
  br label %186

74:                                               ; preds = %63
  %75 = load i32, i32* %18, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %79 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %82 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %80, i32 %83)
  %85 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %86 = call i32 @ata_print_ident(%struct.ata_params* %85)
  %87 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %88 = call i32 @camxferrate(%struct.cam_device* %87)
  br label %89

89:                                               ; preds = %77, %74
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* @ATA_AMA_ACTION_PRINT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  store i64 0, i64* %22, align 8
  %94 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %95 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ATA_SUPPORT_AMAX_ADDR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %union.ccb*, %union.ccb** %14, align 8
  %105 = call i32 @ata_get_native_max(%struct.cam_device* %101, i32 %102, i32 %103, %union.ccb* %104, i64* %22)
  br label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %108 = load i64, i64* %22, align 8
  %109 = call i32 @ataama_print(%struct.ata_params* %107, i64 %108, i32 1)
  %110 = load %union.ccb*, %union.ccb** %14, align 8
  %111 = call i32 @cam_freeccb(%union.ccb* %110)
  %112 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %113 = call i32 @free(%struct.ata_params* %112)
  %114 = load i32, i32* %17, align 4
  store i32 %114, i32* %7, align 4
  br label %186

115:                                              ; preds = %89
  %116 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %117 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ATA_SUPPORT_AMAX_ADDR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %115
  %123 = call i32 @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %union.ccb*, %union.ccb** %14, align 8
  %125 = call i32 @cam_freeccb(%union.ccb* %124)
  %126 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %127 = call i32 @free(%struct.ata_params* %126)
  store i32 1, i32* %7, align 4
  br label %186

128:                                              ; preds = %115
  %129 = load i32, i32* %20, align 4
  switch i32 %129, label %178 [
    i32 128, label %130
    i32 129, label %164
  ]

130:                                              ; preds = %128
  %131 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %union.ccb*, %union.ccb** %14, align 8
  %135 = call i32 @ata_get_native_max(%struct.cam_device* %131, i32 %132, i32 %133, %union.ccb* %134, i64* %22)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %130
  %139 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %union.ccb*, %union.ccb** %14, align 8
  %143 = load i64, i64* %23, align 8
  %144 = call i32 @ataama_set(%struct.cam_device* %139, i32 %140, i32 %141, %union.ccb* %142, i64 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %138
  %148 = load i32, i32* %18, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load %union.ccb*, %union.ccb** %14, align 8
  %155 = call i32 @ata_do_identify(%struct.cam_device* %151, i32 %152, i32 %153, %union.ccb* %154, %struct.ata_params** %15)
  store i32 %155, i32* %17, align 4
  %156 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %157 = load i64, i64* %22, align 8
  %158 = call i32 @ataama_print(%struct.ata_params* %156, i64 %157, i32 1)
  br label %159

159:                                              ; preds = %150, %147
  %160 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %161 = call i32 @reprobe(%struct.cam_device* %160)
  br label %162

162:                                              ; preds = %159, %138
  br label %163

163:                                              ; preds = %162, %130
  br label %180

164:                                              ; preds = %128
  %165 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load %union.ccb*, %union.ccb** %14, align 8
  %169 = call i32 @ataama_freeze(%struct.cam_device* %165, i32 %166, i32 %167, %union.ccb* %168)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load i32, i32* %18, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %172, %164
  br label %180

178:                                              ; preds = %128
  %179 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %177, %163
  %181 = load %union.ccb*, %union.ccb** %14, align 8
  %182 = call i32 @cam_freeccb(%union.ccb* %181)
  %183 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %184 = call i32 @free(%struct.ata_params* %183)
  %185 = load i32, i32* %17, align 4
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %180, %122, %106, %71, %61, %54, %48
  %187 = load i32, i32* %7, align 4
  ret i32 %187
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtoumax(i32, i32*, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @get_cgd(%struct.cam_device*, %struct.ccb_getdev*) #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @ata_do_identify(%struct.cam_device*, i32, i32, %union.ccb*, %struct.ata_params**) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ata_print_ident(%struct.ata_params*) #1

declare dso_local i32 @camxferrate(%struct.cam_device*) #1

declare dso_local i32 @ata_get_native_max(%struct.cam_device*, i32, i32, %union.ccb*, i64*) #1

declare dso_local i32 @ataama_print(%struct.ata_params*, i64, i32) #1

declare dso_local i32 @free(%struct.ata_params*) #1

declare dso_local i32 @ataama_set(%struct.cam_device*, i32, i32, %union.ccb*, i64) #1

declare dso_local i32 @reprobe(%struct.cam_device*) #1

declare dso_local i32 @ataama_freeze(%struct.cam_device*, i32, i32, %union.ccb*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
