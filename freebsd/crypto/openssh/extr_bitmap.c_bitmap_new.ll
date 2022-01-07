; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_bitmap.c_bitmap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32, i64, i32* }

@BITMAP_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bitmap* @bitmap_new() #0 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = call i8* @calloc(i32 1, i32 24)
  %4 = bitcast i8* %3 to %struct.bitmap*
  store %struct.bitmap* %4, %struct.bitmap** %2, align 8
  %5 = icmp eq %struct.bitmap* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %23

7:                                                ; preds = %0
  %8 = load i32, i32* @BITMAP_BYTES, align 4
  %9 = call i8* @calloc(i32 1, i32 %8)
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  %13 = icmp eq i32* %10, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %16 = call i32 @free(%struct.bitmap* %15)
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %23

17:                                               ; preds = %7
  %18 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %19 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %21 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  store %struct.bitmap* %22, %struct.bitmap** %1, align 8
  br label %23

23:                                               ; preds = %17, %14, %6
  %24 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  ret %struct.bitmap* %24
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
