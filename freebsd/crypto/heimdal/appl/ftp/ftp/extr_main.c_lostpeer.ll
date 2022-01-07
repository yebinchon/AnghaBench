; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_lostpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_lostpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connected = common dso_local global i64 0, align 8
@cout = common dso_local global i32* null, align 8
@SHUT_RDWR = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@proxflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lostpeer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @connected, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load i32*, i32** @cout, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32*, i32** @cout, align 8
  %11 = call i32 @fileno(i32* %10)
  %12 = load i32, i32* @SHUT_RDWR, align 4
  %13 = call i32 @shutdown(i32 %11, i32 %12)
  %14 = load i32*, i32** @cout, align 8
  %15 = call i32 @fclose(i32* %14)
  store i32* null, i32** @cout, align 8
  br label %16

16:                                               ; preds = %9, %6
  %17 = load i32, i32* @data, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @data, align 4
  %21 = load i32, i32* @SHUT_RDWR, align 4
  %22 = call i32 @shutdown(i32 %20, i32 %21)
  %23 = load i32, i32* @data, align 4
  %24 = call i32 @close(i32 %23)
  store i32 -1, i32* @data, align 4
  br label %25

25:                                               ; preds = %19, %16
  store i64 0, i64* @connected, align 8
  br label %26

26:                                               ; preds = %25, %1
  %27 = call i32 @pswitch(i32 1)
  %28 = load i64, i64* @connected, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32*, i32** @cout, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32*, i32** @cout, align 8
  %35 = call i32 @fileno(i32* %34)
  %36 = load i32, i32* @SHUT_RDWR, align 4
  %37 = call i32 @shutdown(i32 %35, i32 %36)
  %38 = load i32*, i32** @cout, align 8
  %39 = call i32 @fclose(i32* %38)
  store i32* null, i32** @cout, align 8
  br label %40

40:                                               ; preds = %33, %30
  store i64 0, i64* @connected, align 8
  br label %41

41:                                               ; preds = %40, %26
  store i64 0, i64* @proxflag, align 8
  %42 = call i32 @pswitch(i32 0)
  %43 = call i32 (...) @sec_end()
  %44 = call i32 @SIGRETURN(i32 0)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pswitch(i32) #1

declare dso_local i32 @sec_end(...) #1

declare dso_local i32 @SIGRETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
