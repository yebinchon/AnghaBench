; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_io.c_readfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/locale/extr_t_io.c_readfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibuf = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @readfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readfn(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibuf*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ibuf*
  store %struct.ibuf* %10, %struct.ibuf** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.ibuf*, %struct.ibuf** %7, align 8
  %14 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ibuf*, %struct.ibuf** %7, align 8
  %17 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = call i64 @MIN(i64 %12, i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.ibuf*, %struct.ibuf** %7, align 8
  %23 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ibuf*, %struct.ibuf** %7, align 8
  %26 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @memcpy(i8* %21, i64 %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.ibuf*, %struct.ibuf** %7, align 8
  %33 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
