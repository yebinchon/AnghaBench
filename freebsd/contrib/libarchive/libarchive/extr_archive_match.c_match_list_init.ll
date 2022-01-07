; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_match_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_list = type { i64, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.match_list*)* @match_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_list_init(%struct.match_list* %0) #0 {
  %2 = alloca %struct.match_list*, align 8
  store %struct.match_list* %0, %struct.match_list** %2, align 8
  %3 = load %struct.match_list*, %struct.match_list** %2, align 8
  %4 = getelementptr inbounds %struct.match_list, %struct.match_list* %3, i32 0, i32 1
  store i32* null, i32** %4, align 8
  %5 = load %struct.match_list*, %struct.match_list** %2, align 8
  %6 = getelementptr inbounds %struct.match_list, %struct.match_list* %5, i32 0, i32 1
  %7 = load %struct.match_list*, %struct.match_list** %2, align 8
  %8 = getelementptr inbounds %struct.match_list, %struct.match_list* %7, i32 0, i32 2
  store i32** %6, i32*** %8, align 8
  %9 = load %struct.match_list*, %struct.match_list** %2, align 8
  %10 = getelementptr inbounds %struct.match_list, %struct.match_list* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
