; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_txt.c_txt_dent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_txt.c_txt_dent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i32 }

@O_TABSTOP = common dso_local global i32 0, align 4
@O_SHIFTWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @txt_dent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_dent(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @O_TABSTOP, align 4
  %14 = call i64 @O_VAL(i32* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @O_SHIFTWIDTH, align 4
  %17 = call i64 @O_VAL(i32* %15, i32 %16)
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %43, %2
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @COL_OFF(i64 %34, i64 %35)
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %9, align 8
  br label %42

39:                                               ; preds = %24
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %18

46:                                               ; preds = %18
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %9, align 8
  store i64 %47, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %5, align 8
  %51 = urem i64 %49, %50
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %9, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %68, %46
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @COL_OFF(i64 %56, i64 %57)
  %59 = add i64 %55, %58
  %60 = load i64, i64* %9, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @COL_OFF(i64 %63, i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %54

71:                                               ; preds = %54
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %10, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %82, %83
  %85 = add i64 %84, 1
  %86 = call i32 @BINC_RETW(i32* %75, i8* %78, i32 %81, i64 %85)
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %87, %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %106, %71
  %95 = load i64, i64* %11, align 8
  %96 = icmp ugt i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 9, i8* %105, align 1
  br label %106

106:                                              ; preds = %97
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %11, align 8
  br label %94

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %122, %109
  %111 = load i64, i64* %10, align 8
  %112 = icmp ugt i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 32, i8* %121, align 1
  br label %122

122:                                              ; preds = %113
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %10, align 8
  br label %110

125:                                              ; preds = %110
  ret i32 0
}

declare dso_local i64 @O_VAL(i32*, i32) #1

declare dso_local i64 @COL_OFF(i64, i64) #1

declare dso_local i32 @BINC_RETW(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
