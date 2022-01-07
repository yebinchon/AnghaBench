; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_boot1.c_try_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_boot1.c_try_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 (i32, i32, i32, i8*, i64, i32*)*, i64 (i32, i32*, i32*)* }
%struct.TYPE_10__ = type { i64 (i32, %struct.TYPE_9__*, i8**, i64*)*, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i8*, i32 }

@PATH_DOTCONFIG = common dso_local global i32 0, align 4
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@PATH_CONFIG = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@BS = common dso_local global %struct.TYPE_12__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@IH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to load image provided by %s, size: %zu, (%lu)\0A\00", align 1
@LoadedImageGUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to query LoadedImage provided by %s (%lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"    command args: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Starting '%s' in 5 seconds...\00", align 1
@PATH_LOADER_EFI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to start image provided by %s (%lu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @try_boot(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64 (i32, %struct.TYPE_9__*, i8**, i64*)*, i64 (i32, %struct.TYPE_9__*, i8**, i64*)** %17, align 8
  %19 = load i32, i32* @PATH_DOTCONFIG, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i64 %18(i32 %19, %struct.TYPE_9__* %20, i8** %11, i64* %9)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* @EFI_NOT_FOUND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64 (i32, %struct.TYPE_9__*, i8**, i64*)*, i64 (i32, %struct.TYPE_9__*, i8**, i64*)** %27, align 8
  %29 = load i32, i32* @PATH_CONFIG, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = call i64 %28(i32 %29, %struct.TYPE_9__* %30, i8** %11, i64* %9)
  store i64 %31, i64* %15, align 8
  br label %32

32:                                               ; preds = %25, %4
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* @EFI_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %140

44:                                               ; preds = %36
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @free(i8* %52)
  store i8* null, i8** %11, align 8
  br label %54

54:                                               ; preds = %44, %32
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @BS, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64 (i32, i32, i32, i8*, i64, i32*)*, i64 (i32, i32, i32, i8*, i64, i32*)** %56, align 8
  %58 = load i32, i32* @TRUE, align 4
  %59 = load i32, i32* @IH, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @efi_devpath_last_node(i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 %57(i32 %58, i32 %59, i32 %63, i8* %64, i64 %65, i32* %13)
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* @EFI_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %54
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @EFI_ERROR_CODE(i64 %74)
  %76 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %72, i64 %73, i32 %75)
  br label %140

77:                                               ; preds = %54
  %78 = load i32, i32* %13, align 4
  %79 = bitcast %struct.TYPE_11__** %14 to i8**
  %80 = call i64 @OpenProtocolByHandle(i32 %78, i32* @LoadedImageGUID, i8** %79)
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* @EFI_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @EFI_ERROR_CODE(i64 %88)
  %90 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %87, i32 %89)
  br label %140

91:                                               ; preds = %77
  %92 = load i8*, i8** %12, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @PATH_LOADER_EFI, align 4
  %110 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = call i32 @DSTALL(i32 1000000)
  %112 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %113 = call i32 @DSTALL(i32 1000000)
  %114 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %115 = call i32 @DSTALL(i32 1000000)
  %116 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %117 = call i32 @DSTALL(i32 1000000)
  %118 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %119 = call i32 @DSTALL(i32 1000000)
  %120 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @BS, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64 (i32, i32*, i32*)*, i64 (i32, i32*, i32*)** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i64 %123(i32 %124, i32* null, i32* null)
  store i64 %125, i64* %15, align 8
  %126 = load i64, i64* @EFI_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %97
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @EFI_ERROR_CODE(i64 %132)
  %134 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %131, i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i8* null, i8** %138, align 8
  br label %139

139:                                              ; preds = %128, %97
  br label %140

140:                                              ; preds = %139, %84, %69, %43
  %141 = load i8*, i8** %12, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @free(i8* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i8*, i8** %11, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i8*, i8** %7, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @free(i8* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i64, i64* %15, align 8
  ret i64 %159
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @efi_devpath_last_node(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

declare dso_local i64 @OpenProtocolByHandle(i32, i32*, i8**) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @DSTALL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
