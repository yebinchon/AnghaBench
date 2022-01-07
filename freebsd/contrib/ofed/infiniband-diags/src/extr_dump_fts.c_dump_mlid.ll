; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_dump_fts.c_dump_mlid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_dump_fts.c_dump_mlid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_MLIDS_IN_BLOCK = common dso_local global i32 0, align 4
@brief = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%04hx\00", align 1
@dump_all = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_mlid(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @IB_MLIDS_IN_BLOCK, align 4
  %20 = zext i32 %19 to i64
  store i32 0, i32* %16, align 4
  %21 = load i64, i64* @brief, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add i32 %24, 1
  %26 = call i32 @ALIGN(i32 %25, i32 16)
  %27 = sdiv i32 %26, 16
  store i32 %27, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %70, %23
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = mul nsw i64 %35, %20
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IB_MLIDS_IN_BLOCK, align 4
  %40 = urem i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* %16, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %47, %32
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @snprintf(i8* %54, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %17, align 4
  br label %73

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %28

73:                                               ; preds = %67, %28
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @dump_all, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 0, i8* %81, align 1
  store i32 0, i32* %6, align 4
  br label %151

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %6, align 4
  br label %151

84:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %131, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %134

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = udiv i32 %90, 16
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = urem i32 %92, 16
  store i32 %93, i32* %15, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = mul nsw i64 %96, %20
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @IB_MLIDS_IN_BLOCK, align 4
  %101 = urem i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ntohs(i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %89
  %109 = load i32, i32* %16, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %108, %89
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %15, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 120, i32 32
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = mul i32 %121, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8 %119, i8* %124, align 1
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %13, align 4
  %127 = mul i32 %126, 2
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  store i8 32, i8* %130, align 1
  br label %131

131:                                              ; preds = %111
  %132 = load i32, i32* %13, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %85

134:                                              ; preds = %85
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @dump_all, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8 0, i8* %142, align 1
  store i32 0, i32* %6, align 4
  br label %151

143:                                              ; preds = %137, %134
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = mul i32 %145, 2
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i32, i32* %13, align 4
  %150 = mul i32 %149, 2
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %143, %140, %82, %79
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
