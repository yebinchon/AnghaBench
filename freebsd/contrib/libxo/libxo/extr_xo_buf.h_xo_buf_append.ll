; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_buf.h_xo_buf_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_buf.h_xo_buf_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i64)* @xo_buf_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_buf_append(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @xo_buf_has_room(%struct.TYPE_4__* %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %9, %3
  br label %32

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @memcpy(i32 %21, i8* %22, i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  br label %32

32:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @xo_buf_has_room(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
