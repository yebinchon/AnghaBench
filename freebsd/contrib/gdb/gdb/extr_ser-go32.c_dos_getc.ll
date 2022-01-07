; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i64, i32*, i64 }

@CBSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dos_ttystate*)* @dos_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_getc(%struct.dos_ttystate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dos_ttystate*, align 8
  %4 = alloca i32, align 4
  store %struct.dos_ttystate* %0, %struct.dos_ttystate** %3, align 8
  %5 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %6 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %5, i32 0, i32 0
  %7 = load volatile i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %12 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %11, i32 0, i32 1
  %13 = load volatile i32*, i32** %12, align 8
  %14 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %15 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %14, i32 0, i32 2
  %16 = load volatile i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = call i32 (...) @disable()
  %20 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %21 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %20, i32 0, i32 2
  %22 = load volatile i64, i64* %21, align 8
  %23 = add i64 %22, 1
  %24 = load i32, i32* @CBSIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = and i64 %23, %26
  %28 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %29 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %28, i32 0, i32 2
  store volatile i64 %27, i64* %29, align 8
  %30 = load %struct.dos_ttystate*, %struct.dos_ttystate** %3, align 8
  %31 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %30, i32 0, i32 0
  %32 = load volatile i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store volatile i64 %33, i64* %31, align 8
  %34 = call i32 (...) @enable()
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %10, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @disable(...) #1

declare dso_local i32 @enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
