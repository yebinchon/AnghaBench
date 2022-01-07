; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_addr.c_truncated_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_addr.c_truncated_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"krb5_parse_address\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"addresses should be one\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s truncate_len %d larger then strlen %d source %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: outlen %d != len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i64)* @truncated_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncated_addr(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 1
  %15 = call i8* @ecalloc(i32 1, i64 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @krb5_parse_address(i32 %16, i8* %17, %struct.TYPE_4__* %9)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %10, align 8
  %24 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %22, i32 1, i64 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %30, i32 1, i64 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @krb5_print_address(i32* %36, i8* %37, i64 %38, i64* %12)
  %40 = load i64, i64* %7, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add i64 %42, 1
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = trunc i64 %52 to i32
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %46, i32 1, i64 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %50, i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %45, %33
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %8, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %61, i32 1, i64 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %63, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %60, %56
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  %77 = call i32 @krb5_print_address(i32* %73, i8* %74, i64 %76, i64* %12)
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = call i32 (...) @abort() #3
  unreachable

83:                                               ; preds = %70
  %84 = load i8*, i8** %11, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (...) @abort() #3
  unreachable

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @krb5_free_addresses(i32 %91, %struct.TYPE_4__* %9)
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @free(i8* %93)
  ret void
}

declare dso_local i8* @ecalloc(i32, i64) #1

declare dso_local i64 @krb5_parse_address(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i64, i64*) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @krb5_free_addresses(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
