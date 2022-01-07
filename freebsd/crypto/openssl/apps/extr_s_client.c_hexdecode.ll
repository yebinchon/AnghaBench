; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_hexdecode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_hexdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"hexdecode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @hexdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexdecode(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i8**
  store i8** %14, i8*** %6, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sdiv i32 %18, 2
  %20 = call i8* @app_malloc(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %86

25:                                               ; preds = %2
  store i8 0, i8* %10, align 1
  br label %26

26:                                               ; preds = %67, %25
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @_UC(i8 signext %32)
  %34 = call i64 @isspace(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %67

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @OPENSSL_hexchar2int(i8 signext %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @OPENSSL_free(i8* %44)
  store i32 0, i32* %3, align 4
  br label %86

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  %48 = trunc i32 %47 to i8
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %10, align 1
  %54 = load i32, i32* %11, align 4
  %55 = xor i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i8, i8* %10, align 1
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  store i8 %58, i8* %59, align 1
  store i8 0, i8* %10, align 1
  br label %66

61:                                               ; preds = %46
  %62 = load i8, i8* %10, align 1
  %63 = sext i8 %62 to i32
  %64 = shl i32 %63, 4
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %10, align 1
  br label %66

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  br label %26

70:                                               ; preds = %26
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @OPENSSL_free(i8* %74)
  store i32 0, i32* %3, align 4
  br label %86

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = load i8**, i8*** %4, align 8
  store i8* %77, i8** %78, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8**, i8*** %6, align 8
  store i8* %80, i8** %81, align 8
  %82 = ptrtoint i8* %79 to i64
  %83 = ptrtoint i8* %80 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %76, %73, %43, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @_UC(i8 signext) #1

declare dso_local i32 @OPENSSL_hexchar2int(i8 signext) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
