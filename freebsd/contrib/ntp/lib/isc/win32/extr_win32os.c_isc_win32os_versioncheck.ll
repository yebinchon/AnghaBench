; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_win32os.c_isc_win32os_versioncheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_win32os.c_isc_win32os_versioncheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_win32os_versioncheck(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = call i32 (...) @initialize_action()
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (...) @isc_win32os_majorversion()
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %51

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (...) @isc_win32os_majorversion()
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %51

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (...) @isc_win32os_minorversion()
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %51

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (...) @isc_win32os_minorversion()
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %51

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (...) @isc_win32os_servicepackmajor()
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %51

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (...) @isc_win32os_servicepackmajor()
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %51

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (...) @isc_win32os_servicepackminor()
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (...) @isc_win32os_servicepackminor()
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %51

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %49, %44, %39, %34, %29, %24, %19, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @initialize_action(...) #1

declare dso_local i32 @isc_win32os_majorversion(...) #1

declare dso_local i32 @isc_win32os_minorversion(...) #1

declare dso_local i32 @isc_win32os_servicepackmajor(...) #1

declare dso_local i32 @isc_win32os_servicepackminor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
