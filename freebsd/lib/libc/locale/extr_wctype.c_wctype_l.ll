; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wctype.c_wctype_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wctype.c_wctype_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [113 x i8] c"alnum\00alpha\00blank\00cntrl\00digit\00graph\00lower\00print\00punct\00space\00upper\00xdigit\00ideogram\00special\00phonogram\00number\00rune\00\00", align 1
@wctype_l.propmasks = internal constant [17 x i32] [i32 143, i32 142, i32 141, i32 140, i32 139, i32 138, i32 136, i32 132, i32 134, i32 131, i32 129, i32 128, i32 137, i32 130, i32 133, i32 135, i32 -256], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wctype_l(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %7, align 8
  store i32* getelementptr inbounds ([17 x i32], [17 x i32]* @wctype_l.propmasks, i64 0, i64 0), i32** %10, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %34, %2
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @memcmp(i8* %23, i8* %24, i64 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %22, %18
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %10, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %9, align 8
  br label %14

39:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
