; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_write_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_write_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Writing %02x to %08lx\0A\00", align 1
@PT_READ_D = common dso_local global i32 0, align 4
@inferior_pid = common dso_local global i32 0, align 4
@errno = external dso_local global i32, align 4
@PT_WRITE_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @fbsd_write_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbsd_write_memory(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, -4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = sub i64 %20, 1
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64 @alloca(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = load i64, i64* @debug_threads, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %39)
  br label %41

41:                                               ; preds = %32, %3
  %42 = load i32, i32* @PT_READ_D, align 4
  %43 = load i32, i32* @inferior_pid, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = trunc i64 %45 to i32
  %47 = call i32 @ptrace(i32 %42, i32 %43, i32 %46, i32 0)
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %69

52:                                               ; preds = %41
  %53 = load i32, i32* @PT_READ_D, align 4
  %54 = load i32, i32* @inferior_pid, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = add i64 %56, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ptrace(i32 %53, i32 %54, i32 %62, i32 0)
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  br label %69

69:                                               ; preds = %52, %41
  %70 = load i32*, i32** %11, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 3
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %100, %69
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  store i32 0, i32* @errno, align 4
  %84 = load i32, i32* @PT_WRITE_D, align 4
  %85 = load i32, i32* @inferior_pid, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ptrace(i32 %84, i32 %85, i32 %88, i32 %93)
  %95 = load i32, i32* @errno, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* @errno, align 4
  store i32 %98, i32* %4, align 4
  br label %108

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %79

107:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %97
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
