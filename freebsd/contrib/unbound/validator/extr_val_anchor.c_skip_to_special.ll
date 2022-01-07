; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_skip_to_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_skip_to_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"trusted-keys, line %d, expected %c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"trusted-keys, line %d, expected %c got EOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @skip_to_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_to_special(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @sldns_buffer_clear(i32* %11)
  br label %13

13:                                               ; preds = %29, %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @readkeyword_bindfile(i32* %14, i32* %15, i32* %16, i32 1)
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = call i64* @sldns_buffer_begin(i32* %23)
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i8
  %27 = call i64 @isspace(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @sldns_buffer_clear(i32* %30)
  br label %13

32:                                               ; preds = %22, %19
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = call i64* @sldns_buffer_begin(i32* %36)
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35, %32
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @sldns_buffer_write_u8(i32* %43, i32 0)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store i32 0, i32* %5, align 4
  br label %55

49:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %55

50:                                               ; preds = %13
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %49, %42
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @readkeyword_bindfile(i32*, i32*, i32*, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64* @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i32) #1

declare dso_local i32 @log_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
