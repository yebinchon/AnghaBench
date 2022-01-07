; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_tag_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_tag_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_SYNTAX_TAG = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_tag_buf(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ugt i64 %12, 255
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TAG, align 4
  store i32 %15, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, 1
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %45, %24
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isalnum(i8 zeroext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TAG, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @RET_ERR(i32 %36, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %61

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  br label %26

48:                                               ; preds = %26
  %49 = load i64, i64* %8, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %49, i64* %51, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @memmove(i64* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %48, %35, %22, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @memmove(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
