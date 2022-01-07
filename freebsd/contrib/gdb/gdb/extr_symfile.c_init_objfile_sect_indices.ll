; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_init_objfile_sect_indices.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_init_objfile_sect_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @init_objfile_sect_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_objfile_sect_indices(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %5 = load %struct.objfile*, %struct.objfile** %2, align 8
  %6 = getelementptr inbounds %struct.objfile, %struct.objfile* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.objfile*, %struct.objfile** %2, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.objfile*, %struct.objfile** %2, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.objfile*, %struct.objfile** %2, align 8
  %29 = getelementptr inbounds %struct.objfile, %struct.objfile* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.objfile*, %struct.objfile** %2, align 8
  %32 = getelementptr inbounds %struct.objfile, %struct.objfile* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %3, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.objfile*, %struct.objfile** %2, align 8
  %42 = getelementptr inbounds %struct.objfile, %struct.objfile* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.objfile*, %struct.objfile** %2, align 8
  %45 = getelementptr inbounds %struct.objfile, %struct.objfile* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_3__* @bfd_get_section_by_name(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.objfile*, %struct.objfile** %2, align 8
  %55 = getelementptr inbounds %struct.objfile, %struct.objfile* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %43
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.objfile*, %struct.objfile** %2, align 8
  %60 = getelementptr inbounds %struct.objfile, %struct.objfile* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.objfile*, %struct.objfile** %2, align 8
  %65 = getelementptr inbounds %struct.objfile, %struct.objfile* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @ANOFFSET(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %75

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %57

75:                                               ; preds = %70, %57
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.objfile*, %struct.objfile** %2, align 8
  %78 = getelementptr inbounds %struct.objfile, %struct.objfile* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %75
  %82 = load %struct.objfile*, %struct.objfile** %2, align 8
  %83 = getelementptr inbounds %struct.objfile, %struct.objfile* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.objfile*, %struct.objfile** %2, align 8
  %88 = getelementptr inbounds %struct.objfile, %struct.objfile* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.objfile*, %struct.objfile** %2, align 8
  %91 = getelementptr inbounds %struct.objfile, %struct.objfile* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.objfile*, %struct.objfile** %2, align 8
  %96 = getelementptr inbounds %struct.objfile, %struct.objfile* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.objfile*, %struct.objfile** %2, align 8
  %99 = getelementptr inbounds %struct.objfile, %struct.objfile* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.objfile*, %struct.objfile** %2, align 8
  %104 = getelementptr inbounds %struct.objfile, %struct.objfile* %103, i32 0, i32 2
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.objfile*, %struct.objfile** %2, align 8
  %107 = getelementptr inbounds %struct.objfile, %struct.objfile* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.objfile*, %struct.objfile** %2, align 8
  %112 = getelementptr inbounds %struct.objfile, %struct.objfile* %111, i32 0, i32 3
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113, %75
  ret void
}

declare dso_local %struct.TYPE_3__* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
