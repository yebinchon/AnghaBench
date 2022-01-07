; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_split_openfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_split_openfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.split_file = type { i32, i64, i8**, i64, i32* }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@NTRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"\0AInsert disk labelled %s and press any key...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.split_file*)* @split_openfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_openfile(%struct.split_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.split_file*, align 8
  %4 = alloca i32, align 4
  store %struct.split_file* %0, %struct.split_file** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %53, %1
  %6 = load %struct.split_file*, %struct.split_file** %3, align 8
  %7 = getelementptr inbounds %struct.split_file, %struct.split_file* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.split_file*, %struct.split_file** %3, align 8
  %10 = getelementptr inbounds %struct.split_file, %struct.split_file* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i32 %13, i32 %14)
  %16 = load %struct.split_file*, %struct.split_file** %3, align 8
  %17 = getelementptr inbounds %struct.split_file, %struct.split_file* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.split_file*, %struct.split_file** %3, align 8
  %19 = getelementptr inbounds %struct.split_file, %struct.split_file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %56

23:                                               ; preds = %5
  %24 = load %struct.split_file*, %struct.split_file** %3, align 8
  %25 = getelementptr inbounds %struct.split_file, %struct.split_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* @errno, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %59

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NTRIES, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %2, align 4
  br label %59

41:                                               ; preds = %35
  %42 = load %struct.split_file*, %struct.split_file** %3, align 8
  %43 = getelementptr inbounds %struct.split_file, %struct.split_file* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.split_file*, %struct.split_file** %3, align 8
  %46 = getelementptr inbounds %struct.split_file, %struct.split_file* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = call i32 (...) @getchar()
  %52 = call i32 @putchar(i8 signext 10)
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %5

56:                                               ; preds = %22
  %57 = load %struct.split_file*, %struct.split_file** %3, align 8
  %58 = getelementptr inbounds %struct.split_file, %struct.split_file* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %39, %32
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
