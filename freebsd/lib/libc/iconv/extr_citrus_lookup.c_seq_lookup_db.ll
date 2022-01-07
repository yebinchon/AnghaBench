; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_lookup_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_lookup_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_lookup = type { i32, i32, i32, i32, i64, i64 }
%struct._region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_lookup*, i8*, %struct._region*)* @seq_lookup_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_lookup_db(%struct._citrus_lookup* %0, i8* %1, %struct._region* %2) #0 {
  %4 = alloca %struct._citrus_lookup*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._region*, align 8
  store %struct._citrus_lookup* %0, %struct._citrus_lookup** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct._region* %2, %struct._region** %6, align 8
  %7 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %8 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %10 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strdup(i8* %13)
  %15 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %16 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %18 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %23 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_bcs_convert_to_lower(i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %28 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %32 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %34 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %33, i32 0, i32 0
  %35 = call i32 @_db_locator_init(i32* %34)
  %36 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %37 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %40 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct._region*, %struct._region** %6, align 8
  %43 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %44 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %43, i32 0, i32 0
  %45 = call i32 @_db_lookup_by_s(i32 %38, i32 %41, %struct._region* %42, i32* %44)
  ret i32 %45
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @_bcs_convert_to_lower(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @_db_locator_init(i32*) #1

declare dso_local i32 @_db_lookup_by_s(i32, i32, %struct._region*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
