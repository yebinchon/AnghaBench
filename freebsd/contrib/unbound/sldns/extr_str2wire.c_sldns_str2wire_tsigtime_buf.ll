; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_tsigtime_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_tsigtime_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_SYNTAX_TIME = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_tsigtime_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strtol(i8* %12, i8** %8, i32 10)
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @RET_ERR(i32 %19, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %3
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %29, 6
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 32
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %11, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @sldns_write_uint16(i32* %39, i64 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @sldns_write_uint32(i32* %43, i64 %44)
  %46 = load i64*, i64** %7, align 8
  store i64 6, i64* %46, align 8
  %47 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %33, %31, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_write_uint16(i32*, i64) #1

declare dso_local i32 @sldns_write_uint32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
