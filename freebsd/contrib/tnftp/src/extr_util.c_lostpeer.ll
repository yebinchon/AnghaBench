; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_lostpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_lostpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@connected = common dso_local global i64 0, align 8
@cout = common dso_local global i32* null, align 8
@data = common dso_local global i32 0, align 4
@proxflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lostpeer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @errno, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @alarmtimer(i32 0)
  %6 = load i64, i64* @connected, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i32*, i32** @cout, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32*, i32** @cout, align 8
  %13 = call i32 @fileno(i32* %12)
  %14 = call i32 @shutdown(i32 %13, i32 2)
  %15 = load i32*, i32** @cout, align 8
  %16 = call i32 @fclose(i32* %15)
  store i32* null, i32** @cout, align 8
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32, i32* @data, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @data, align 4
  %22 = call i32 @shutdown(i32 %21, i32 2)
  %23 = load i32, i32* @data, align 4
  %24 = call i32 @close(i32 %23)
  store i32 -1, i32* @data, align 4
  br label %25

25:                                               ; preds = %20, %17
  store i64 0, i64* @connected, align 8
  br label %26

26:                                               ; preds = %25, %1
  %27 = call i32 @pswitch(i32 1)
  %28 = load i64, i64* @connected, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32*, i32** @cout, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32*, i32** @cout, align 8
  %35 = call i32 @fileno(i32* %34)
  %36 = call i32 @shutdown(i32 %35, i32 2)
  %37 = load i32*, i32** @cout, align 8
  %38 = call i32 @fclose(i32* %37)
  store i32* null, i32** @cout, align 8
  br label %39

39:                                               ; preds = %33, %30
  store i64 0, i64* @connected, align 8
  br label %40

40:                                               ; preds = %39, %26
  store i64 0, i64* @proxflag, align 8
  %41 = call i32 @pswitch(i32 0)
  %42 = call i32 (...) @cleanuppeer()
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* @errno, align 4
  ret void
}

declare dso_local i32 @alarmtimer(i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pswitch(i32) #1

declare dso_local i32 @cleanuppeer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
