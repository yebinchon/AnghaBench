; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_puts.c_puts.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_puts.c_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__suio = type { i64, i32, %struct.__siov* }
%struct.__siov = type { i8*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.__suio, align 8
  %6 = alloca [2 x %struct.__siov], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds [2 x %struct.__siov], [2 x %struct.__siov]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.__siov, %struct.__siov* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 16
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %4, align 8
  %12 = getelementptr inbounds [2 x %struct.__siov], [2 x %struct.__siov]* %6, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__siov, %struct.__siov* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = getelementptr inbounds [2 x %struct.__siov], [2 x %struct.__siov]* %6, i64 0, i64 1
  %15 = getelementptr inbounds %struct.__siov, %struct.__siov* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds [2 x %struct.__siov], [2 x %struct.__siov]* %6, i64 0, i64 1
  %17 = getelementptr inbounds %struct.__siov, %struct.__siov* %16, i32 0, i32 1
  store i64 1, i64* %17, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds %struct.__suio, %struct.__suio* %5, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds [2 x %struct.__siov], [2 x %struct.__siov]* %6, i64 0, i64 0
  %22 = getelementptr inbounds %struct.__suio, %struct.__suio* %5, i32 0, i32 2
  store %struct.__siov* %21, %struct.__siov** %22, align 8
  %23 = getelementptr inbounds %struct.__suio, %struct.__suio* %5, i32 0, i32 1
  store i32 2, i32* %23, align 8
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @FLOCKFILE_CANCELSAFE(i32 %24)
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @ORIENT(i32 %26, i32 -1)
  %28 = load i32, i32* @stdout, align 4
  %29 = call i64 @__sfvwrite(i32 %28, %struct.__suio* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i8, i8* @EOF, align 1
  %33 = sext i8 %32 to i32
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 10, %34 ]
  store i32 %36, i32* %3, align 4
  %37 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @FLOCKFILE_CANCELSAFE(i32) #1

declare dso_local i32 @ORIENT(i32, i32) #1

declare dso_local i64 @__sfvwrite(i32, %struct.__suio*) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
