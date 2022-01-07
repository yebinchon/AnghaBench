; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_x86_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_x86_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._7zip = type { i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._7zip*)* @x86_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_Init(%struct._7zip* %0) #0 {
  %2 = alloca %struct._7zip*, align 8
  store %struct._7zip* %0, %struct._7zip** %2, align 8
  %3 = load %struct._7zip*, %struct._7zip** %2, align 8
  %4 = getelementptr inbounds %struct._7zip, %struct._7zip* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct._7zip*, %struct._7zip** %2, align 8
  %6 = getelementptr inbounds %struct._7zip, %struct._7zip* %5, i32 0, i32 0
  store i64 -1, i64* %6, align 8
  %7 = load %struct._7zip*, %struct._7zip** %2, align 8
  %8 = getelementptr inbounds %struct._7zip, %struct._7zip* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct._7zip*, %struct._7zip** %2, align 8
  %10 = getelementptr inbounds %struct._7zip, %struct._7zip* %9, i32 0, i32 1
  store i32 5, i32* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
