; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_int32_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_int32_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@LDNS_WIREPARSE_ERR_SYNTAX_INT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@LDNS_WIREPARSE_ERR_SYNTAX_INTEGER_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_int32_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strtol(i8* %15, i8** %8, i32 10)
  store i64 %16, i64* %9, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strtoul(i8* %18, i8** %8, i32 10)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_INT, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @RET_ERR(i32 %26, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %20
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ERANGE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_INTEGER_OVERFLOW, align 4
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %34
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @sldns_write_uint32(i32* %47, i64 %48)
  %50 = load i64*, i64** %7, align 8
  store i64 4, i64* %50, align 8
  %51 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %44, %38, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_write_uint32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
