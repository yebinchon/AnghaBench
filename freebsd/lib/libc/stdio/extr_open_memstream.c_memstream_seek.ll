; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_memstream.c_memstream_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_memstream.c_memstream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstream = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FPOS_MAX = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @memstream_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memstream_seek(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.memstream*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.memstream*
  store %struct.memstream* %10, %struct.memstream** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %57 [
    i32 128, label %12
    i32 130, label %20
    i32 129, label %25
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.memstream*, %struct.memstream** %8, align 8
  %19 = getelementptr inbounds %struct.memstream, %struct.memstream* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %57

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %57

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.memstream*, %struct.memstream** %8, align 8
  %31 = getelementptr inbounds %struct.memstream, %struct.memstream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %63

37:                                               ; preds = %28
  br label %49

38:                                               ; preds = %25
  %39 = load i32, i32* @FPOS_MAX, align 4
  %40 = load %struct.memstream*, %struct.memstream** %8, align 8
  %41 = getelementptr inbounds %struct.memstream, %struct.memstream* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @EOVERFLOW, align 4
  store i32 %47, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %63

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.memstream*, %struct.memstream** %8, align 8
  %51 = getelementptr inbounds %struct.memstream, %struct.memstream* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.memstream*, %struct.memstream** %8, align 8
  %56 = getelementptr inbounds %struct.memstream, %struct.memstream* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %3, %49, %20, %12
  %58 = load %struct.memstream*, %struct.memstream** %8, align 8
  %59 = call i32 @memstream_update(%struct.memstream* %58)
  %60 = load %struct.memstream*, %struct.memstream** %8, align 8
  %61 = getelementptr inbounds %struct.memstream, %struct.memstream* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %46, %35
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memstream_update(%struct.memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
