; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_open_plain.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_open_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_lookup = type { i32, i32*, i32*, i32*, i32*, i32 }

@seq_next_plain = common dso_local global i32 0, align 4
@seq_lookup_plain = common dso_local global i32 0, align 4
@seq_get_num_entries_plain = common dso_local global i32 0, align 4
@seq_close_plain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_lookup*, i8*)* @seq_open_plain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_open_plain(%struct._citrus_lookup* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_lookup*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._citrus_lookup* %0, %struct._citrus_lookup** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %8 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %7, i32 0, i32 5
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @_map_file(i32* %8, i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %17 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %19 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %18, i32 0, i32 4
  store i32* @seq_next_plain, i32** %19, align 8
  %20 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %21 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %20, i32 0, i32 3
  store i32* @seq_lookup_plain, i32** %21, align 8
  %22 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %23 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %22, i32 0, i32 2
  store i32* @seq_get_num_entries_plain, i32** %23, align 8
  %24 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %25 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %24, i32 0, i32 1
  store i32* @seq_close_plain, i32** %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @_map_file(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
