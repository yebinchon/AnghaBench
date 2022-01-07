; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32* }
%struct.pax = type { i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_pax_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_pax_free(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.pax*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.pax*
  store %struct.pax* %8, %struct.pax** %4, align 8
  %9 = load %struct.pax*, %struct.pax** %4, align 8
  %10 = icmp eq %struct.pax* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.pax*, %struct.pax** %4, align 8
  %15 = getelementptr inbounds %struct.pax, %struct.pax* %14, i32 0, i32 2
  %16 = call i32 @archive_string_free(i32* %15)
  %17 = load %struct.pax*, %struct.pax** %4, align 8
  %18 = getelementptr inbounds %struct.pax, %struct.pax* %17, i32 0, i32 1
  %19 = call i32 @archive_string_free(i32* %18)
  %20 = load %struct.pax*, %struct.pax** %4, align 8
  %21 = getelementptr inbounds %struct.pax, %struct.pax* %20, i32 0, i32 0
  %22 = call i32 @archive_string_free(i32* %21)
  %23 = load %struct.pax*, %struct.pax** %4, align 8
  %24 = call i32 @sparse_list_clear(%struct.pax* %23)
  %25 = load %struct.pax*, %struct.pax** %4, align 8
  %26 = call i32 @free(%struct.pax* %25)
  %27 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %28 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %13, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @sparse_list_clear(%struct.pax*) #1

declare dso_local i32 @free(%struct.pax*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
