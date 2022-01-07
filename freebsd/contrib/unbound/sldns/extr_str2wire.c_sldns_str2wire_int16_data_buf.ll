; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_int16_data_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_int16_data_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_LABEL_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_INT = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_B64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_int16_data_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strtol(i8* %10, i8** %8, i32 10)
  store i32 %11, i32* %9, align 4
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 2
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 65535
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, align 4
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @sldns_write_uint16(i32* %29, i32 0)
  %31 = load i64*, i64** %7, align 8
  store i64 2, i64* %31, align 8
  %32 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_INT, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @RET_ERR(i32 %39, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %79

47:                                               ; preds = %33
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %55, %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %50

58:                                               ; preds = %50
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, 2
  %65 = call i32 @sldns_b64_pton(i8* %59, i32* %61, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_B64, align 4
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %58
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @sldns_write_uint16(i32* %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 2
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %70, %68, %38, %28, %23, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @sldns_write_uint16(i32*, i32) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_b64_pton(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
