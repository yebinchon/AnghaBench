; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_fty_enum.c_Check_Enum_Field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_fty_enum.c_Check_Enum_Field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32, i32 }

@NOMATCH = common dso_local global i32 0, align 4
@EXACT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @Check_Enum_Field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check_Enum_Field(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  store i8** %17, i8*** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @field_buffer(i32* %26, i32 0)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %95, %2
  %30 = load i8**, i8*** %6, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %6, align 8
  %35 = load i8*, i8** %33, align 8
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %96

39:                                               ; preds = %37
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @Compare(i8* %40, i8* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* @NOMATCH, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %95

46:                                               ; preds = %39
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %11, align 8
  store i8* %47, i8** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @EXACT, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %80, %54
  %56 = load i8**, i8*** %6, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %6, align 8
  %61 = load i8*, i8** %59, align 8
  store i8* %61, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i1 [ false, %55 ], [ %62, %58 ]
  br i1 %64, label %65, label %81

65:                                               ; preds = %63
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @Compare(i8* %66, i8* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @NOMATCH, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @EXACT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i8*, i8** %12, align 8
  store i8* %77, i8** %11, align 8
  br label %81

78:                                               ; preds = %72
  store i8* null, i8** %11, align 8
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %65
  br label %55

81:                                               ; preds = %76, %63
  br label %82

82:                                               ; preds = %81, %50, %46
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @set_field_buffer(i32* %86, i32 0, i8* %87)
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %3, align 4
  br label %98

90:                                               ; preds = %82
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  br label %96

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %39
  br label %29

96:                                               ; preds = %93, %37
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %85
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @field_buffer(i32*, i32) #1

declare dso_local i32 @Compare(i8*, i8*, i32) #1

declare dso_local i32 @set_field_buffer(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
