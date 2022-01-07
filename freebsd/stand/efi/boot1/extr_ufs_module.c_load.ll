; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_ufs_module.c_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_ufs_module.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to init device\0A\00", align 1
@EFI_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to lookup '%s' (file not found?)\0A\00", align 1
@EFI_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to read size of '%s' ino: %d\0A\00", align 1
@EFI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to allocate read buffer %zu for '%s'\0A\00", align 1
@EFI_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to read '%s' (%zd != %zu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Load complete\0A\00", align 1
@EFI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*, i8**, i64*)* @load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load(i8* %0, %struct.TYPE_4__* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = call i64 @init_dev(%struct.TYPE_4__* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %19, i32* %5, align 4
  br label %73

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @lookup(i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EFI_NOT_FOUND, align 4
  store i32 %27, i32* %5, align 4
  br label %73

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @fsread_size(i32 %29, i32* null, i32 0, i64* %11)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  %34 = icmp ule i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %28
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %39, i32* %5, align 4
  br label %73

40:                                               ; preds = %32
  %41 = load i64, i64* %11, align 8
  %42 = call i8* @malloc(i64 %41)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* %11, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %46, i8* %47)
  %49 = load i32, i32* @EFI_OUT_OF_RESOURCES, align 4
  store i32 %49, i32* %5, align 4
  br label %73

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @fsread(i32 %51, i8* %52, i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %59, i64 %60, i64 %61)
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %65, i32* %5, align 4
  br label %73

66:                                               ; preds = %50
  %67 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i8*, i8** %13, align 8
  %69 = load i8**, i8*** %8, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64*, i64** %9, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %66, %58, %45, %35, %24, %17
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @init_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @lookup(i8*) #1

declare dso_local i64 @fsread_size(i32, i32*, i32, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fsread(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
