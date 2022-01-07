; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_buffer_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buffer*, i8*, i64)* @buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buffer_write(%struct.buffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.buffer* %0, %struct.buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.buffer*, %struct.buffer** %5, align 8
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %11, %12
  %14 = load %struct.buffer*, %struct.buffer** %5, align 8
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load %struct.buffer*, %struct.buffer** %5, align 8
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i8* @malloc(i32 1024)
  store i8* %24, i8** %8, align 8
  br label %35

25:                                               ; preds = %18
  %26 = load %struct.buffer*, %struct.buffer** %5, align 8
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.buffer*, %struct.buffer** %5, align 8
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %31, %32
  %34 = call i8* @realloc(i32* %28, i64 %33)
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %25, %23
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i64 -1, i64* %4, align 8
  br label %69

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.buffer*, %struct.buffer** %5, align 8
  %43 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.buffer*, %struct.buffer** %5, align 8
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %46, %47
  %49 = load %struct.buffer*, %struct.buffer** %5, align 8
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %39, %3
  %52 = load %struct.buffer*, %struct.buffer** %5, align 8
  %53 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = load %struct.buffer*, %struct.buffer** %5, align 8
  %57 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.buffer*, %struct.buffer** %5, align 8
  %65 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %51, %38
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @realloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
