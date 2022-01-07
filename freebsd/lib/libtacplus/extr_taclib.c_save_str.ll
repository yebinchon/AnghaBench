; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_save_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_save_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32 }
%struct.clnt_str = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*, %struct.clnt_str*, i8*, i64)* @save_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_str(%struct.tac_handle* %0, %struct.clnt_str* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tac_handle*, align 8
  %7 = alloca %struct.clnt_str*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %6, align 8
  store %struct.clnt_str* %1, %struct.clnt_str** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %11 = call i32 @free_str(%struct.clnt_str* %10)
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.tac_handle*, %struct.tac_handle** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32* @xmalloc(%struct.tac_handle* %18, i64 %19)
  %21 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %22 = getelementptr inbounds %struct.clnt_str, %struct.clnt_str* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %36

25:                                               ; preds = %17
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %28 = getelementptr inbounds %struct.clnt_str, %struct.clnt_str* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %30 = getelementptr inbounds %struct.clnt_str, %struct.clnt_str* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @memcpy(i32* %31, i8* %32, i64 %33)
  br label %35

35:                                               ; preds = %25, %14, %4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @free_str(%struct.clnt_str*) #1

declare dso_local i32* @xmalloc(%struct.tac_handle*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
