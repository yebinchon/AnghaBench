; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_boot1.c_efi_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_boot1.c_efi_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_15__ = type { i64 (i32*, i32*, i32**)*, i64 (i32, i32*, i32*, i64*, i32*)* }
%struct.TYPE_14__ = type { i8*, i32 (...)* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }

@ST = common dso_local global %struct.TYPE_17__* null, align 8
@IH = common dso_local global i32 0, align 4
@BS = common dso_local global %struct.TYPE_15__* null, align 8
@RS = common dso_local global i32 0, align 4
@ConsoleControlGUID = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EfiConsoleControlScreenText = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\0A>> FreeBSD EFI boot block\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"   Loader path: %s\0A\0A\00", align 1
@PATH_LOADER_EFI = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"   Initializing modules:\00", align 1
@num_boot_modules = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@boot_modules = common dso_local global %struct.TYPE_14__** null, align 8
@ByProtocol = common dso_local global i32 0, align 4
@BlockIoProtocolGUID = common dso_local global i32 0, align 4
@EFI_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to allocate %d handles\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to get device handles\0A\00", align 1
@LoadedImageGUID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"   Load Path: %S\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Boot1Path\00", align 1
@DevicePathGUID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to get image DevicePath (%lu)\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"   Load Device: %S\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Boot1Dev\00", align 1
@EFI_LOAD_ERROR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"No bootable partitions found!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_main(i32 %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** @ST, align 8
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* @IH, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ST, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** @BS, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ST, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* @RS, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BS, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64 (i32*, i32*, i32**)*, i64 (i32*, i32*, i32**)** %25, align 8
  %27 = bitcast %struct.TYPE_19__** %10 to i32**
  %28 = call i64 %26(i32* @ConsoleControlGUID, i32* null, i32** %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @EFI_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %34, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %37 = load i32, i32* @EfiConsoleControlScreenText, align 4
  %38 = call i32 %35(%struct.TYPE_19__* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ST, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %11, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  %45 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 %45(%struct.TYPE_16__* %46, i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %53 = call i32 %51(%struct.TYPE_16__* %52, i32 0)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 %56(%struct.TYPE_16__* %57, i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %64 = call i32 %62(%struct.TYPE_16__* %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** @PATH_LOADER_EFI, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %12, align 8
  br label %69

69:                                               ; preds = %97, %39
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @num_boot_modules, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @boot_modules, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %74, i64 %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @boot_modules, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %81, i64 %82
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32 (...)*, i32 (...)** %85, align 8
  %87 = icmp ne i32 (...)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %73
  %89 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @boot_modules, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %89, i64 %90
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32 (...)*, i32 (...)** %93, align 8
  %95 = call i32 (...) %94()
  br label %96

96:                                               ; preds = %88, %73
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %69

100:                                              ; preds = %69
  %101 = call i32 @putchar(i8 signext 10)
  store i64 0, i64* %13, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BS, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64 (i32, i32*, i32*, i64*, i32*)*, i64 (i32, i32*, i32*, i64*, i32*)** %103, align 8
  %105 = load i32, i32* @ByProtocol, align 4
  %106 = call i64 %104(i32 %105, i32* @BlockIoProtocolGUID, i32* null, i64* %13, i32* null)
  %107 = load i64, i64* %13, align 8
  %108 = call i32* @malloc(i64 %107)
  store i32* %108, i32** %6, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load i32, i32* @EFI_OUT_OF_RESOURCES, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %13, align 8
  %115 = call i32 (i64, i8*, ...) @efi_panic(i64 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %111, %100
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BS, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i64 (i32, i32*, i32*, i64*, i32*)*, i64 (i32, i32*, i32*, i64*, i32*)** %118, align 8
  %120 = load i32, i32* @ByProtocol, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 %119(i32 %120, i32* @BlockIoProtocolGUID, i32* null, i64* %13, i32* %121)
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @EFI_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i64, i64* %9, align 8
  %128 = call i32 (i64, i8*, ...) @efi_panic(i64 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %116
  %130 = load i64, i64* %13, align 8
  %131 = udiv i64 %130, 4
  store i64 %131, i64* %14, align 8
  %132 = load i32, i32* @IH, align 4
  %133 = bitcast %struct.TYPE_18__** %7 to i8**
  %134 = call i64 @OpenProtocolByHandle(i32 %132, i32* @LoadedImageGUID, i8** %133)
  store i64 %134, i64* %9, align 8
  store i32* null, i32** %8, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @EFI_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %179

138:                                              ; preds = %129
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i8* @efi_devpath_name(i32* %141)
  store i8* %142, i8** %15, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %146)
  %148 = load i8*, i8** %15, align 8
  %149 = call i32 @efi_setenv_freebsd_wcs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %148)
  %150 = load i8*, i8** %15, align 8
  %151 = call i32 @efi_free_devpath_name(i8* %150)
  br label %152

152:                                              ; preds = %145, %138
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = bitcast i32** %8 to i8**
  %157 = call i64 @OpenProtocolByHandle(i32 %155, i32* @DevicePathGUID, i8** %156)
  store i64 %157, i64* %9, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @EFI_SUCCESS, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %152
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @EFI_ERROR_CODE(i64 %162)
  %164 = call i32 @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  br label %178

165:                                              ; preds = %152
  %166 = load i32*, i32** %8, align 8
  %167 = call i8* @efi_devpath_name(i32* %166)
  store i8* %167, i8** %15, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %171)
  %173 = load i8*, i8** %15, align 8
  %174 = call i32 @efi_setenv_freebsd_wcs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %173)
  %175 = load i8*, i8** %15, align 8
  %176 = call i32 @efi_free_devpath_name(i8* %175)
  br label %177

177:                                              ; preds = %170, %165
  br label %178

178:                                              ; preds = %177, %161
  br label %179

179:                                              ; preds = %178, %129
  %180 = load i32*, i32** %6, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @choice_protocol(i32* %180, i64 %181, i32* %182)
  %184 = load i64, i64* @EFI_LOAD_ERROR, align 8
  %185 = call i32 (i64, i8*, ...) @efi_panic(i64 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %186 = load i64, i64* %3, align 8
  ret i64 %186
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @efi_panic(i64, i8*, ...) #1

declare dso_local i64 @OpenProtocolByHandle(i32, i32*, i8**) #1

declare dso_local i8* @efi_devpath_name(i32*) #1

declare dso_local i32 @efi_setenv_freebsd_wcs(i8*, i8*) #1

declare dso_local i32 @efi_free_devpath_name(i8*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

declare dso_local i32 @choice_protocol(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
