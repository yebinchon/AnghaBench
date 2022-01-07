; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_buffer_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_buffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buffer*, i8*, i64)* @buffer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buffer_read(%struct.buffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.buffer*, %struct.buffer** %4, align 8
  %9 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.buffer*, %struct.buffer** %4, align 8
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = call i64 @min(i64 %7, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.buffer*, %struct.buffer** %4, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.buffer*, %struct.buffer** %4, align 8
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @memcpy(i8* %16, i8* %25, i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.buffer*, %struct.buffer** %4, align 8
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load i64, i64* %6, align 8
  ret i64 %35
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
