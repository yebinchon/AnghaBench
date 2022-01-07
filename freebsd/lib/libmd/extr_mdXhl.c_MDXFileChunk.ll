; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmd/extr_mdXhl.c_MDXFileChunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmd/extr_mdXhl.c_MDXFileChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MDXFileChunk(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @MDXFdChunk(i32 %20, i8* %21, i32 %22, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* @errno, align 4
  %29 = load i8*, i8** %10, align 8
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %19, %18
  %31 = load i8*, i8** %5, align 8
  ret i8* %31
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @MDXFdChunk(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
