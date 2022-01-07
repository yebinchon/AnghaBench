; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i32 }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"112|No previous files to edit\00", align 1
@E_NEWSCREEN = common dso_local global i32 0, align 4
@E_C_FORCE = common dso_local global i32 0, align 4
@FS_ALL = common dso_local global i32 0, align 4
@FS_POSSIBLE = common dso_local global i32 0, align 4
@FS_SETALT = common dso_local global i32 0, align 4
@FS_FORCE = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_prev(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = load i32, i32* @M_ERR, align 4
  %19 = call i32 @msgq(%struct.TYPE_16__* %17, i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = load i32, i32* @E_NEWSCREEN, align 4
  %23 = call i64 @F_ISSET(%struct.TYPE_17__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 -1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = add nsw i64 %37, 1
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @CHAR2INT(%struct.TYPE_16__* %26, i32 %31, i64 %38, i32* %39, i64 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %45, 1
  %47 = call i64 @argv_exp0(%struct.TYPE_16__* %42, %struct.TYPE_17__* %43, i32* %44, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %104

50:                                               ; preds = %25
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = call i32 @ex_edit(%struct.TYPE_16__* %51, %struct.TYPE_17__* %52)
  store i32 %53, i32* %3, align 4
  br label %104

54:                                               ; preds = %20
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @E_C_FORCE, align 4
  %60 = call i64 @FL_ISSET(i32 %58, i32 %59)
  %61 = load i32, i32* @FS_ALL, align 4
  %62 = load i32, i32* @FS_POSSIBLE, align 4
  %63 = or i32 %61, %62
  %64 = call i64 @file_m1(%struct.TYPE_16__* %55, i64 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %104

67:                                               ; preds = %54
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 -1
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @file_add(%struct.TYPE_16__* %68, i32 %73)
  store i32* %74, i32** %6, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %104

77:                                               ; preds = %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @FS_SETALT, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @E_C_FORCE, align 4
  %85 = call i64 @FL_ISSET(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @FS_FORCE, align 4
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = or i32 %80, %91
  %93 = call i64 @file_init(%struct.TYPE_16__* %78, i32* %79, i32* null, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %3, align 4
  br label %104

96:                                               ; preds = %90
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 -1
  store i32* %100, i32** %98, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = load i32, i32* @SC_FSWITCH, align 4
  %103 = call i32 @F_SET(%struct.TYPE_16__* %101, i32 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %95, %76, %66, %50, %49, %16
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @msgq(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @CHAR2INT(%struct.TYPE_16__*, i32, i64, i32*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @argv_exp0(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i64) #1

declare dso_local i32 @ex_edit(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i64 @file_m1(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32* @file_add(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @file_init(%struct.TYPE_16__*, i32*, i32*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
