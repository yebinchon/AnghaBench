; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_hip_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_hip_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_INT = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_LABEL_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_hip_buf(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %17, i32* %4, align 4
  br label %148

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strtol(i8* %19, i8** %8, i32 10)
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 32
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_INT, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @RET_ERR(i32 %28, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %148

36:                                               ; preds = %18
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %44, %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %39

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 32)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @RET_ERR(i32 %53, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %148

61:                                               ; preds = %47
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, 4
  store i64 %65, i64* %11, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 4
  %69 = call i32 @sldns_str2wire_hex_buf(i8* %66, i64* %68, i64* %11)
  store i32 %69, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load i8*, i8** %9, align 8
  store i8 32, i8* %72, align 1
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @RET_ERR_SHIFT(i32 %73, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %148

81:                                               ; preds = %61
  %82 = load i64, i64* %11, align 8
  %83 = icmp ugt i64 %82, 255
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i8*, i8** %9, align 8
  store i8 32, i8* %85, align 1
  %86 = load i32, i32* @LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = add nsw i64 %91, 510
  %93 = trunc i64 %92 to i32
  %94 = call i32 @RET_ERR(i32 %86, i32 %93)
  store i32 %94, i32* %4, align 4
  br label %148

95:                                               ; preds = %81
  %96 = load i64, i64* %11, align 8
  %97 = load i64*, i64** %6, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 %96, i64* %98, align 8
  %99 = load i8*, i8** %9, align 8
  store i8 32, i8* %99, align 1
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %8, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, 4
  %105 = load i64, i64* %11, align 8
  %106 = sub i64 %104, %105
  store i64 %106, i64* %12, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i64*, i64** %6, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 4
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = call i32 @sldns_str2wire_b64_buf(i8* %107, i64* %111, i64* %12)
  store i32 %112, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %95
  %115 = load i32, i32* %10, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @RET_ERR_SHIFT(i32 %115, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %148

123:                                              ; preds = %95
  %124 = load i64, i64* %12, align 8
  %125 = icmp ugt i64 %124, 65535
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load i32, i32* @LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = add nsw i64 %132, 65535
  %134 = trunc i64 %133 to i32
  %135 = call i32 @RET_ERR(i32 %127, i32 %134)
  store i32 %135, i32* %4, align 4
  br label %148

136:                                              ; preds = %123
  %137 = load i64*, i64** %6, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  %139 = load i64, i64* %12, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @sldns_write_uint16(i64* %138, i32 %140)
  %142 = load i64, i64* %11, align 8
  %143 = add i64 4, %142
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %143, %144
  %146 = load i64*, i64** %7, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %136, %126, %114, %84, %71, %52, %27, %16
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sldns_str2wire_hex_buf(i8*, i64*, i64*) #1

declare dso_local i32 @RET_ERR_SHIFT(i32, i32) #1

declare dso_local i32 @sldns_str2wire_b64_buf(i8*, i64*, i64*) #1

declare dso_local i32 @sldns_write_uint16(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
