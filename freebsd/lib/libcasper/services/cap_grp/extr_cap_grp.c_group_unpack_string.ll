; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_group_unpack_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_group_unpack_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**, i8**, i64*)* @group_unpack_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_unpack_string(i32* %0, i8* %1, i8** %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @nvlist_get_string(i32* %14, i8* %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @strlcpy(i8* %18, i8* %19, i64 %21)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @ERANGE, align 4
  store i32 %28, i32* %6, align 4
  br label %43

29:                                               ; preds = %5
  %30 = load i8**, i8*** %10, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %33, 1
  %35 = load i8**, i8*** %10, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %34
  store i8* %37, i8** %35, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %38, 1
  %40 = load i64*, i64** %11, align 8
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %39
  store i64 %42, i64* %40, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %29, %27
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
