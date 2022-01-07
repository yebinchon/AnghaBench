; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_getoctaltoken.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_getoctaltoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@ISC_LEXOPT_EOL = common dso_local global i32 0, align 4
@ISC_LEXOPT_EOF = common dso_local global i32 0, align 4
@ISC_LEXOPT_DNSMULTILINE = common dso_local global i32 0, align 4
@ISC_LEXOPT_ESCAPE = common dso_local global i32 0, align 4
@ISC_LEXOPT_NUMBER = common dso_local global i32 0, align 4
@ISC_LEXOPT_OCTAL = common dso_local global i32 0, align 4
@ISC_R_RANGE = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@isc_tokentype_eol = common dso_local global i64 0, align 8
@isc_tokentype_eof = common dso_local global i64 0, align 8
@isc_tokentype_number = common dso_local global i64 0, align 8
@ISC_R_UNEXPECTEDEND = common dso_local global i64 0, align 8
@ISC_R_BADNUMBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_lex_getoctaltoken(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @ISC_LEXOPT_EOL, align 4
  %11 = load i32, i32* @ISC_LEXOPT_EOF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ISC_LEXOPT_DNSMULTILINE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ISC_LEXOPT_ESCAPE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ISC_LEXOPT_NUMBER, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ISC_LEXOPT_OCTAL, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = call i64 @isc_lex_gettoken(i32* %21, i32 %22, %struct.TYPE_5__* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ISC_R_RANGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = call i32 @isc_lex_ungettoken(i32* %29, %struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %28, %3
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @ISC_R_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %4, align 8
  br label %82

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @isc_tokentype_eol, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @isc_tokentype_eof, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %41
  %54 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %54, i64* %4, align 8
  br label %82

55:                                               ; preds = %47, %38
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @isc_tokentype_number, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = call i32 @isc_lex_ungettoken(i32* %62, %struct.TYPE_5__* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @isc_tokentype_eol, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @isc_tokentype_eof, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70, %61
  %77 = load i64, i64* @ISC_R_UNEXPECTEDEND, align 8
  store i64 %77, i64* %4, align 8
  br label %82

78:                                               ; preds = %70
  %79 = load i64, i64* @ISC_R_BADNUMBER, align 8
  store i64 %79, i64* %4, align 8
  br label %82

80:                                               ; preds = %55
  %81 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %78, %76, %53, %36
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @isc_lex_gettoken(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @isc_lex_ungettoken(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
