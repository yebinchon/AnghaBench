; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_setencstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_setencstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"usage: %s device enclosure_status\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@ENCIOC_SETENCSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ENCIOC_SETENCSTAT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 1, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @O_RDWR, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @perror(i8* %27)
  store i32 1, i32* %3, align 4
  br label %45

29:                                               ; preds = %16
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strtol(i8* %32, i32* null, i32 0)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ENCIOC_SETENCSTAT, align 4
  %37 = ptrtoint i64* %8 to i32
  %38 = call i64 @ioctl(i32 %35, i32 %36, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @close(i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %24, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
