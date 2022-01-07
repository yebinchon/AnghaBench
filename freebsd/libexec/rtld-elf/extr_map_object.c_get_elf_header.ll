; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_map_object.c_get_elf_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_map_object.c_get_elf_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64, i64, i64, i32, i32, i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"%s: invalid file format\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_PREFAULT_READ = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: read error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EI_CLASS = common dso_local global i64 0, align 8
@ELF_TARG_CLASS = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@ELF_TARG_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: unsupported file layout\00", align 1
@EI_VERSION = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: unsupported file version\00", align 1
@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: unsupported file type\00", align 1
@ELF_TARG_MACH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: unsupported machine\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"%s: invalid shared object: e_phentsize != sizeof(Elf_Phdr)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: program header too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i8*, %struct.stat*)* @get_elf_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @get_elf_header(i32 %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %9 = load %struct.stat*, %struct.stat** %7, align 8
  %10 = icmp ne %struct.stat* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.stat*, %struct.stat** %7, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 48
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %17)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %137

19:                                               ; preds = %11, %3
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load i32, i32* @PROT_READ, align 4
  %22 = load i32, i32* @MAP_PRIVATE, align 4
  %23 = load i32, i32* @MAP_PREFAULT_READ, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.TYPE_6__* @mmap(i32* null, i64 %20, i32 %21, i32 %24, i32 %25, i32 0)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load i64, i64* @MAP_FAILED, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_6__*
  %30 = icmp eq %struct.TYPE_6__* %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @rtld_strerror(i32 %33)
  %35 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %34)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %137

36:                                               ; preds = %19
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = call i32 @IS_ELF(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %133

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @EI_CLASS, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ELF_TARG_CLASS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @EI_DATA, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ELF_TARG_DATA, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52, %43
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  br label %133

64:                                               ; preds = %52
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @EI_VERSION, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EV_CURRENT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EV_CURRENT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %64
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %133

82:                                               ; preds = %73
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ET_EXEC, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ET_DYN, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  br label %133

97:                                               ; preds = %88, %82
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ELF_TARG_MACH, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %133

106:                                              ; preds = %97
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %110, 4
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  br label %133

115:                                              ; preds = %106
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = add i64 %119, %124
  %126 = load i64, i64* @PAGE_SIZE, align 8
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %115
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 (i8*, i8*, ...) @_rtld_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  br label %133

131:                                              ; preds = %115
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %4, align 8
  br label %137

133:                                              ; preds = %128, %112, %103, %94, %79, %61, %40
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = call i32 @munmap(%struct.TYPE_6__* %134, i64 %135)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %137

137:                                              ; preds = %133, %131, %31, %16
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %138
}

declare dso_local i32 @_rtld_error(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @rtld_strerror(i32) #1

declare dso_local i32 @IS_ELF(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @munmap(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
