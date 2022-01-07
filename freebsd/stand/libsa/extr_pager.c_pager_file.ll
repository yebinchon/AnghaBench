; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pager.c_pager_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pager.c_pager_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't open '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pager_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @errno, align 4
  %15 = call i8* @strerror(i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %15)
  store i32 -1, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %21 = call i64 @read(i32 %19, i8* %20, i32 79)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %7, align 4
  br label %37

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %33 = call i64 @pager_output(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %37

36:                                               ; preds = %29
  br label %18

37:                                               ; preds = %35, %28, %24
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
