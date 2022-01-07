; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base32.c_base32_tobuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base32.c_base32_tobuffer.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32)* @base32_tobuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base32_tobuffer(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @base32_decode_init(%struct.TYPE_13__* %9, i32 %14, i8* %15, i32* %16)
  br label %18

18:                                               ; preds = %68, %4
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %69

28:                                               ; preds = %26
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ISC_FALSE, align 4
  store i32 %32, i32* %12, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ISC_TRUE, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* @isc_tokentype_string, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @isc_lex_getmastertoken(i32* %36, %struct.TYPE_11__* %11, i64 %37, i32 %38)
  %40 = call i32 @RETERR(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @isc_tokentype_string, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %69

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %10, align 8
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %65, %46
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @base32_decode_char(%struct.TYPE_13__* %9, i32 %62)
  %64 = call i32 @RETERR(i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %49

68:                                               ; preds = %49
  br label %18

69:                                               ; preds = %45, %26
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @isc_lex_ungettoken(i32* %78, %struct.TYPE_11__* %11)
  br label %80

80:                                               ; preds = %77, %73, %69
  %81 = call i32 @base32_decode_finish(%struct.TYPE_13__* %9)
  %82 = call i32 @RETERR(i32 %81)
  %83 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %83
}

declare dso_local i32 @base32_decode_init(%struct.TYPE_13__*, i32, i8*, i32*) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @isc_lex_getmastertoken(i32*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @base32_decode_char(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @isc_lex_ungettoken(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @base32_decode_finish(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
