; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_debug.c_dump_obj_relocations.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_debug.c_dump_obj_relocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Object \22%s\22, relocbase %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Non-PLT Relocations: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Non-PLT Relocations with Addend: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"PLT Relocations: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"PLT Relocations with Addend: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_obj_relocations(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, i32, ...) @rtld_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, i32, ...) @rtld_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dump_Elf_Rel(%struct.TYPE_5__* %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %14, %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i8*, i32, ...) @rtld_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dump_Elf_Rela(%struct.TYPE_5__* %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %35, %30
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, i32, ...) @rtld_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dump_Elf_Rel(%struct.TYPE_5__* %64, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %56, %51
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i8*, i32, ...) @rtld_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dump_Elf_Rela(%struct.TYPE_5__* %85, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @rtld_printf(i8*, i32, ...) #1

declare dso_local i32 @dump_Elf_Rel(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dump_Elf_Rela(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
