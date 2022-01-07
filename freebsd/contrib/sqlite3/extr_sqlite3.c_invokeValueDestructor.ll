; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_invokeValueDestructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_invokeValueDestructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_TOOBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, void (i8*)*, i32*)* @invokeValueDestructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invokeValueDestructor(i8* %0, void (i8*)* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load void (i8*)*, void (i8*)** %5, align 8
  %8 = icmp ne void (i8*)* %7, @SQLITE_DYNAMIC
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load void (i8*)*, void (i8*)** %5, align 8
  %12 = icmp eq void (i8*)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %22

14:                                               ; preds = %3
  %15 = load void (i8*)*, void (i8*)** %5, align 8
  %16 = icmp eq void (i8*)* %15, @SQLITE_TRANSIENT
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %21

18:                                               ; preds = %14
  %19 = load void (i8*)*, void (i8*)** %5, align 8
  %20 = load i8*, i8** %4, align 8
  call void %19(i8* %20)
  br label %21

21:                                               ; preds = %18, %17
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @sqlite3_result_error_toobig(i32* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @SQLITE_TOOBIG, align 4
  ret i32 %29
}

declare dso_local i32 @assert(i32) #1

declare dso_local void @SQLITE_DYNAMIC(i8*) #1

declare dso_local void @SQLITE_TRANSIENT(i8*) #1

declare dso_local i32 @sqlite3_result_error_toobig(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
