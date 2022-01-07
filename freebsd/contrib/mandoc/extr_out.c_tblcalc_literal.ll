; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_tblcalc_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_tblcalc_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rofftbl = type { i64 (i8*, i32)*, i32 }
%struct.roffcol = type { i64 }
%struct.tbl_dat = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rofftbl*, %struct.roffcol*, %struct.tbl_dat*, i64)* @tblcalc_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tblcalc_literal(%struct.rofftbl* %0, %struct.roffcol* %1, %struct.tbl_dat* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.rofftbl*, align 8
  %7 = alloca %struct.roffcol*, align 8
  %8 = alloca %struct.tbl_dat*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.rofftbl* %0, %struct.rofftbl** %6, align 8
  store %struct.roffcol* %1, %struct.roffcol** %7, align 8
  store %struct.tbl_dat* %2, %struct.tbl_dat** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.tbl_dat*, %struct.tbl_dat** %8, align 8
  %17 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.tbl_dat*, %struct.tbl_dat** %8, align 8
  %22 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %4
  store i64 0, i64* %5, align 8
  br label %134

28:                                               ; preds = %20
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.tbl_dat*, %struct.tbl_dat** %8, align 8
  %33 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @mandoc_strdup(i8* %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.tbl_dat*, %struct.tbl_dat** %8, align 8
  %38 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i8* [ %35, %31 ], [ %39, %36 ]
  store i8* %41, i8** %10, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %42 = load i8*, i8** %10, align 8
  store i8* %42, i8** %11, align 8
  br label %43

43:                                               ; preds = %111, %40
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %53, label %113

53:                                               ; preds = %51
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 32)
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i8* [ %58, %56 ], [ null, %59 ]
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %12, align 8
  store i8 0, i8* %65, align 1
  br label %67

67:                                               ; preds = %72, %64
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %12, align 8
  br label %67

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.rofftbl*, %struct.rofftbl** %6, align 8
  %78 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %77, i32 0, i32 0
  %79 = load i64 (i8*, i32)*, i64 (i8*, i32)** %78, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.rofftbl*, %struct.rofftbl** %6, align 8
  %82 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 %79(i8* %80, i32 %83)
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %76
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %92, %93
  %95 = load i64, i64* %9, align 8
  %96 = icmp ule i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i64, i64* %14, align 8
  %99 = add i64 1, %98
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %13, align 8
  br label %104

102:                                              ; preds = %90, %87, %76
  %103 = load i64, i64* %14, align 8
  store i64 %103, i64* %13, align 8
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* %13, align 8
  store i64 %109, i64* %15, align 8
  br label %110

110:                                              ; preds = %108, %104
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %11, align 8
  br label %43

113:                                              ; preds = %51
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @free(i8* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %121 = icmp ne %struct.roffcol* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %124 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i64, i64* %15, align 8
  %130 = load %struct.roffcol*, %struct.roffcol** %7, align 8
  %131 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %122, %119
  %133 = load i64, i64* %15, align 8
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %132, %27
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
