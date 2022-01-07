; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_args.c_parse_memlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_args.c_parse_memlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, i32)* @parse_memlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_memlimit(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %13, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %13, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  store i32 1, i32* %11, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @str_to_uint64(i8* %31, i8* %32, i32 1, i32 100)
  store i32 %33, i32* %12, align 4
  br label %39

34:                                               ; preds = %18, %5
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @UINT64_MAX, align 4
  %38 = call i32 @str_to_uint64(i8* %35, i8* %36, i32 0, i32 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @hardware_memlimit_set(i32 %40, i32 %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @str_to_uint64(i8*, i8*, i32, i32) #1

declare dso_local i32 @hardware_memlimit_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
