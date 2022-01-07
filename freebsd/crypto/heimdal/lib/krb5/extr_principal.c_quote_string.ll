; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_principal.c_quote_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_principal.c_quote_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quotable_chars = common dso_local global i8* null, align 8
@replace_chars = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i64, i32)* @quote_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quote_string(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  br label %14

14:                                               ; preds = %77, %5
  %15 = load i8*, i8** %11, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  br i1 %24, label %25, label %80

25:                                               ; preds = %23
  %26 = load i8*, i8** @quotable_chars, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i8* @strchr(i8* %26, i8 signext %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i8*, i8** @replace_chars, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** @quotable_chars, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @add_char(i8* %36, i64 %37, i64 %38, i8 signext %46)
  br label %76

48:                                               ; preds = %32, %25
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @add_char(i8* %52, i64 %53, i64 %54, i8 signext 92)
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i8*, i8** @replace_chars, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** @quotable_chars, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @add_char(i8* %56, i64 %57, i64 %58, i8 signext %66)
  br label %75

68:                                               ; preds = %48
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @add_char(i8* %69, i64 %70, i64 %71, i8 signext %73)
  br label %75

75:                                               ; preds = %68, %51
  br label %76

76:                                               ; preds = %75, %35
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 8
  br label %14

80:                                               ; preds = %23
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i64, i64* %8, align 8
  ret i64 %89
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @add_char(i8*, i64, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
