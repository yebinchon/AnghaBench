; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_remove_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_remove_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*)* @remove_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @remove_suffix(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %30, %31
  %33 = call i8* @apr_pstrmemdup(i32* %28, i8* %29, i64 %32)
  store i8* %33, i8** %4, align 8
  br label %35

34:                                               ; preds = %17, %3
  store i8* null, i8** %4, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
