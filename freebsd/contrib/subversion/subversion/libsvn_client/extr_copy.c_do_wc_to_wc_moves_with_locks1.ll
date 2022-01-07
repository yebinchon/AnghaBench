; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_do_wc_to_wc_moves_with_locks1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_do_wc_to_wc_moves_with_locks1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i64, i64, i64, %struct.TYPE_4__*, i32*)* @do_wc_to_wc_moves_with_locks1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_wc_to_wc_moves_with_locks1(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.TYPE_4__* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %8
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @do_wc_to_wc_moves_with_locks2(i32* %20, i8* %21, i64 %22, i64 %23, i64 %24, i64 %25, %struct.TYPE_4__* %26, i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32*, i32** %16, align 8
  %35 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %28, i32 %31, i8* %32, i32 %33, i32* %34)
  br label %47

36:                                               ; preds = %8
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = call i32 @do_wc_to_wc_moves_with_locks2(i32* %37, i8* %38, i64 %39, i64 %40, i64 %41, i64 %42, %struct.TYPE_4__* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %36, %19
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %48
}

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @do_wc_to_wc_moves_with_locks2(i32*, i8*, i64, i64, i64, i64, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
