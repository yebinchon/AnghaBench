; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_str_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_str_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_INVALID_STR = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_str_buf(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %48, %17
  %19 = call i64 @sldns_parse_char(i64* %8, i8** %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = icmp uge i64 %22, 255
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @RET_ERR(i32 %25, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %21
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @RET_ERR(i32 %40, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %67

48:                                               ; preds = %33
  %49 = load i64, i64* %8, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %49, i64* %53, align 8
  br label %18

54:                                               ; preds = %18
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE, align 4
  store i32 %58, i32* %4, align 4
  br label %67

59:                                               ; preds = %54
  %60 = load i64, i64* %9, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %57, %39, %24, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @sldns_parse_char(i64*, i8**) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
