; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_open_debug_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_open_debug_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ERROR: CRC32 mismatch for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @open_debug_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_debug_file(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* @PATH_MAX, align 8
  %13 = call i64 @strlcat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @PATH_MAX, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* @PATH_MAX, align 8
  %22 = call i64 @strlcat(i8* %19, i8* %20, i64 %21)
  %23 = load i64, i64* @PATH_MAX, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %48

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = load i32, i32* @O_CLOEXEC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @open(i8* %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %48

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @crc32_file(i32 %35, i64* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @DPRINTFX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @close(i32 %45)
  store i32 -1, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %33, %25
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @crc32_file(i32, i64*) #1

declare dso_local i32 @DPRINTFX(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
