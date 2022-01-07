; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_strptime.c_strptime_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_strptime.c_strptime_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strptime_l(i8* noalias %0, i8* noalias %1, %struct.tm* noalias %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @FIX_LOCALE(i32 %12)
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.tm*, %struct.tm** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @_strptime(i8* %14, i8* %15, %struct.tm* %16, i32* %10, i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.tm*, %struct.tm** %7, align 8
  %26 = call i32 @timegm(%struct.tm* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.tm*, %struct.tm** %7, align 8
  %28 = call i32 @localtime_r(i32* %11, %struct.tm* %27)
  br label %29

29:                                               ; preds = %24, %21, %4
  %30 = load i8*, i8** %9, align 8
  ret i8* %30
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i8* @_strptime(i8*, i8*, %struct.tm*, i32*, i32) #1

declare dso_local i32 @timegm(%struct.tm*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
