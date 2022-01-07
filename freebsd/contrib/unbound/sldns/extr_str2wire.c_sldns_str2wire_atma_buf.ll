; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_atma_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_atma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_RDFLEN = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_LABEL_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_HEX = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_atma_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32, i32* @LDNS_MAX_RDFLEN, align 4
  %16 = mul nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, align 4
  store i32 %20, i32* %4, align 4
  br label %120

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %99, %36, %21
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isspace(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  br label %22

39:                                               ; preds = %31
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @isxdigit(i8 zeroext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_HEX, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @RET_ERR(i32 %45, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %120

53:                                               ; preds = %39
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = udiv i64 %56, 2
  %58 = add i64 %57, 1
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @RET_ERR(i32 %61, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %120

69:                                               ; preds = %53
  %70 = load i64, i64* %10, align 8
  %71 = and i64 %70, 1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  %76 = load i8, i8* %74, align 1
  %77 = sext i8 %76 to i32
  %78 = call i64 @sldns_hexdigit_to_int(i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = mul nsw i32 %79, 16
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = udiv i64 %82, 2
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %99

85:                                               ; preds = %69
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  %90 = call i64 @sldns_hexdigit_to_int(i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %10, align 8
  %93 = udiv i64 %92, 2
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %90
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  br label %99

99:                                               ; preds = %85, %73
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %10, align 8
  br label %22

102:                                              ; preds = %22
  %103 = load i64, i64* %10, align 8
  %104 = and i64 %103, 1
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_HEX, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @RET_ERR(i32 %107, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %120

115:                                              ; preds = %102
  %116 = load i64, i64* %10, align 8
  %117 = udiv i64 %116, 2
  %118 = load i64*, i64** %7, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %106, %60, %44, %19
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i64 @sldns_hexdigit_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
