; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c_find_dst.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c_find_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_arg = type { i64, i32 }
%struct._lookup = type { i32 }
%struct._region = type { i32 }

@CS_PIVOT = common dso_local global i32 0, align 4
@_LOOKUP_CASE_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_arg*, i8*)* @find_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dst(%struct.parse_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parse_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._lookup*, align 8
  %7 = alloca %struct.parse_arg, align 8
  %8 = alloca %struct._region, align 4
  %9 = alloca i32, align 4
  store %struct.parse_arg* %0, %struct.parse_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @CS_PIVOT, align 4
  %11 = load i32, i32* @_LOOKUP_CASE_IGNORE, align 4
  %12 = call i32 @_lookup_seq_open(%struct._lookup** %6, i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct._lookup*, %struct._lookup** %6, align 8
  %19 = load %struct.parse_arg*, %struct.parse_arg** %4, align 8
  %20 = getelementptr inbounds %struct.parse_arg, %struct.parse_arg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @_lookup_seq_lookup(%struct._lookup* %18, i32 %21, %struct._region* %8)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %44, %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = call i32 @parse_line(%struct.parse_arg* %7, %struct._region* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %47

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds %struct.parse_arg, %struct.parse_arg* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strcmp(i8* %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.parse_arg, %struct.parse_arg* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.parse_arg*, %struct.parse_arg** %4, align 8
  %41 = getelementptr inbounds %struct.parse_arg, %struct.parse_arg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %47

44:                                               ; preds = %31
  %45 = load %struct._lookup*, %struct._lookup** %6, align 8
  %46 = call i32 @_lookup_seq_next(%struct._lookup* %45, i32* null, %struct._region* %8)
  store i32 %46, i32* %9, align 4
  br label %23

47:                                               ; preds = %37, %30, %23
  %48 = load %struct._lookup*, %struct._lookup** %6, align 8
  %49 = call i32 @_lookup_seq_close(%struct._lookup* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @_lookup_seq_open(%struct._lookup**, i32, i32) #1

declare dso_local i32 @_lookup_seq_lookup(%struct._lookup*, i32, %struct._region*) #1

declare dso_local i32 @parse_line(%struct.parse_arg*, %struct._region*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @_lookup_seq_next(%struct._lookup*, i32*, %struct._region*) #1

declare dso_local i32 @_lookup_seq_close(%struct._lookup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
