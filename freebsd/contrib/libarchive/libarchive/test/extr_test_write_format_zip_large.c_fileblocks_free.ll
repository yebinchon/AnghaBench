; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_fileblocks_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_fileblocks_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileblocks = type { %struct.fileblocks*, %struct.fileblocks*, %struct.fileblocks* }
%struct.fileblock = type { %struct.fileblock*, %struct.fileblock*, %struct.fileblock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fileblocks*)* @fileblocks_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fileblocks_free(%struct.fileblocks* %0) #0 {
  %2 = alloca %struct.fileblocks*, align 8
  %3 = alloca %struct.fileblock*, align 8
  store %struct.fileblocks* %0, %struct.fileblocks** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.fileblocks*, %struct.fileblocks** %2, align 8
  %6 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %5, i32 0, i32 2
  %7 = load %struct.fileblocks*, %struct.fileblocks** %6, align 8
  %8 = icmp ne %struct.fileblocks* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = load %struct.fileblocks*, %struct.fileblocks** %2, align 8
  %11 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %10, i32 0, i32 2
  %12 = load %struct.fileblocks*, %struct.fileblocks** %11, align 8
  %13 = bitcast %struct.fileblocks* %12 to %struct.fileblock*
  store %struct.fileblock* %13, %struct.fileblock** %3, align 8
  %14 = load %struct.fileblocks*, %struct.fileblocks** %2, align 8
  %15 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %14, i32 0, i32 2
  %16 = load %struct.fileblocks*, %struct.fileblocks** %15, align 8
  %17 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %16, i32 0, i32 1
  %18 = load %struct.fileblocks*, %struct.fileblocks** %17, align 8
  %19 = load %struct.fileblocks*, %struct.fileblocks** %2, align 8
  %20 = getelementptr inbounds %struct.fileblocks, %struct.fileblocks* %19, i32 0, i32 2
  store %struct.fileblocks* %18, %struct.fileblocks** %20, align 8
  %21 = load %struct.fileblock*, %struct.fileblock** %3, align 8
  %22 = getelementptr inbounds %struct.fileblock, %struct.fileblock* %21, i32 0, i32 0
  %23 = load %struct.fileblock*, %struct.fileblock** %22, align 8
  %24 = bitcast %struct.fileblock* %23 to %struct.fileblocks*
  %25 = call i32 @free(%struct.fileblocks* %24)
  %26 = load %struct.fileblock*, %struct.fileblock** %3, align 8
  %27 = bitcast %struct.fileblock* %26 to %struct.fileblocks*
  %28 = call i32 @free(%struct.fileblocks* %27)
  br label %4

29:                                               ; preds = %4
  %30 = load %struct.fileblocks*, %struct.fileblocks** %2, align 8
  %31 = call i32 @free(%struct.fileblocks* %30)
  ret void
}

declare dso_local i32 @free(%struct.fileblocks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
