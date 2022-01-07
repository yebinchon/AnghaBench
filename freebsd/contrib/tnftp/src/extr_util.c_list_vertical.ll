; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_list_vertical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_list_vertical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8** }

@ttywidth = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_vertical(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 8
  %36 = and i64 %35, -8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* @ttywidth, align 8
  %38 = load i64, i64* %9, align 8
  %39 = udiv i64 %37, %38
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i64 1, i64* %5, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %46, %47
  %49 = sub i64 %48, 1
  %50 = load i64, i64* %5, align 8
  %51 = udiv i64 %49, %50
  store i64 %51, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %115, %43
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %118

56:                                               ; preds = %52
  store i64 0, i64* %4, align 8
  br label %57

57:                                               ; preds = %111, %56
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %57
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = mul i64 %65, %66
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %67, %68
  %70 = getelementptr inbounds i8*, i8** %64, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @ttyout, align 4
  %77 = call i32 @fputs(i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %61
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %6, align 8
  %81 = mul i64 %79, %80
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %81, %82
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* @ttyout, align 4
  %92 = call i32 @putc(i8 signext 10, i32 %91)
  br label %114

93:                                               ; preds = %78
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = call i64 @strlen(i8* %97)
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %103, %96
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 8
  %106 = and i64 %105, -8
  store i64 %106, i64* %8, align 8
  %107 = load i32, i32* @ttyout, align 4
  %108 = call i32 @putc(i8 signext 9, i32 %107)
  br label %99

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %93
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %4, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %4, align 8
  br label %57

114:                                              ; preds = %90, %57
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %3, align 8
  br label %52

118:                                              ; preds = %52
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
