; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_bootinfo64.c_bi_load64.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_bootinfo64.c_bi_load64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i64, i64, %struct.preloaded_file* }
%struct.userboot_devdesc = type { i32 }
%struct.file_metadata = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"CPU doesn't support long mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rootdev\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"can't determine root device\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"elf64 kernel\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"can't find kernel file\00", align 1
@MODINFOMD_HOWTO = common dso_local global i32 0, align 4
@MODINFOMD_ENVP = common dso_local global i32 0, align 4
@MODINFOMD_KERNEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bi_load64(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.preloaded_file*, align 8
  %9 = alloca %struct.preloaded_file*, align 8
  %10 = alloca %struct.userboot_devdesc*, align 8
  %11 = alloca %struct.file_metadata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = call i32 (...) @bi_checkcpu()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %121

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @bi_getboothowto(i8* %24)
  store i32 %25, i32* %17, align 4
  %26 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %16, align 8
  %27 = bitcast %struct.userboot_devdesc** %10 to i8**
  %28 = load i8*, i8** %16, align 8
  %29 = call i32 @userboot_getdev(i8** %27, i8* %28, i32* null)
  %30 = load %struct.userboot_devdesc*, %struct.userboot_devdesc** %10, align 8
  %31 = icmp eq %struct.userboot_devdesc* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %121

35:                                               ; preds = %23
  %36 = load %struct.userboot_devdesc*, %struct.userboot_devdesc** %10, align 8
  %37 = bitcast %struct.userboot_devdesc* %36 to i8*
  %38 = call i32 @userboot_fmtdev(i8* %37)
  %39 = call i32 @getrootmount(i32 %38)
  store i64 0, i64* %12, align 8
  %40 = call %struct.preloaded_file* @file_findfile(i32* null, i8* null)
  store %struct.preloaded_file* %40, %struct.preloaded_file** %8, align 8
  br label %41

41:                                               ; preds = %63, %35
  %42 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %43 = icmp ne %struct.preloaded_file* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %47 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %50 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = icmp slt i64 %45, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %56 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %59 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %54, %44
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %65 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %64, i32 0, i32 2
  %66 = load %struct.preloaded_file*, %struct.preloaded_file** %65, align 8
  store %struct.preloaded_file* %66, %struct.preloaded_file** %8, align 8
  br label %41

67:                                               ; preds = %41
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i64 @roundup(i64 %68, i32 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @bi_copyenv(i64 %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = call i64 @roundup(i64 %75, i32 %76)
  store i64 %77, i64* %12, align 8
  %78 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store %struct.preloaded_file* %78, %struct.preloaded_file** %9, align 8
  %79 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %80 = icmp eq %struct.preloaded_file* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store %struct.preloaded_file* %82, %struct.preloaded_file** %9, align 8
  br label %83

83:                                               ; preds = %81, %67
  %84 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %85 = icmp eq %struct.preloaded_file* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  store i32 0, i32* %13, align 4
  %89 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %90 = load i32, i32* @MODINFOMD_HOWTO, align 4
  %91 = call i32 @file_addmetadata(%struct.preloaded_file* %89, i32 %90, i32 4, i32* %17)
  %92 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %93 = load i32, i32* @MODINFOMD_ENVP, align 4
  %94 = call i32 @file_addmetadata(%struct.preloaded_file* %92, i32 %93, i32 4, i32* %14)
  %95 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %96 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %97 = call i32 @file_addmetadata(%struct.preloaded_file* %95, i32 %96, i32 4, i32* %13)
  %98 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %99 = call i32 @bios_addsmapdata(%struct.preloaded_file* %98)
  %100 = load i64, i64* %12, align 8
  %101 = load i64*, i64** %6, align 8
  store i64 %100, i64* %101, align 8
  %102 = call i64 @bi_copymodules64(i64 0)
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %15, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = call i64 @roundup(i64 %105, i32 %106)
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  %112 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %113 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %114 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %112, i32 %113)
  store %struct.file_metadata* %114, %struct.file_metadata** %11, align 8
  %115 = load %struct.file_metadata*, %struct.file_metadata** %11, align 8
  %116 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @bcopy(i32* %13, i32 %117, i32 4)
  %119 = load i64, i64* %12, align 8
  %120 = call i64 @bi_copymodules64(i64 %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %88, %32, %20
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @bi_checkcpu(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bi_getboothowto(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @userboot_getdev(i8**, i8*, i32*) #1

declare dso_local i32 @getrootmount(i32) #1

declare dso_local i32 @userboot_fmtdev(i8*) #1

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i8*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @bi_copyenv(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @file_addmetadata(%struct.preloaded_file*, i32, i32, i32*) #1

declare dso_local i32 @bios_addsmapdata(%struct.preloaded_file*) #1

declare dso_local i64 @bi_copymodules64(i64) #1

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
