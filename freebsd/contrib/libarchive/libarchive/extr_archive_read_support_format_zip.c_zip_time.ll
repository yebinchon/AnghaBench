; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zip_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_time(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = and i32 255, %9
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 255, %14
  %16 = mul i32 256, %15
  %17 = add i32 %10, %16
  store i32 %17, i32* %3, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = and i32 255, %21
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = and i32 255, %26
  %28 = mul i32 256, %27
  %29 = add i32 %22, %28
  store i32 %29, i32* %4, align 4
  %30 = call i32 @memset(%struct.tm* %5, i32 0, i32 28)
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 9
  %33 = and i32 %32, 127
  %34 = add nsw i32 %33, 80
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 5
  %38 = and i32 %37, 15
  %39 = sub nsw i32 %38, 1
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 31
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = ashr i32 %44, 11
  %46 = and i32 %45, 31
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 5
  %50 = and i32 %49, 63
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  %53 = shl i32 %52, 1
  %54 = and i32 %53, 62
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  store i32 -1, i32* %56, align 4
  %57 = call i32 @mktime(%struct.tm* %5)
  ret i32 %57
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
