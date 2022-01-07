; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_separate_debug_file_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_separate_debug_file_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @separate_debug_file_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @separate_debug_file_exists(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8192 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_BINARY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %24, %18
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %22 = call i32 @read(i32 %20, i8* %21, i32 8192)
  store i32 %22, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @gnu_debuglink_crc32(i64 %25, i8* %26, i32 %27)
  store i64 %28, i64* %6, align 8
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @gnu_debuglink_crc32(i64, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
