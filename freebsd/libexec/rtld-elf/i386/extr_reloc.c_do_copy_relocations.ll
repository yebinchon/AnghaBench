; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/i386/extr_reloc.c_do_copy_relocations.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/i386/extr_reloc.c_do_copy_relocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i64, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32 }

@R_386_COPY = common dso_local global i64 0, align 8
@SYMLOOK_EARLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Undefined symbol \22%s\22 referenced from COPY relocation in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_copy_relocations(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
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
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %4, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %5, align 8
  br label %33

33:                                               ; preds = %126, %1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = icmp ult %struct.TYPE_15__* %34, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %33
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ELF_R_TYPE(i32 %40)
  %42 = load i64, i64* @R_386_COPY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %125

44:                                               ; preds = %37
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %6, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ELF_R_SYM(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 %60
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %7, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8* %69, i8** %8, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @symlook_init(%struct.TYPE_12__* %14, i8* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ELF_R_SYM(i32 %78)
  %80 = call i32 @fetch_ventry(%struct.TYPE_13__* %75, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @SYMLOOK_EARLY, align 4
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = call %struct.TYPE_13__* @globallist_next(%struct.TYPE_13__* %84)
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %12, align 8
  br label %86

86:                                               ; preds = %100, %44
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = call i32 @symlook_obj(%struct.TYPE_12__* %14, %struct.TYPE_13__* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %13, align 8
  br label %103

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %102 = call %struct.TYPE_13__* @globallist_next(%struct.TYPE_13__* %101)
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %12, align 8
  br label %86

103:                                              ; preds = %94, %86
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %105 = icmp eq %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @_rtld_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %110)
  store i32 -1, i32* %2, align 4
  br label %130

112:                                              ; preds = %103
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %10, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @memcpy(i8* %121, i8* %122, i64 %123)
  br label %125

125:                                              ; preds = %112, %37
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 1
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %5, align 8
  br label %33

129:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %106
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
