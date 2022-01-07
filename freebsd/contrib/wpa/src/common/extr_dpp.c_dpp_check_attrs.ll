; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_check_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_check_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DPP: Attribute ID %04x len %u\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"DPP: Truncated message - not enough room for the attribute - dropped\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"DPP: An unexpected attribute included after the Wrapped Data attribute\00", align 1
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"DPP: Unexpected octets (%d) after the last attribute\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_check_attrs(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %7, align 8
  br label %15

15:                                               ; preds = %59, %2
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = icmp sge i64 %21, 4
  br i1 %22, label %23, label %64

23:                                               ; preds = %15
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @WPA_GET_LE16(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @WPA_GET_LE16(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = icmp sgt i64 %37, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %23
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %79

48:                                               ; preds = %23
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %79

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %6, align 8
  br label %15

64:                                               ; preds = %15
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = icmp ne i32* %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 -1, i32* %3, align 4
  br label %79

78:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %68, %51, %45
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
