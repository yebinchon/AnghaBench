; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_cdeque_pop_front_fast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_cdeque_pop_front_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdeque = type { i64, i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdeque*, i8**)* @cdeque_pop_front_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdeque_pop_front_fast(%struct.cdeque* %0, i8** %1) #0 {
  %3 = alloca %struct.cdeque*, align 8
  %4 = alloca i8**, align 8
  store %struct.cdeque* %0, %struct.cdeque** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %6 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %5, i32 0, i32 3
  %7 = load i64*, i64** %6, align 8
  %8 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %9 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i64, i64* %7, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i8**, i8*** %4, align 8
  store i8* %13, i8** %14, align 8
  %15 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %16 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  %19 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %20 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = and i64 %18, %22
  %24 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %25 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %27 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
