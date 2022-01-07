; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/compat-43/extr_getwd.c_getwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/compat-43/extr_getwd.c_getwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getwd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @MAXPATHLEN, align 4
  %7 = call i8* @getcwd(i8* %5, i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = call i32 @strerror_r(i32 %12, i8* %13, i32 %14)
  store i8* null, i8** %2, align 8
  br label %16

16:                                               ; preds = %11, %9
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

declare dso_local i8* @getcwd(i8*, i32) #1

declare dso_local i32 @strerror_r(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
