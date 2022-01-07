; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_eat_alpha_numeric.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_eat_alpha_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @eat_alpha_numeric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eat_alpha_numeric(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %23, %11, %2
  %6 = load i32*, i32** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = call i64 @IS_ESC(i32* %6, i8 signext %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @scan_esc(i32* %12, i8* %13)
  store i8* %14, i8** %4, align 8
  br label %5

15:                                               ; preds = %5
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @IS_ALNUM_PUNCT(i32* %16, i8 signext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  ret i8* %22

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %5
}

declare dso_local i64 @IS_ESC(i32*, i8 signext) #1

declare dso_local i8* @scan_esc(i32*, i8*) #1

declare dso_local i32 @IS_ALNUM_PUNCT(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
