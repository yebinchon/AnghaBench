; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_X.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_OR_NAME = common dso_local global i32 0, align 4
@NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"expecting hexadecimal constant.\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"hexadecimal constant too long.\00", align 1
@COLON = common dso_local global i32 0, align 4
@STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"string constant too long.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"expecting string or hexadecimal data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_X(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @peek_token(i8** %9, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @NUMBER_OR_NAME, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NUMBER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %16, %3
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @next_token(i8** %9, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NUMBER, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NUMBER_OR_NAME, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @parse_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @skip_to_semi(i32* %33)
  store i32 0, i32* %4, align 4
  br label %97

35:                                               ; preds = %27, %21
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @convert_num(i32* %39, i8* %40, i32 16, i32 8)
  %42 = load i32, i32* %10, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = call i32 @parse_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @skip_to_semi(i32* %48)
  store i32 0, i32* %4, align 4
  br label %97

50:                                               ; preds = %35
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @peek_token(i8** %9, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @COLON, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @next_token(i8** %9, i32* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @COLON, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %21, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %9, align 8
  br label %95

67:                                               ; preds = %16
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @STRING, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @next_token(i8** %9, i32* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strlen(i8* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  %78 = load i32, i32* %7, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = call i32 @parse_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @skip_to_semi(i32* %82)
  store i32 0, i32* %4, align 4
  br label %97

84:                                               ; preds = %71
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  %89 = call i32 @memcpy(i32* %85, i8* %86, i32 %88)
  br label %94

90:                                               ; preds = %67
  %91 = call i32 @parse_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @skip_to_semi(i32* %92)
  store i32 0, i32* %4, align 4
  br label %97

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %90, %80, %46, %31
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @peek_token(i8**, i32*) #1

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i32 @convert_num(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
