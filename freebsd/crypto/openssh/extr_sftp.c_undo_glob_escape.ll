; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_undo_glob_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_undo_glob_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @undo_glob_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @undo_glob_escape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %73, %23, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = load i8*, i8** %2, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 0, i8* %15, align 1
  br label %74

16:                                               ; preds = %5
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 92
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i8*, i8** %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  %27 = getelementptr inbounds i8, i8* %24, i64 %25
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 %28, i8* %32, align 1
  br label %5

33:                                               ; preds = %16
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %59 [
    i32 63, label %41
    i32 91, label %41
    i32 42, label %41
    i32 92, label %41
    i32 0, label %51
  ]

41:                                               ; preds = %33, %33, %33, %33
  %42 = load i8*, i8** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %43
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %2, align 8
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %50, align 1
  br label %73

51:                                               ; preds = %33
  %52 = load i8*, i8** %2, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 92, i8* %55, align 1
  %56 = load i8*, i8** %2, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  br label %74

59:                                               ; preds = %33
  %60 = load i8*, i8** %2, align 8
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 92, i8* %63, align 1
  %64 = load i8*, i8** %2, align 8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %3, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %2, align 8
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %4, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 %68, i8* %72, align 1
  br label %73

73:                                               ; preds = %59, %41
  br label %5

74:                                               ; preds = %51, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
