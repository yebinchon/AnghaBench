; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_set_av.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_set_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32* }

@MAXAVPAIRS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tac_set_av(%struct.tac_handle* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tac_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @MAXAVPAIRS, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %29

12:                                               ; preds = %3
  %13 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %14 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %15 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  %28 = call i32 @save_str(%struct.tac_handle* %13, i32* %18, i8* %19, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @save_str(%struct.tac_handle*, i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
