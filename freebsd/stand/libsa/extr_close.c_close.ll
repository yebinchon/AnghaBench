; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_close.c_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_close.c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 (%struct.open_file*)* }
%struct.TYPE_3__ = type { i32 (%struct.open_file*)* }

@files = common dso_local global %struct.open_file* null, align 8
@SOPEN_MAX = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_RAW = common dso_local global i32 0, align 4
@F_NODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.open_file*, %struct.open_file** @files, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.open_file, %struct.open_file* %7, i64 %9
  store %struct.open_file* %10, %struct.open_file** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SOPEN_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.open_file*, %struct.open_file** %4, align 8
  %16 = getelementptr inbounds %struct.open_file, %struct.open_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @EBADF, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %88

21:                                               ; preds = %14
  %22 = load %struct.open_file*, %struct.open_file** %4, align 8
  %23 = getelementptr inbounds %struct.open_file, %struct.open_file* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.open_file*, %struct.open_file** %4, align 8
  %27 = getelementptr inbounds %struct.open_file, %struct.open_file* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.open_file*, %struct.open_file** %4, align 8
  %29 = getelementptr inbounds %struct.open_file, %struct.open_file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @F_RAW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %21
  %35 = load %struct.open_file*, %struct.open_file** %4, align 8
  %36 = getelementptr inbounds %struct.open_file, %struct.open_file* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.open_file*, %struct.open_file** %4, align 8
  %41 = getelementptr inbounds %struct.open_file, %struct.open_file* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.open_file*)*, i32 (%struct.open_file*)** %43, align 8
  %45 = load %struct.open_file*, %struct.open_file** %4, align 8
  %46 = call i32 %44(%struct.open_file* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %34, %21
  %48 = load %struct.open_file*, %struct.open_file** %4, align 8
  %49 = getelementptr inbounds %struct.open_file, %struct.open_file* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @F_NODEV, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %47
  %55 = load %struct.open_file*, %struct.open_file** %4, align 8
  %56 = getelementptr inbounds %struct.open_file, %struct.open_file* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.open_file*, %struct.open_file** %4, align 8
  %61 = getelementptr inbounds %struct.open_file, %struct.open_file* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.open_file*)*, i32 (%struct.open_file*)** %63, align 8
  %65 = load %struct.open_file*, %struct.open_file** %4, align 8
  %66 = call i32 %64(%struct.open_file* %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %54, %47
  %68 = load %struct.open_file*, %struct.open_file** %4, align 8
  %69 = getelementptr inbounds %struct.open_file, %struct.open_file* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.open_file*, %struct.open_file** %4, align 8
  %74 = call i32 @devclose(%struct.open_file* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.open_file*, %struct.open_file** %4, align 8
  %77 = getelementptr inbounds %struct.open_file, %struct.open_file* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %88

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %88

87:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %85, %80, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @devclose(%struct.open_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
