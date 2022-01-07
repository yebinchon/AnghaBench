; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_ppc64_elf_freebsd.c_ppc64_elf_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_ppc64_elf_freebsd.c_ppc64_elf_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32*, i32)*, i32 (i32*, i8**)*, i32 (i32*, i32, i32)*, i32 (i32, i32*, i32)* }
%struct.preloaded_file = type { i32 }
%struct.file_metadata = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.trampoline_data = type { i8*, i8*, i8*, i8*, i8*, i8* }

@MODINFOMD_ELFHDR = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@archsw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LOAD_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Load address at %#jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Relocation offset is %#jx\0A\00", align 1
@elf64_relocation_offset = common dso_local global i32 0, align 4
@szkerneltramp = common dso_local global i32 0, align 4
@kerneltramp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Kernel entry at %#jx (%#x) ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"DTB at %#x, mdp at %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"architecture did not provide kexec segment mapping\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"kexec_load returned error: %d\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"reboot returned error: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc64_elf_exec(%struct.preloaded_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.preloaded_file*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.trampoline_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %3, align 8
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %16 = load i32, i32* @MODINFOMD_ELFHDR, align 4
  %17 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %15, i32 %16)
  store %struct.file_metadata* %17, %struct.file_metadata** %4, align 8
  %18 = icmp eq %struct.file_metadata* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EFTYPE, align 4
  store i32 %20, i32* %2, align 4
  br label %141

21:                                               ; preds = %1
  %22 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %23 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %7, align 8
  %25 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @archsw, i32 0, i32 0), align 8
  %26 = load i32, i32* @LOAD_RAW, align 4
  %27 = call i32 %25(i32 %26, i32* null, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @elf64_relocation_offset, align 4
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @szkerneltramp, align 4
  %33 = call i32* @malloc(i32 %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @szkerneltramp, align 4
  %36 = call i32 @memcpy(i32* %34, i32* @kerneltramp, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %21
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %56

46:                                               ; preds = %21
  %47 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @archsw, i32 0, i32 3), align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @elf64_relocation_offset, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 %47(i32 %52, i32* %10, i32 8)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @be64toh(i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %46, %42
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = bitcast i32* %58 to i8*
  %60 = bitcast i8* %59 to %struct.trampoline_data*
  store %struct.trampoline_data* %60, %struct.trampoline_data** %12, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @elf64_relocation_offset, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i8* @htobe32(i32 %63)
  %65 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %66 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = call i8* @htobe32(i32 0)
  %68 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %69 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = call i8* @htobe32(i32 0)
  %71 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %72 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %74 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @md_load64(i32 %75, i32* %5, i32* %6)
  store i32 %76, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %56
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %141

80:                                               ; preds = %56
  %81 = load i32, i32* %6, align 4
  %82 = call i8* @htobe32(i32 %81)
  %83 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %84 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i8* @htobe32(i32 %85)
  %87 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %88 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = call i8* @htobe32(i32 -77787059)
  %90 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %91 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %94 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @be32toh(i8* %95)
  %97 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %96)
  %98 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %99 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @be32toh(i8* %100)
  %102 = load %struct.trampoline_data*, %struct.trampoline_data** %12, align 8
  %103 = getelementptr inbounds %struct.trampoline_data, %struct.trampoline_data* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @be32toh(i8* %104)
  %106 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %105)
  %107 = call i32 (...) @dev_cleanup()
  %108 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @archsw, i32 0, i32 2), align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @szkerneltramp, align 4
  %112 = call i32 %108(i32* %109, i32 %110, i32 %111)
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @free(i32* %113)
  %115 = load i32 (i32*, i8**)*, i32 (i32*, i8**)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @archsw, i32 0, i32 1), align 8
  %116 = icmp eq i32 (i32*, i8**)* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %80
  %118 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %80
  %120 = load i32 (i32*, i8**)*, i32 (i32*, i8**)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @archsw, i32 0, i32 1), align 8
  %121 = call i32 %120(i32* %13, i8** %14)
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i8*, i8** %14, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = call i32 @kexec_load(i32 %122, i32 %123, i64 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %119
  %133 = call i32 @host_reboot(i32 -18751827, i32 672274793, i32 1163412803, i64 0)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %140
  br label %140

141:                                              ; preds = %78, %19
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @md_load64(i32, i32*, i32*) #1

declare dso_local i32 @be32toh(i8*) #1

declare dso_local i32 @dev_cleanup(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @kexec_load(i32, i32, i64) #1

declare dso_local i32 @host_reboot(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
