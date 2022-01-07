; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hex.c_isc_hex_tobuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hex.c_isc_hex_tobuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }

@ISC_FALSE = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i32 0, align 4
@isc_tokentype_string = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_hex_tobuffer(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @hex_decode_init(%struct.TYPE_13__* %7, i32 %12, i32* %13)
  br label %15

15:                                               ; preds = %59, %3
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ISC_FALSE, align 4
  store i32 %23, i32* %10, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ISC_TRUE, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* @isc_tokentype_string, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @isc_lex_getmastertoken(i32* %27, %struct.TYPE_11__* %9, i64 %28, i32 %29)
  %31 = call i32 @RETERR(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @isc_tokentype_string, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %60

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %56, %37
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hex_decode_char(%struct.TYPE_13__* %7, i32 %53)
  %55 = call i32 @RETERR(i32 %54)
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %40

59:                                               ; preds = %40
  br label %15

60:                                               ; preds = %36, %15
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @isc_lex_ungettoken(i32* %65, %struct.TYPE_11__* %9)
  br label %67

67:                                               ; preds = %64, %60
  %68 = call i32 @hex_decode_finish(%struct.TYPE_13__* %7)
  %69 = call i32 @RETERR(i32 %68)
  %70 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %70
}

declare dso_local i32 @hex_decode_init(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @isc_lex_getmastertoken(i32*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @hex_decode_char(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @isc_lex_ungettoken(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @hex_decode_finish(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
