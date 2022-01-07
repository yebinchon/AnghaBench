; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_line.linebuf = internal global [512 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_line(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 509
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 0), i64 %10
  %12 = call i32 @read(i32 %9, i8* %11, i32 1)
  %13 = icmp eq i32 %12, 1
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %34

16:                                               ; preds = %14
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 %23
  store i8 13, i8* %25, align 1
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 %26
  store i8 10, i8* %28, align 1
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 0), i8** %2, align 8
  br label %41

31:                                               ; preds = %16
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %5

34:                                               ; preds = %14
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @get_line.linebuf, i64 0, i64 0), i8* null
  store i8* %40, i8** %2, align 8
  br label %41

41:                                               ; preds = %34, %22
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
