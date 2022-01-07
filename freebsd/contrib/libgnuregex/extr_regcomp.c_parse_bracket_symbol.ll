; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_bracket_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_bracket_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8 }

@REG_EBRACK = common dso_local global i32 0, align 4
@BRACKET_NAME_BUF_SIZE = common dso_local global i32 0, align 4
@COLL_SYM = common dso_local global i32 0, align 4
@EQUIV_CLASS = common dso_local global i32 0, align 4
@CHAR_CLASS = common dso_local global i32 0, align 4
@REG_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_9__*)* @parse_bracket_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bracket_symbol(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  store i8 %14, i8* %9, align 1
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @re_string_eoi(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @REG_EBRACK, align 4
  store i32 %19, i32* %4, align 4
  br label %96

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %65, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @BRACKET_NAME_BUF_SIZE, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @REG_EBRACK, align 4
  store i32 %26, i32* %4, align 4
  br label %96

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 130
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call zeroext i8 @re_string_fetch_byte_case(i32* %33)
  store i8 %34, i8* %8, align 1
  br label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = call zeroext i8 @re_string_fetch_byte(i32* %36)
  store i8 %37, i8* %8, align 1
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @re_string_eoi(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @REG_EBRACK, align 4
  store i32 %43, i32* %4, align 4
  br label %96

44:                                               ; preds = %38
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = call signext i8 @re_string_peek_byte(i32* %51, i32 0)
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 93
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %68

56:                                               ; preds = %50, %44
  %57 = load i8, i8* %8, align 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %57, i8* %64, align 1
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %21

68:                                               ; preds = %55
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @re_string_skip_bytes(i32* %69, i32 1)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %93 [
    i32 129, label %81
    i32 128, label %85
    i32 130, label %89
  ]

81:                                               ; preds = %68
  %82 = load i32, i32* @COLL_SYM, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %94

85:                                               ; preds = %68
  %86 = load i32, i32* @EQUIV_CLASS, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %94

89:                                               ; preds = %68
  %90 = load i32, i32* @CHAR_CLASS, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %94

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %89, %85, %81
  %95 = load i32, i32* @REG_NOERROR, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %42, %25, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @re_string_eoi(i32*) #1

declare dso_local zeroext i8 @re_string_fetch_byte_case(i32*) #1

declare dso_local zeroext i8 @re_string_fetch_byte(i32*) #1

declare dso_local signext i8 @re_string_peek_byte(i32*, i32) #1

declare dso_local i32 @re_string_skip_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
