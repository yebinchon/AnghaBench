; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffsolib.c_sharedlibrary_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffsolib.c_sharedlibrary_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { i8*, i8*, i64, %struct.vmap* }

@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid regexp: %s\00", align 1
@vmap = common dso_local global %struct.vmap* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Symbols already loaded for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"No loaded shared libraries match the pattern `%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sharedlibrary_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharedlibrary_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmap*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @dont_repeat()
  %10 = load i32, i32* @inferior_ptid, align 4
  %11 = load i32, i32* @null_ptid, align 4
  %12 = call i32 @ptid_equal(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = call i32 @PIDGET(i32 %15)
  %17 = call i32 @xcoff_relocate_symtab(i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @re_comp(i8* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %18
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %31 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  store %struct.vmap* %31, %struct.vmap** %8, align 8
  %32 = load %struct.vmap*, %struct.vmap** %8, align 8
  %33 = icmp ne %struct.vmap* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %107

35:                                               ; preds = %30
  %36 = load %struct.vmap*, %struct.vmap** %8, align 8
  %37 = getelementptr inbounds %struct.vmap, %struct.vmap* %36, i32 0, i32 3
  %38 = load %struct.vmap*, %struct.vmap** %37, align 8
  store %struct.vmap* %38, %struct.vmap** %8, align 8
  br label %39

39:                                               ; preds = %86, %35
  %40 = load %struct.vmap*, %struct.vmap** %8, align 8
  %41 = icmp ne %struct.vmap* %40, null
  br i1 %41, label %42, label %90

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.vmap*, %struct.vmap** %8, align 8
  %47 = getelementptr inbounds %struct.vmap, %struct.vmap* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @re_exec(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %45
  %52 = load %struct.vmap*, %struct.vmap** %8, align 8
  %53 = getelementptr inbounds %struct.vmap, %struct.vmap* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %51
  %59 = load %struct.vmap*, %struct.vmap** %8, align 8
  %60 = getelementptr inbounds %struct.vmap, %struct.vmap* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @re_exec(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %58, %45, %42
  store i32 1, i32* %6, align 4
  %65 = load %struct.vmap*, %struct.vmap** %8, align 8
  %66 = getelementptr inbounds %struct.vmap, %struct.vmap* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.vmap*, %struct.vmap** %8, align 8
  %74 = getelementptr inbounds %struct.vmap, %struct.vmap* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %72, %69
  br label %84

78:                                               ; preds = %64
  %79 = load %struct.vmap*, %struct.vmap** %8, align 8
  %80 = call i64 @vmap_add_symbols(%struct.vmap* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %78
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84, %58, %51
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.vmap*, %struct.vmap** %8, align 8
  %88 = getelementptr inbounds %struct.vmap, %struct.vmap* %87, i32 0, i32 3
  %89 = load %struct.vmap*, %struct.vmap** %88, align 8
  store %struct.vmap* %89, %struct.vmap** %8, align 8
  br label %39

90:                                               ; preds = %39
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i8*, i8** %3, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %96, %93, %90
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (...) @reinit_frame_cache()
  br label %107

107:                                              ; preds = %34, %105, %102
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @xcoff_relocate_symtab(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i8* @re_comp(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @re_exec(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*) #1

declare dso_local i64 @vmap_add_symbols(%struct.vmap*) #1

declare dso_local i32 @reinit_frame_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
