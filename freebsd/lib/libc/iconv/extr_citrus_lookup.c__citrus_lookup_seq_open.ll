; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c__citrus_lookup_seq_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c__citrus_lookup_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_lookup = type { i32, i64, i32* }

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_lookup_seq_open(%struct._citrus_lookup** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._citrus_lookup**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._citrus_lookup*, align 8
  store %struct._citrus_lookup** %0, %struct._citrus_lookup*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct._citrus_lookup* @malloc(i32 24)
  store %struct._citrus_lookup* %10, %struct._citrus_lookup** %9, align 8
  %11 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %12 = icmp eq %struct._citrus_lookup* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %17 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %19 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %22 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @seq_open_db(%struct._citrus_lookup* %23, i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @seq_open_plain(%struct._citrus_lookup* %30, i8* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %15
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %38 = load %struct._citrus_lookup**, %struct._citrus_lookup*** %5, align 8
  store %struct._citrus_lookup* %37, %struct._citrus_lookup** %38, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load %struct._citrus_lookup*, %struct._citrus_lookup** %9, align 8
  %41 = call i32 @free(%struct._citrus_lookup* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct._citrus_lookup* @malloc(i32) #1

declare dso_local i32 @seq_open_db(%struct._citrus_lookup*, i8*) #1

declare dso_local i32 @seq_open_plain(%struct._citrus_lookup*, i8*) #1

declare dso_local i32 @free(%struct._citrus_lookup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
