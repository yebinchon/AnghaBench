; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_bracket_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_bracket_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@OP_OPEN_COLL_ELEM = common dso_local global i64 0, align 8
@OP_OPEN_CHAR_CLASS = common dso_local global i64 0, align 8
@OP_OPEN_EQUIV_CLASS = common dso_local global i64 0, align 8
@OP_CHARSET_RANGE = common dso_local global i64 0, align 8
@OP_CLOSE_BRACKET = common dso_local global i64 0, align 8
@REG_ERANGE = common dso_local global i32 0, align 4
@SB_CHAR = common dso_local global i32 0, align 4
@REG_NOERROR = common dso_local global i32 0, align 4
@MB_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i32, i32*, i32, i32)* @parse_bracket_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bracket_element(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @re_string_skip_bytes(i32* %17, i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OP_OPEN_COLL_ELEM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %7
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OP_OPEN_CHAR_CLASS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OP_OPEN_EQUIV_CLASS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %25, %7
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = call i32 @parse_bracket_symbol(%struct.TYPE_13__* %38, i32* %39, %struct.TYPE_12__* %40)
  store i32 %41, i32* %8, align 4
  br label %77

42:                                               ; preds = %31
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OP_CHARSET_RANGE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @BE(i32 %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %42
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @peek_token_bracket(%struct.TYPE_12__* %16, i32* %55, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OP_CLOSE_BRACKET, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @REG_ERANGE, align 4
  store i32 %63, i32* %8, align 4
  br label %77

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %51, %42
  %66 = load i32, i32* @SB_CHAR, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @REG_NOERROR, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %65, %62, %37
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @re_string_skip_bytes(i32*, i32) #1

declare dso_local i32 @parse_bracket_symbol(%struct.TYPE_13__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32 @peek_token_bracket(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
