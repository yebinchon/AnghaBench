; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_eui48_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_eui48_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%2x-%2x-%2x-%2x-%2x-%2x%n\00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_EUI48 = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_eui48_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %16, 6
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %19, i32* %4, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %23 = icmp ne i32 %22, 6
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %14, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %20
  %31 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_EUI48, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 %48, i32* %50, align 4
  %51 = load i64*, i64** %7, align 8
  store i64 6, i64* %51, align 8
  %52 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %32, %30, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
