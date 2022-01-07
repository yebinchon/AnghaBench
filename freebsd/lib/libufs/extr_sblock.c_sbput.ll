; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_sblock.c_sbput.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_sblock.c_sbput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { %struct.csum*, i8* }
%struct.csum = type { i32 }

@use_pwrite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbput(i32 %0, %struct.fs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csum*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.fs* %1, %struct.fs** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fs*, %struct.fs** %6, align 8
  %13 = load %struct.fs*, %struct.fs** %6, align 8
  %14 = getelementptr inbounds %struct.fs, %struct.fs* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @use_pwrite, align 4
  %17 = call i32 @ffs_sbput(i32* %5, %struct.fs* %12, i8* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %72

25:                                               ; preds = %21
  %26 = load %struct.fs*, %struct.fs** %6, align 8
  %27 = getelementptr inbounds %struct.fs, %struct.fs* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.fs*, %struct.fs** %6, align 8
  %30 = getelementptr inbounds %struct.fs, %struct.fs* %29, i32 0, i32 0
  %31 = load %struct.csum*, %struct.csum** %30, align 8
  store %struct.csum* %31, %struct.csum** %8, align 8
  %32 = load %struct.fs*, %struct.fs** %6, align 8
  %33 = getelementptr inbounds %struct.fs, %struct.fs* %32, i32 0, i32 0
  store %struct.csum* null, %struct.csum** %33, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %62, %25
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = load %struct.fs*, %struct.fs** %6, align 8
  %40 = load %struct.fs*, %struct.fs** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @cgsblock(%struct.fs* %40, i32 %41)
  %43 = call i32 @fsbtodb(%struct.fs* %39, i32 %42)
  %44 = call i8* @dbtob(i32 %43)
  %45 = load %struct.fs*, %struct.fs** %6, align 8
  %46 = getelementptr inbounds %struct.fs, %struct.fs* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.fs*, %struct.fs** %6, align 8
  %48 = load %struct.fs*, %struct.fs** %6, align 8
  %49 = getelementptr inbounds %struct.fs, %struct.fs* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @use_pwrite, align 4
  %52 = call i32 @ffs_sbput(i32* %5, %struct.fs* %47, i8* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.fs*, %struct.fs** %6, align 8
  %57 = getelementptr inbounds %struct.fs, %struct.fs* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.csum*, %struct.csum** %8, align 8
  %59 = load %struct.fs*, %struct.fs** %6, align 8
  %60 = getelementptr inbounds %struct.fs, %struct.fs* %59, i32 0, i32 0
  store %struct.csum* %58, %struct.csum** %60, align 8
  store i32 -1, i32* %4, align 4
  br label %72

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %34

65:                                               ; preds = %34
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.fs*, %struct.fs** %6, align 8
  %68 = getelementptr inbounds %struct.fs, %struct.fs* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.csum*, %struct.csum** %8, align 8
  %70 = load %struct.fs*, %struct.fs** %6, align 8
  %71 = getelementptr inbounds %struct.fs, %struct.fs* %70, i32 0, i32 0
  store %struct.csum* %69, %struct.csum** %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %54, %24, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @ffs_sbput(i32*, %struct.fs*, i8*, i32) #1

declare dso_local i8* @dbtob(i32) #1

declare dso_local i32 @fsbtodb(%struct.fs*, i32) #1

declare dso_local i32 @cgsblock(%struct.fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
