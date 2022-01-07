; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_program_bidder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_program_bidder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.program_bidder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*)* @program_bidder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @program_bidder_init(%struct.archive_read_filter* %0) #0 {
  %2 = alloca %struct.archive_read_filter*, align 8
  %3 = alloca %struct.program_bidder*, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %2, align 8
  %4 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %5 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.program_bidder*
  store %struct.program_bidder* %9, %struct.program_bidder** %3, align 8
  %10 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %11 = load %struct.program_bidder*, %struct.program_bidder** %3, align 8
  %12 = getelementptr inbounds %struct.program_bidder, %struct.program_bidder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__archive_read_program(%struct.archive_read_filter* %10, i32 %13)
  ret i32 %14
}

declare dso_local i32 @__archive_read_program(%struct.archive_read_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
