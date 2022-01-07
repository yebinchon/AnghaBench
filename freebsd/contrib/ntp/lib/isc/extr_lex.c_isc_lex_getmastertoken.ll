; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_getmastertoken.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_getmastertoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@ISC_LEXOPT_EOL = common dso_local global i32 0, align 4
@ISC_LEXOPT_EOF = common dso_local global i32 0, align 4
@ISC_LEXOPT_DNSMULTILINE = common dso_local global i32 0, align 4
@ISC_LEXOPT_ESCAPE = common dso_local global i32 0, align 4
@isc_tokentype_qstring = common dso_local global i64 0, align 8
@ISC_LEXOPT_QSTRING = common dso_local global i32 0, align 4
@isc_tokentype_number = common dso_local global i64 0, align 8
@ISC_LEXOPT_NUMBER = common dso_local global i32 0, align 4
@ISC_R_RANGE = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@isc_tokentype_eol = common dso_local global i64 0, align 8
@isc_tokentype_eof = common dso_local global i64 0, align 8
@isc_tokentype_string = common dso_local global i64 0, align 8
@ISC_R_UNEXPECTEDEND = common dso_local global i64 0, align 8
@ISC_R_BADNUMBER = common dso_local global i64 0, align 8
@ISC_R_UNEXPECTEDTOKEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_lex_getmastertoken(i32* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @ISC_LEXOPT_EOL, align 4
  %13 = load i32, i32* @ISC_LEXOPT_EOF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ISC_LEXOPT_DNSMULTILINE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ISC_LEXOPT_ESCAPE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @isc_tokentype_qstring, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @ISC_LEXOPT_QSTRING, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %35

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @isc_tokentype_number, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @ISC_LEXOPT_NUMBER, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = call i64 @isc_lex_gettoken(i32* %36, i32 %37, %struct.TYPE_5__* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @ISC_R_RANGE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = call i32 @isc_lex_ungettoken(i32* %44, %struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @ISC_R_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %5, align 8
  br label %115

53:                                               ; preds = %47
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @isc_tokentype_eol, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @isc_tokentype_eof, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %56
  %69 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %69, i64* %5, align 8
  br label %115

70:                                               ; preds = %62, %53
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @isc_tokentype_string, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @isc_tokentype_qstring, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %81, i64* %5, align 8
  br label %115

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = call i32 @isc_lex_ungettoken(i32* %89, %struct.TYPE_5__* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @isc_tokentype_eol, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @isc_tokentype_eof, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97, %88
  %104 = load i64, i64* @ISC_R_UNEXPECTEDEND, align 8
  store i64 %104, i64* %5, align 8
  br label %115

105:                                              ; preds = %97
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @isc_tokentype_number, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i64, i64* @ISC_R_BADNUMBER, align 8
  store i64 %110, i64* %5, align 8
  br label %115

111:                                              ; preds = %105
  %112 = load i64, i64* @ISC_R_UNEXPECTEDTOKEN, align 8
  store i64 %112, i64* %5, align 8
  br label %115

113:                                              ; preds = %82
  %114 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %113, %111, %109, %103, %80, %68, %51
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i64 @isc_lex_gettoken(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @isc_lex_ungettoken(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
