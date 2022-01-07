; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_write_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_write_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { %struct.regcache_descr* }
%struct.regcache_descr = type { i32 }

@regcache_raw_read = common dso_local global i32 0, align 4
@regcache_raw_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_raw_write_part(%struct.regcache* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.regcache_descr*, align 8
  store %struct.regcache* %0, %struct.regcache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.regcache*, %struct.regcache** %6, align 8
  %13 = getelementptr inbounds %struct.regcache, %struct.regcache* %12, i32 0, i32 0
  %14 = load %struct.regcache_descr*, %struct.regcache_descr** %13, align 8
  store %struct.regcache_descr* %14, %struct.regcache_descr** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.regcache_descr*, %struct.regcache_descr** %11, align 8
  %20 = getelementptr inbounds %struct.regcache_descr, %struct.regcache_descr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br label %23

23:                                               ; preds = %17, %5
  %24 = phi i1 [ false, %5 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load %struct.regcache*, %struct.regcache** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* @regcache_raw_read, align 4
  %33 = load i32, i32* @regcache_raw_write, align 4
  %34 = call i32 @regcache_xfer_part(%struct.regcache* %27, i32 %28, i32 %29, i32 %30, i32* null, i8* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_xfer_part(%struct.regcache*, i32, i32, i32, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
