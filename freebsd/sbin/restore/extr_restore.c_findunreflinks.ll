; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_findunreflinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_findunreflinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i64, %struct.entry*, %struct.entry*, %struct.entry* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Find unreferenced names.\0A\00", align 1
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@LEAF = common dso_local global i64 0, align 8
@dumpmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: remove unreferenced name\0A\00", align 1
@removelist = common dso_local global %struct.entry* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"unreferenced with flags\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @findunreflinks() #0 {
  %1 = alloca %struct.entry*, align 8
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 @vprintf(i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* @UFS_ROOTINO, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %55, %0
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @maxino, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = call %struct.entry* @lookupino(i64 %12)
  store %struct.entry* %13, %struct.entry** %1, align 8
  %14 = load %struct.entry*, %struct.entry** %1, align 8
  %15 = icmp eq %struct.entry* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load %struct.entry*, %struct.entry** %1, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LEAF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @dumpmap, align 4
  %25 = call i64 @TSTINO(i64 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %16, %11
  br label %55

28:                                               ; preds = %22
  %29 = load %struct.entry*, %struct.entry** %1, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 3
  %31 = load %struct.entry*, %struct.entry** %30, align 8
  store %struct.entry* %31, %struct.entry** %2, align 8
  br label %32

32:                                               ; preds = %50, %28
  %33 = load %struct.entry*, %struct.entry** %2, align 8
  %34 = icmp ne %struct.entry* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.entry*, %struct.entry** %2, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* @stdout, align 4
  %42 = load %struct.entry*, %struct.entry** %2, align 8
  %43 = call i32 @myname(%struct.entry* %42)
  %44 = call i32 @dprintf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.entry*, %struct.entry** %2, align 8
  %46 = call i32 @removeleaf(%struct.entry* %45)
  %47 = load %struct.entry*, %struct.entry** %2, align 8
  %48 = call i32 @freeentry(%struct.entry* %47)
  br label %49

49:                                               ; preds = %40, %35
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.entry*, %struct.entry** %2, align 8
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 2
  %53 = load %struct.entry*, %struct.entry** %52, align 8
  store %struct.entry* %53, %struct.entry** %2, align 8
  br label %32

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %7

58:                                               ; preds = %7
  %59 = load %struct.entry*, %struct.entry** @removelist, align 8
  store %struct.entry* %59, %struct.entry** %1, align 8
  br label %60

60:                                               ; preds = %99, %58
  %61 = load %struct.entry*, %struct.entry** %1, align 8
  %62 = icmp ne %struct.entry* %61, null
  br i1 %62, label %63, label %103

63:                                               ; preds = %60
  %64 = load %struct.entry*, %struct.entry** %1, align 8
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 3
  %66 = load %struct.entry*, %struct.entry** %65, align 8
  store %struct.entry* %66, %struct.entry** %2, align 8
  br label %67

67:                                               ; preds = %94, %63
  %68 = load %struct.entry*, %struct.entry** %2, align 8
  %69 = icmp ne %struct.entry* %68, null
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = load %struct.entry*, %struct.entry** %2, align 8
  %72 = getelementptr inbounds %struct.entry, %struct.entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LEAF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load %struct.entry*, %struct.entry** %2, align 8
  %78 = getelementptr inbounds %struct.entry, %struct.entry* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.entry*, %struct.entry** %2, align 8
  %83 = call i32 @badentry(%struct.entry* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* @stdout, align 4
  %86 = load %struct.entry*, %struct.entry** %2, align 8
  %87 = call i32 @myname(%struct.entry* %86)
  %88 = call i32 @dprintf(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.entry*, %struct.entry** %2, align 8
  %90 = call i32 @removeleaf(%struct.entry* %89)
  %91 = load %struct.entry*, %struct.entry** %2, align 8
  %92 = call i32 @freeentry(%struct.entry* %91)
  br label %93

93:                                               ; preds = %84, %70
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.entry*, %struct.entry** %2, align 8
  %96 = getelementptr inbounds %struct.entry, %struct.entry* %95, i32 0, i32 2
  %97 = load %struct.entry*, %struct.entry** %96, align 8
  store %struct.entry* %97, %struct.entry** %2, align 8
  br label %67

98:                                               ; preds = %67
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.entry*, %struct.entry** %1, align 8
  %101 = getelementptr inbounds %struct.entry, %struct.entry* %100, i32 0, i32 4
  %102 = load %struct.entry*, %struct.entry** %101, align 8
  store %struct.entry* %102, %struct.entry** %1, align 8
  br label %60

103:                                              ; preds = %60
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i64 @TSTINO(i64, i32) #1

declare dso_local i32 @dprintf(i32, i8*, i32) #1

declare dso_local i32 @myname(%struct.entry*) #1

declare dso_local i32 @removeleaf(%struct.entry*) #1

declare dso_local i32 @freeentry(%struct.entry*) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
