; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_nsap_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_nsap_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_INVALID_STR = common dso_local global i32 0, align 4
@LDNS_MAX_RDFLEN = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_LABEL_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_HEX = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_nsap_buf(i8* %0, i32* %1, i64* %2) #0 {
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
  store i64 0, i64* %10, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 48
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 120
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %24, i32* %4, align 4
  br label %136

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* @LDNS_MAX_RDFLEN, align 4
  %32 = mul nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, align 4
  store i32 %36, i32* %4, align 4
  br label %136

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %115, %52, %37
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %118

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %42
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %38

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @isxdigit(i8 zeroext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_HEX, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @RET_ERR(i32 %61, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %136

69:                                               ; preds = %55
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = udiv i64 %72, 2
  %74 = add i64 %73, 1
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @RET_ERR(i32 %77, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %136

85:                                               ; preds = %69
  %86 = load i64, i64* %10, align 8
  %87 = and i64 %86, 1
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  %94 = call i64 @sldns_hexdigit_to_int(i32 %93)
  %95 = trunc i64 %94 to i32
  %96 = mul nsw i32 %95, 16
  %97 = load i32*, i32** %6, align 8
  %98 = load i64, i64* %10, align 8
  %99 = udiv i64 %98, 2
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %115

101:                                              ; preds = %85
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  %104 = load i8, i8* %102, align 1
  %105 = sext i8 %104 to i32
  %106 = call i64 @sldns_hexdigit_to_int(i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = load i64, i64* %10, align 8
  %109 = udiv i64 %108, 2
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %106
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  br label %115

115:                                              ; preds = %101, %89
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %10, align 8
  br label %38

118:                                              ; preds = %38
  %119 = load i64, i64* %10, align 8
  %120 = and i64 %119, 1
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_HEX, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @RET_ERR(i32 %123, i32 %129)
  store i32 %130, i32* %4, align 4
  br label %136

131:                                              ; preds = %118
  %132 = load i64, i64* %10, align 8
  %133 = udiv i64 %132, 2
  %134 = load i64*, i64** %7, align 8
  store i64 %133, i64* %134, align 8
  %135 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %131, %122, %76, %60, %35, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
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
