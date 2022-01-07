; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_conflex.c_get_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_conflex.c_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_token.tb = internal global [2 x i8] zeroinitializer, align 1
@line = common dso_local global i32 0, align 4
@lpos = common dso_local global i32 0, align 4
@eol_token = common dso_local global i64 0, align 8
@lexline = common dso_local global i32 0, align 4
@lexchar = common dso_local global i32 0, align 4
@tval = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_token(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %7

7:                                                ; preds = %77, %1
  %8 = load i32, i32* @line, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @lpos, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @get_char(i32* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i64, i64* @eol_token, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14, %7
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @isascii(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @isspace(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %77

26:                                               ; preds = %21, %17, %14
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 35
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @skip_to_eol(i32* %30)
  br label %77

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* @lexline, align 4
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* @lexchar, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @read_string(i32* %38)
  store i32 %39, i32* %4, align 4
  br label %78

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @isascii(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @isdigit(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %57

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* @lexline, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @lexchar, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @read_number(i32 %54, i32* %55)
  store i32 %56, i32* %4, align 4
  br label %78

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @isascii(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @isalpha(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* @lexline, align 4
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* @lexchar, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @read_num_or_name(i32 %68, i32* %69)
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %61, %57
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* @lexline, align 4
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* @lexchar, align 4
  %74 = load i32, i32* %3, align 4
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_token.tb, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_token.tb, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_token.tb, i64 0, i64 0), i8** @tval, align 8
  %76 = load i32, i32* %3, align 4
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %29, %25
  br i1 true, label %7, label %78

78:                                               ; preds = %77, %71, %65, %51, %35
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @get_char(i32*) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @skip_to_eol(i32*) #1

declare dso_local i32 @read_string(i32*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @read_number(i32, i32*) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @read_num_or_name(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
