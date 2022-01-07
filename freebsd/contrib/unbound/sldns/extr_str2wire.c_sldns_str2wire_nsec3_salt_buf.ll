; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_nsec3_salt_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_nsec3_salt_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_SYNTAX_HEX = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_nsec3_salt_buf(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %29

22:                                               ; preds = %15, %3
  %23 = load i32, i32* %9, align 4
  %24 = srem i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_HEX, align 4
  store i32 %27, i32* %4, align 4
  br label %109

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 512
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_HEX, align 4
  store i32 %33, i32* %4, align 4
  br label %109

34:                                               ; preds = %29
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 2
  %40 = add i64 1, %39
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %43, i32* %4, align 4
  br label %109

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %99, %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isxdigit(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %54
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @isxdigit(i8 zeroext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %62
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @sldns_hexdigit_to_int(i8 signext %76)
  %78 = mul nsw i32 %77, 16
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @sldns_hexdigit_to_int(i8 signext %84)
  %86 = add nsw i32 %78, %85
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sdiv i32 %89, 2
  %91 = add nsw i32 1, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  store i64 %87, i64* %93, align 8
  br label %98

94:                                               ; preds = %62, %54
  %95 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_HEX, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @RET_ERR(i32 %95, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %109

98:                                               ; preds = %71
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %8, align 4
  br label %50

102:                                              ; preds = %50
  %103 = load i64*, i64** %6, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 1, %105
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %102, %94, %42, %32, %26
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i32 @sldns_hexdigit_to_int(i8 signext) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
