; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_tryclear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_tryclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i64 }
%struct.fatEntry = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Clear chain starting at %u\00", align 1
@FSFATMOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Truncate\00", align 1
@CLUST_FIRST = common dso_local global i64 0, align 8
@CLUST_EOF = common dso_local global i64 0, align 8
@FSERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tryclear(%struct.bootblock* %0, %struct.fatEntry* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bootblock*, align 8
  %7 = alloca %struct.fatEntry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bootblock* %0, %struct.bootblock** %6, align 8
  store %struct.fatEntry* %1, %struct.fatEntry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %17 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @clearchain(%struct.bootblock* %16, %struct.fatEntry* %17, i64 %18)
  %20 = load i32, i32* @FSFATMOD, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %4
  %22 = call i64 (i32, i8*, ...) @ask(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %39, %24
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @CLUST_FIRST, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %33 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i1 [ false, %26 ], [ %35, %30 ]
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %40, i64 %41
  %43 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %26

47:                                               ; preds = %36
  %48 = load i64, i64* @CLUST_EOF, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %51, i64 %52
  %54 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %53, i32 0, i32 1
  store i64 %50, i64* %54, align 8
  %55 = load i32, i32* @FSFATMOD, align 4
  store i32 %55, i32* %5, align 4
  br label %58

56:                                               ; preds = %21
  %57 = load i32, i32* @FSERROR, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %47, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @ask(i32, i8*, ...) #1

declare dso_local i32 @clearchain(%struct.bootblock*, %struct.fatEntry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
