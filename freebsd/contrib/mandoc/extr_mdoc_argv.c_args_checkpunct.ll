; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_args_checkpunct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_args_checkpunct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DELIMSZ = common dso_local global i32 0, align 4
@DELIM_CLOSE = common dso_local global i64 0, align 8
@DELIM_NONE = common dso_local global i32 0, align 4
@DELIM_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @args_checkpunct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @args_checkpunct(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @DELIMSZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %46, %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 32, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DELIMSZ, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %23, %15
  %36 = phi i1 [ false, %23 ], [ false, %15 ], [ %34, %31 ]
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %14, i64 %44
  store i8 %42, i8* %45, align 1
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %15

51:                                               ; preds = %35
  %52 = load i32, i32* @DELIMSZ, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %14, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i64, i64* @DELIM_CLOSE, align 8
  %61 = call i64 @mdoc_isdelim(i8* %14)
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %73, %64
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 32, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %65

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %149, %76
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %150

84:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %107, %84
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 32, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @DELIMSZ, align 4
  %104 = icmp slt i32 %102, %103
  br label %105

105:                                              ; preds = %101, %93, %85
  %106 = phi i1 [ false, %93 ], [ false, %85 ], [ %104, %101 ]
  br i1 %106, label %107, label %118

107:                                              ; preds = %105
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %14, i64 %116
  store i8 %113, i8* %117, align 1
  br label %85

118:                                              ; preds = %105
  %119 = load i32, i32* @DELIMSZ, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

123:                                              ; preds = %118
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %14, i64 %125
  store i8 0, i8* %126, align 1
  %127 = call i64 @mdoc_isdelim(i8* %14)
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* @DELIM_NONE, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* @DELIM_OPEN, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %123
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %146, %137
  %139 = load i8*, i8** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 32, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %138

149:                                              ; preds = %138
  br label %77

150:                                              ; preds = %77
  %151 = load i8*, i8** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 0, %156
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

159:                                              ; preds = %150, %136, %122, %63, %55
  %160 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mdoc_isdelim(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
