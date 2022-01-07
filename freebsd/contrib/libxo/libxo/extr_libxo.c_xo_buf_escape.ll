; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_buf_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_buf_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*, i64, i32)* @xo_buf_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_buf_escape(i32* %0, %struct.TYPE_7__* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @xo_buf_has_room(%struct.TYPE_7__* %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %48

16:                                               ; preds = %5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @memcpy(i32 %19, i8* %20, i64 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @xo_style(i32* %23)
  switch i32 %24, label %40 [
    i32 128, label %25
    i32 131, label %25
    i32 130, label %30
    i32 129, label %35
  ]

25:                                               ; preds = %16, %16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @xo_escape_xml(%struct.TYPE_7__* %26, i64 %27, i32 %28)
  store i64 %29, i64* %9, align 8
  br label %40

30:                                               ; preds = %16
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @xo_escape_json(%struct.TYPE_7__* %31, i64 %32, i32 %33)
  store i64 %34, i64* %9, align 8
  br label %40

35:                                               ; preds = %16
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @xo_escape_sdparams(%struct.TYPE_7__* %36, i64 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %16, %35, %30, %25
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  br label %48

48:                                               ; preds = %40, %15
  ret void
}

declare dso_local i32 @xo_buf_has_room(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @xo_style(i32*) #1

declare dso_local i64 @xo_escape_xml(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @xo_escape_json(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @xo_escape_sdparams(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
