; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/riscv/extr_reloc.c_do_copy_relocations.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/riscv/extr_reloc.c_do_copy_relocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i64, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32 }

@R_RISCV_COPY = common dso_local global i64 0, align 8
@SYMLOOK_EARLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Undefined symbol \22%s\22 referenced from COPY relocation in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_copy_relocations(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = bitcast %struct.TYPE_15__* %22 to i8*
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %7, align 8
  br label %33

33:                                               ; preds = %126, %1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = icmp ult %struct.TYPE_15__* %34, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %33
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ELF_R_TYPE(i32 %40)
  %42 = load i64, i64* @R_RISCV_COPY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %126

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %12, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ELF_R_SYM(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %61
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %9, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8* %70, i8** %11, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %14, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @symlook_init(%struct.TYPE_12__* %13, i8* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ELF_R_SYM(i32 %79)
  %81 = call i32 @fetch_ventry(%struct.TYPE_13__* %76, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @SYMLOOK_EARLY, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = call %struct.TYPE_13__* @globallist_next(%struct.TYPE_13__* %85)
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %4, align 8
  br label %87

87:                                               ; preds = %101, %45
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = call i32 @symlook_obj(%struct.TYPE_12__* %13, %struct.TYPE_13__* %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %5, align 8
  br label %104

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = call %struct.TYPE_13__* @globallist_next(%struct.TYPE_13__* %102)
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %4, align 8
  br label %87

104:                                              ; preds = %95, %87
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = icmp eq %struct.TYPE_13__* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @_rtld_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %108, i32 %111)
  store i32 -1, i32* %2, align 4
  br label %130

113:                                              ; preds = %104
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = inttoptr i64 %120 to i8*
  store i8* %121, i8** %10, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @memcpy(i8* %122, i8* %123, i64 %124)
  br label %126

126:                                              ; preds = %113, %44
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 1
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %7, align 8
  br label %33

129:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %107
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ELF_R_TYPE(i32) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @symlook_init(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @fetch_ventry(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @globallist_next(%struct.TYPE_13__*) #1

declare dso_local i32 @symlook_obj(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @_rtld_error(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
