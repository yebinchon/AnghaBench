; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_lex_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_lex_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, i32 }
%struct.ucl_chunk = type { i8*, i32, i32, i32 }

@UCL_PARSER_NO_TIME = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@UCL_ESYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"numeric value out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*, i32*)* @ucl_lex_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_lex_number(%struct.ucl_parser* %0, %struct.ucl_chunk* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca %struct.ucl_chunk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %5, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %15 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %18 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UCL_PARSER_NO_TIME, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ucl_maybe_parse_number(i32* %10, i8* %13, i32 %16, i8** %8, i32 1, i32 0, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %30 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %36 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %43 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %41 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %49 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %56 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  store i32 1, i32* %4, align 4
  br label %69

57:                                               ; preds = %3
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ERANGE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %63 = load i32, i32* @UCL_ESYNTAX, align 4
  %64 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %65 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %64, i32 0, i32 1
  %66 = call i32 @ucl_set_err(%struct.ucl_parser* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ucl_maybe_parse_number(i32*, i8*, i32, i8**, i32, i32, i32) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
