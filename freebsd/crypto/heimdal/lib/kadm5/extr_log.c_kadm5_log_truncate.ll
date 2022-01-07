; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_log_truncate(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @kadm5_log_init(i32* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %2, align 8
  br label %49

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @kadm5_log_get_version(i32* %13, i32* %5)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %49

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @kadm5_log_reinit(i32* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %49

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @kadm5_log_set_version(i32* %27, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %49

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @kadm5_log_nop(i32* %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %49

41:                                               ; preds = %34
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @kadm5_log_end(i32* %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %49

48:                                               ; preds = %41
  store i64 0, i64* %2, align 8
  br label %49

49:                                               ; preds = %48, %46, %39, %32, %24, %17, %10
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local i64 @kadm5_log_init(i32*) #1

declare dso_local i64 @kadm5_log_get_version(i32*, i32*) #1

declare dso_local i64 @kadm5_log_reinit(i32*) #1

declare dso_local i64 @kadm5_log_set_version(i32*, i32) #1

declare dso_local i64 @kadm5_log_nop(i32*) #1

declare dso_local i64 @kadm5_log_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
