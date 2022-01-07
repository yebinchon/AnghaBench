; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvlist_send(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @nvlist_error(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @nvlist_error(i32* %16)
  %18 = call i32 @ERRNO_SET(i64 %17)
  store i32 -1, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @nvlist_descriptors(i32* %20, i64* %7)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %59

25:                                               ; preds = %19
  store i32 -1, i32* %11, align 4
  store i64 0, i64* %10, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @nvlist_xpack(i32* %26, i64* %10, i64* %6)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %50

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @buf_send(i32 %32, i8* %33, i64 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %50

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @fd_send(i32 %42, i32* %43, i64 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %38
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %47, %37, %30
  %51 = call i32 (...) @ERRNO_SAVE()
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @nv_free(i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @nv_free(i8* %55)
  %57 = call i32 (...) @ERRNO_RESTORE()
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %50, %24, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32 @ERRNO_SET(i64) #1

declare dso_local i32* @nvlist_descriptors(i32*, i64*) #1

declare dso_local i8* @nvlist_xpack(i32*, i64*, i64*) #1

declare dso_local i32 @buf_send(i32, i8*, i64) #1

declare dso_local i32 @fd_send(i32, i32*, i64) #1

declare dso_local i32 @ERRNO_SAVE(...) #1

declare dso_local i32 @nv_free(i8*) #1

declare dso_local i32 @ERRNO_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
