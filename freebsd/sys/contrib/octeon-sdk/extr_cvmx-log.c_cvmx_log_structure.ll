; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-log.c_cvmx_log_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-log.c_cvmx_log_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_LOG_TYPE_STRUCTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_log_structure(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 7
  %11 = ashr i32 %10, 3
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 254
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 254, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32, i32* @CVMX_LOG_TYPE_STRUCTURE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @__cvmx_log_build_header(i32 %18, i32 %20)
  %22 = call i32 @__cvmx_log_write(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @CAST64(i8* %23)
  %25 = call i32 @__cvmx_log_write(i32 %24)
  br label %26

26:                                               ; preds = %30, %17
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i32 @__cvmx_log_write(i32 %33)
  br label %26

35:                                               ; preds = %26
  ret void
}

declare dso_local i32 @__cvmx_log_write(i32) #1

declare dso_local i32 @__cvmx_log_build_header(i32, i32) #1

declare dso_local i32 @CAST64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
