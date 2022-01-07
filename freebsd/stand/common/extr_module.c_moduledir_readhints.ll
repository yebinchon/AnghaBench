; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_moduledir_readhints.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_moduledir_readhints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moduledir = type { i32*, i32, i32 }
%struct.stat = type { i32 }

@MDIR_NOHINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"linker.hints\00", align 1
@LINKER_HINTS_MAX = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@LINKER_HINTS_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moduledir*)* @moduledir_readhints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moduledir_readhints(%struct.moduledir* %0) #0 {
  %2 = alloca %struct.moduledir*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.moduledir* %0, %struct.moduledir** %2, align 8
  %8 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %9 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %14 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MDIR_NOHINTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  br label %106

20:                                               ; preds = %12
  %21 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %22 = call i8* @moduledir_fullpath(%struct.moduledir* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @stat(i8* %23, %struct.stat* %3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LINKER_HINTS_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = call i32 @open(i8* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35, %30, %26, %20
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* @MDIR_NOHINTS, align 4
  %44 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %45 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %106

48:                                               ; preds = %35
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @read(i32 %51, i32* %7, i32 4)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 4
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @LINKER_HINTS_VERSION, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %48
  br label %91

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32* @malloc(i32 %66)
  %68 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %69 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %71 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %91

75:                                               ; preds = %61
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %78 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @read(i32 %76, i32* %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %91

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %88 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @close(i32 %89)
  br label %106

91:                                               ; preds = %84, %74, %60
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @close(i32 %92)
  %94 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %95 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = call i32 @free(i8* %97)
  %99 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %100 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  %101 = load i32, i32* @MDIR_NOHINTS, align 4
  %102 = load %struct.moduledir*, %struct.moduledir** %2, align 8
  %103 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %91, %85, %40, %19
  ret void
}

declare dso_local i8* @moduledir_fullpath(%struct.moduledir*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
