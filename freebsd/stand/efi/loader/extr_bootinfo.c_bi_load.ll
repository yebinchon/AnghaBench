; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8**, i8*, i32*)* }
%struct.preloaded_file = type { i32, i32, %struct.preloaded_file* }
%struct.devdesc = type { i32 }
%struct.file_metadata = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"rootdev\00", align 1
@archsw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't determine root device.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"elf64 kernel\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"can't find kernel file\00", align 1
@MODINFOMD_HOWTO = common dso_local global i32 0, align 4
@MODINFOMD_ENVP = common dso_local global i32 0, align 4
@MODINFOMD_KERNEND = common dso_local global i32 0, align 4
@MODINFOMD_FW_HANDLE = common dso_local global i32 0, align 4
@ST = common dso_local global i32 0, align 4
@MODINFOMD_DTBP = common dso_local global i32 0, align 4
@MODINFOMD_ESYM = common dso_local global i32 0, align 4
@MODINFOMD_SSYM = common dso_local global i32 0, align 4
@relocation_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bi_load(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.preloaded_file*, align 8
  %9 = alloca %struct.preloaded_file*, align 8
  %10 = alloca %struct.devdesc*, align 8
  %11 = alloca %struct.file_metadata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @bi_getboothowto(i8* %18)
  store i32 %19, i32* %17, align 4
  %20 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %16, align 8
  %21 = load i32 (i8**, i8*, i32*)*, i32 (i8**, i8*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %22 = bitcast %struct.devdesc** %10 to i8**
  %23 = load i8*, i8** %16, align 8
  %24 = call i32 %21(i8** %22, i8* %23, i32* null)
  %25 = load %struct.devdesc*, %struct.devdesc** %10, align 8
  %26 = icmp eq %struct.devdesc* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %116

30:                                               ; preds = %3
  %31 = load %struct.devdesc*, %struct.devdesc** %10, align 8
  %32 = bitcast %struct.devdesc* %31 to i8*
  %33 = call i32 @efi_fmtdev(i8* %32)
  %34 = call i32 @getrootmount(i32 %33)
  store i32 0, i32* %12, align 4
  %35 = call %struct.preloaded_file* @file_findfile(i32* null, i8* null)
  store %struct.preloaded_file* %35, %struct.preloaded_file** %8, align 8
  br label %36

36:                                               ; preds = %58, %30
  %37 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %38 = icmp ne %struct.preloaded_file* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %42 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %45 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = icmp slt i32 %40, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %51 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %54 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %49, %39
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.preloaded_file*, %struct.preloaded_file** %8, align 8
  %60 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %59, i32 0, i32 2
  %61 = load %struct.preloaded_file*, %struct.preloaded_file** %60, align 8
  store %struct.preloaded_file* %61, %struct.preloaded_file** %8, align 8
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @roundup(i32 %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @bi_copyenv(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @roundup(i32 %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.preloaded_file* %72, %struct.preloaded_file** %9, align 8
  %73 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %74 = icmp eq %struct.preloaded_file* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store %struct.preloaded_file* %76, %struct.preloaded_file** %9, align 8
  br label %77

77:                                               ; preds = %75, %62
  %78 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %79 = icmp eq %struct.preloaded_file* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  store i32 0, i32* %13, align 4
  %83 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %84 = load i32, i32* @MODINFOMD_HOWTO, align 4
  %85 = call i32 @file_addmetadata(%struct.preloaded_file* %83, i32 %84, i32 4, i32* %17)
  %86 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %87 = load i32, i32* @MODINFOMD_ENVP, align 4
  %88 = call i32 @file_addmetadata(%struct.preloaded_file* %86, i32 %87, i32 4, i32* %14)
  %89 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %90 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %91 = call i32 @file_addmetadata(%struct.preloaded_file* %89, i32 %90, i32 4, i32* %13)
  %92 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %93 = load i32, i32* @MODINFOMD_FW_HANDLE, align 4
  %94 = call i32 @file_addmetadata(%struct.preloaded_file* %92, i32 %93, i32 4, i32* @ST)
  %95 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %96 = call i32 @bi_load_efi_data(%struct.preloaded_file* %95)
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  %99 = call i32 @bi_copymodules(i32 0)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call i32 @roundup(i32 %102, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %108 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %109 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %107, i32 %108)
  store %struct.file_metadata* %109, %struct.file_metadata** %11, align 8
  %110 = load %struct.file_metadata*, %struct.file_metadata** %11, align 8
  %111 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @bcopy(i32* %13, i32* %112, i32 4)
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @bi_copymodules(i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %82, %27
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @bi_getboothowto(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @getrootmount(i32) #1

declare dso_local i32 @efi_fmtdev(i8*) #1

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i8*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @bi_copyenv(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @file_addmetadata(%struct.preloaded_file*, i32, i32, i32*) #1

declare dso_local i32 @bi_load_efi_data(%struct.preloaded_file*) #1

declare dso_local i32 @bi_copymodules(i32) #1

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
