; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_bitfield.c_bitfield_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_bitfield.c_bitfield_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitfield = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bitfield* @bitfield_alloc(i64 %0) #0 {
  %2 = alloca %struct.bitfield*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bitfield*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = add i64 %5, 7
  %7 = udiv i64 %6, 8
  %8 = add i64 16, %7
  %9 = trunc i64 %8 to i32
  %10 = call %struct.bitfield* @os_zalloc(i32 %9)
  store %struct.bitfield* %10, %struct.bitfield** %4, align 8
  %11 = load %struct.bitfield*, %struct.bitfield** %4, align 8
  %12 = icmp eq %struct.bitfield* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.bitfield* null, %struct.bitfield** %2, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.bitfield*, %struct.bitfield** %4, align 8
  %16 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %15, i64 1
  %17 = bitcast %struct.bitfield* %16 to i32*
  %18 = load %struct.bitfield*, %struct.bitfield** %4, align 8
  %19 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.bitfield*, %struct.bitfield** %4, align 8
  %22 = getelementptr inbounds %struct.bitfield, %struct.bitfield* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.bitfield*, %struct.bitfield** %4, align 8
  store %struct.bitfield* %23, %struct.bitfield** %2, align 8
  br label %24

24:                                               ; preds = %14, %13
  %25 = load %struct.bitfield*, %struct.bitfield** %2, align 8
  ret %struct.bitfield* %25
}

declare dso_local %struct.bitfield* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
