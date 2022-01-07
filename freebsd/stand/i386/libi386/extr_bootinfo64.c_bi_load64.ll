; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo64.c_bi_load64.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo64.c_bi_load64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i64, i64, %struct.preloaded_file* }
%struct.i386_devdesc = type { i32 }
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
@MODINFOMD_MODULEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bi_load64(i8* %0, i64 %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.preloaded_file*, align 8
  %13 = alloca %struct.preloaded_file*, align 8
  %14 = alloca %struct.i386_devdesc*, align 8
  %15 = alloca %struct.file_metadata*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = call i32 (...) @bi_checkcpu()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %144

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @bi_getboothowto(i8* %28)
  store i32 %29, i32* %21, align 4
  %30 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %20, align 8
  %31 = bitcast %struct.i386_devdesc** %14 to i8**
  %32 = load i8*, i8** %20, align 8
  %33 = call i32 @i386_getdev(i8** %31, i8* %32, i32* null)
  %34 = load %struct.i386_devdesc*, %struct.i386_devdesc** %14, align 8
  %35 = icmp eq %struct.i386_devdesc* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %6, align 4
  br label %144

39:                                               ; preds = %27
  %40 = load %struct.i386_devdesc*, %struct.i386_devdesc** %14, align 8
  %41 = bitcast %struct.i386_devdesc* %40 to i8*
  %42 = call i32 @i386_fmtdev(i8* %41)
  %43 = call i32 @getrootmount(i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %39
  %47 = call %struct.preloaded_file* @file_findfile(i32* null, i8* null)
  store %struct.preloaded_file* %47, %struct.preloaded_file** %12, align 8
  br label %48

48:                                               ; preds = %70, %46
  %49 = load %struct.preloaded_file*, %struct.preloaded_file** %12, align 8
  %50 = icmp ne %struct.preloaded_file* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.preloaded_file*, %struct.preloaded_file** %12, align 8
  %54 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.preloaded_file*, %struct.preloaded_file** %12, align 8
  %57 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = icmp slt i64 %52, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.preloaded_file*, %struct.preloaded_file** %12, align 8
  %63 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.preloaded_file*, %struct.preloaded_file** %12, align 8
  %66 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %61, %51
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.preloaded_file*, %struct.preloaded_file** %12, align 8
  %72 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %71, i32 0, i32 2
  %73 = load %struct.preloaded_file*, %struct.preloaded_file** %72, align 8
  store %struct.preloaded_file* %73, %struct.preloaded_file** %12, align 8
  br label %48

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = call i64 @roundup(i64 %76, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  %81 = trunc i64 %79 to i32
  store i32 %81, i32* %18, align 4
  %82 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store %struct.preloaded_file* %82, %struct.preloaded_file** %13, align 8
  %83 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %84 = icmp eq %struct.preloaded_file* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store %struct.preloaded_file* %86, %struct.preloaded_file** %13, align 8
  br label %87

87:                                               ; preds = %85, %75
  %88 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %89 = icmp eq %struct.preloaded_file* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87
  store i32 0, i32* %16, align 4
  %93 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %94 = load i32, i32* @MODINFOMD_HOWTO, align 4
  %95 = call i32 @file_addmetadata(%struct.preloaded_file* %93, i32 %94, i32 4, i32* %21)
  %96 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %97 = load i32, i32* @MODINFOMD_ENVP, align 4
  %98 = call i32 @file_addmetadata(%struct.preloaded_file* %96, i32 %97, i32 4, i32* %17)
  %99 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %100 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %101 = call i32 @file_addmetadata(%struct.preloaded_file* %99, i32 %100, i32 4, i32* %16)
  %102 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %103 = load i32, i32* @MODINFOMD_MODULEP, align 4
  %104 = call i32 @file_addmetadata(%struct.preloaded_file* %102, i32 %103, i32 4, i32* %18)
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %109 = call i32 @bios_addsmapdata(%struct.preloaded_file* %108)
  br label %110

110:                                              ; preds = %107, %92
  %111 = call i64 @bi_copymodules64(i64 0)
  store i64 %111, i64* %19, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %19, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = call i64 @roundup(i64 %114, i32 %115)
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i64 @bi_copyenv(i32 %118)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = call i64 @roundup(i64 %120, i32 %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64*, i64** %10, align 8
  store i64 %125, i64* %126, align 8
  %127 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %128 = load i32, i32* @MODINFOMD_KERNEND, align 4
  %129 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %127, i32 %128)
  store %struct.file_metadata* %129, %struct.file_metadata** %15, align 8
  %130 = load %struct.file_metadata*, %struct.file_metadata** %15, align 8
  %131 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @bcopy(i32* %16, i32 %132, i32 4)
  %134 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  %135 = load i32, i32* @MODINFOMD_ENVP, align 4
  %136 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %134, i32 %135)
  store %struct.file_metadata* %136, %struct.file_metadata** %15, align 8
  %137 = load %struct.file_metadata*, %struct.file_metadata** %15, align 8
  %138 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @bcopy(i32* %17, i32 %139, i32 4)
  %141 = load i64*, i64** %9, align 8
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @bi_copymodules64(i64 %142)
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %110, %36, %24
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @bi_checkcpu(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bi_getboothowto(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @i386_getdev(i8**, i8*, i32*) #1

declare dso_local i32 @getrootmount(i32) #1

declare dso_local i32 @i386_fmtdev(i8*) #1

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i8*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @file_addmetadata(%struct.preloaded_file*, i32, i32, i32*) #1

declare dso_local i32 @bios_addsmapdata(%struct.preloaded_file*) #1

declare dso_local i64 @bi_copymodules64(i64) #1

declare dso_local i64 @bi_copyenv(i32) #1

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
