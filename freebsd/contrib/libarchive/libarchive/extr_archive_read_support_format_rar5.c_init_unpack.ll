; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_init_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_init_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i32*, i32* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rar5*)* @init_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_unpack(%struct.rar5* %0) #0 {
  %2 = alloca %struct.rar5*, align 8
  store %struct.rar5* %0, %struct.rar5** %2, align 8
  %3 = load %struct.rar5*, %struct.rar5** %2, align 8
  %4 = getelementptr inbounds %struct.rar5, %struct.rar5* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = load %struct.rar5*, %struct.rar5** %2, align 8
  %7 = call i32 @init_window_mask(%struct.rar5* %6)
  %8 = load %struct.rar5*, %struct.rar5** %2, align 8
  %9 = getelementptr inbounds %struct.rar5, %struct.rar5* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 9
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @free(i32* %11)
  %13 = load %struct.rar5*, %struct.rar5** %2, align 8
  %14 = getelementptr inbounds %struct.rar5, %struct.rar5* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @free(i32* %16)
  %18 = load %struct.rar5*, %struct.rar5** %2, align 8
  %19 = getelementptr inbounds %struct.rar5, %struct.rar5* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %1
  %24 = load %struct.rar5*, %struct.rar5** %2, align 8
  %25 = getelementptr inbounds %struct.rar5, %struct.rar5* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @calloc(i32 1, i64 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.rar5*, %struct.rar5** %2, align 8
  %31 = getelementptr inbounds %struct.rar5, %struct.rar5* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 9
  store i32* %29, i32** %32, align 8
  %33 = load %struct.rar5*, %struct.rar5** %2, align 8
  %34 = getelementptr inbounds %struct.rar5, %struct.rar5* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @calloc(i32 1, i64 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.rar5*, %struct.rar5** %2, align 8
  %40 = getelementptr inbounds %struct.rar5, %struct.rar5* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 8
  store i32* %38, i32** %41, align 8
  br label %49

42:                                               ; preds = %1
  %43 = load %struct.rar5*, %struct.rar5** %2, align 8
  %44 = getelementptr inbounds %struct.rar5, %struct.rar5* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 9
  store i32* null, i32** %45, align 8
  %46 = load %struct.rar5*, %struct.rar5** %2, align 8
  %47 = getelementptr inbounds %struct.rar5, %struct.rar5* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 8
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %23
  %50 = load %struct.rar5*, %struct.rar5** %2, align 8
  %51 = getelementptr inbounds %struct.rar5, %struct.rar5* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load %struct.rar5*, %struct.rar5** %2, align 8
  %54 = getelementptr inbounds %struct.rar5, %struct.rar5* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.rar5*, %struct.rar5** %2, align 8
  %57 = getelementptr inbounds %struct.rar5, %struct.rar5* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = call i32 @memset(i32* %58, i32 0, i32 4)
  %60 = load %struct.rar5*, %struct.rar5** %2, align 8
  %61 = getelementptr inbounds %struct.rar5, %struct.rar5* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = call i32 @memset(i32* %62, i32 0, i32 4)
  %64 = load %struct.rar5*, %struct.rar5** %2, align 8
  %65 = getelementptr inbounds %struct.rar5, %struct.rar5* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = call i32 @memset(i32* %66, i32 0, i32 4)
  %68 = load %struct.rar5*, %struct.rar5** %2, align 8
  %69 = getelementptr inbounds %struct.rar5, %struct.rar5* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = call i32 @memset(i32* %70, i32 0, i32 4)
  %72 = load %struct.rar5*, %struct.rar5** %2, align 8
  %73 = getelementptr inbounds %struct.rar5, %struct.rar5* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = call i32 @memset(i32* %74, i32 0, i32 4)
  ret void
}

declare dso_local i32 @init_window_mask(%struct.rar5*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
