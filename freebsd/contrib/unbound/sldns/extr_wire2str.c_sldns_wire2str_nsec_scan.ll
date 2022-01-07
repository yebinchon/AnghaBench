; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_nsec_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_nsec_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_nsec_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %39, %4
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %157

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %15, align 4
  %35 = add i32 2, %34
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %157

39:                                               ; preds = %29
  %40 = load i32, i32* %15, align 4
  %41 = add i32 %40, 2
  %42 = load i32*, i32** %10, align 8
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %10, align 8
  %45 = load i32, i32* %15, align 4
  %46 = add i32 %45, 2
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %11, align 8
  br label %22

50:                                               ; preds = %22
  %51 = load i32**, i32*** %6, align 8
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %10, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %139, %50
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %149

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = icmp ult i64 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %157

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add i32 2, %70
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %157

75:                                               ; preds = %62
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32* %77, i32** %10, align 8
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %136, %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %139

82:                                               ; preds = %78
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %136

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %12, align 4
  %94 = shl i32 %93, 3
  %95 = or i32 %92, %94
  store i32 %95, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %132, %90
  %97 = load i32, i32* %13, align 4
  %98 = icmp ult i32 %97, 8
  br i1 %98, label %99, label %135

99:                                               ; preds = %96
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = ashr i32 128, %105
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %99
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i8**, i8*** %8, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = call i64 @sldns_str_print(i8** %113, i64* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %112, %109
  %121 = load i8**, i8*** %8, align 8
  %122 = load i64*, i64** %9, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add i32 %123, %124
  %126 = call i64 @sldns_wire2str_type_print(i8** %121, i64* %122, i32 %125)
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %120, %99
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %13, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %96

135:                                              ; preds = %96
  br label %136

136:                                              ; preds = %135, %89
  %137 = load i32, i32* %12, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %78

139:                                              ; preds = %78
  %140 = load i32, i32* %15, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %10, align 8
  %144 = load i32, i32* %15, align 4
  %145 = add i32 %144, 2
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %11, align 8
  %148 = sub i64 %147, %146
  store i64 %148, i64* %11, align 8
  br label %55

149:                                              ; preds = %55
  %150 = load i64*, i64** %7, align 8
  %151 = load i64, i64* %150, align 8
  %152 = load i32**, i32*** %6, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 %151
  store i32* %154, i32** %152, align 8
  %155 = load i64*, i64** %7, align 8
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* %17, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %149, %74, %61, %38, %28
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*) #1

declare dso_local i64 @sldns_wire2str_type_print(i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
