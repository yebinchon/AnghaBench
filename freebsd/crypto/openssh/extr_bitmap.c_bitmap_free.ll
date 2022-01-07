; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.bitmap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_free(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  %3 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %4 = icmp ne %struct.bitmap* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 0
  %8 = load %struct.bitmap*, %struct.bitmap** %7, align 8
  %9 = icmp ne %struct.bitmap* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %12 = call i32 @bitmap_zero(%struct.bitmap* %11)
  %13 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 0
  %15 = load %struct.bitmap*, %struct.bitmap** %14, align 8
  %16 = call i32 @free(%struct.bitmap* %15)
  %17 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %18 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %17, i32 0, i32 0
  store %struct.bitmap* null, %struct.bitmap** %18, align 8
  br label %19

19:                                               ; preds = %10, %5, %1
  %20 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %21 = call i32 @free(%struct.bitmap* %20)
  ret void
}

declare dso_local i32 @bitmap_zero(%struct.bitmap*) #1

declare dso_local i32 @free(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
