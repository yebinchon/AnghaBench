; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_dos_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_dos_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dos_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.tm* @localtime(i32* %2)
  store %struct.tm* %5, %struct.tm** %3, align 8
  %6 = load %struct.tm*, %struct.tm** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 80
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 2162688, i32* %4, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 207
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 -6307971, i32* %4, align 4
  br label %63

17:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  %18 = load %struct.tm*, %struct.tm** %3, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 80
  %22 = and i32 %21, 127
  %23 = shl i32 %22, 9
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.tm*, %struct.tm** %3, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = and i32 %29, 15
  %31 = shl i32 %30, 5
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.tm*, %struct.tm** %3, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 31
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 16
  store i32 %41, i32* %4, align 4
  %42 = load %struct.tm*, %struct.tm** %3, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 31
  %46 = shl i32 %45, 11
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.tm*, %struct.tm** %3, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 63
  %53 = shl i32 %52, 5
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.tm*, %struct.tm** %3, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 62
  %60 = ashr i32 %59, 1
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %17, %16
  br label %64

64:                                               ; preds = %63, %10
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.tm* @localtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
