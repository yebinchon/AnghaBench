; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base64.c_isc_base64_tobuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base64.c_isc_base64_tobuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }

@ISC_FALSE = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i32 0, align 4
@isc_tokentype_string = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_base64_tobuffer(i32* %0, i32* %1, i32 %2) #0 {
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
  %14 = call i32 @base64_decode_init(%struct.TYPE_13__* %7, i32 %12, i32* %13)
  br label %15

15:                                               ; preds = %65, %3
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %66

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ISC_FALSE, align 4
  store i32 %29, i32* %10, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ISC_TRUE, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* @isc_tokentype_string, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @isc_lex_getmastertoken(i32* %33, %struct.TYPE_11__* %9, i64 %34, i32 %35)
  %37 = call i32 @RETERR(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @isc_tokentype_string, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %66

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %62, %43
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @base64_decode_char(%struct.TYPE_13__* %7, i32 %59)
  %61 = call i32 @RETERR(i32 %60)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %46

65:                                               ; preds = %46
  br label %15

66:                                               ; preds = %42, %23
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @isc_lex_ungettoken(i32* %75, %struct.TYPE_11__* %9)
  br label %77

77:                                               ; preds = %74, %70, %66
  %78 = call i32 @base64_decode_finish(%struct.TYPE_13__* %7)
  %79 = call i32 @RETERR(i32 %78)
  %80 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %80
}

declare dso_local i32 @base64_decode_init(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @isc_lex_getmastertoken(i32*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @base64_decode_char(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @isc_lex_ungettoken(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @base64_decode_finish(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
