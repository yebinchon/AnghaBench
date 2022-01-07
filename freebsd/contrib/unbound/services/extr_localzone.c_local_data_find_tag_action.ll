; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_find_tag_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_find_tag_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"matched tag [%d] %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"tag action [%d] %s to type %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_data_find_tag_action(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6, i32* %7, i8** %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i8** %8, i8*** %20, align 8
  store i32 %9, i32* %21, align 4
  store i64 0, i64* %22, align 8
  br label %25

25:                                               ; preds = %143, %10
  %26 = load i64, i64* %22, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %22, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ult i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %146

35:                                               ; preds = %33
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %22, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i64, i64* %22, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %39, %43
  store i32 %44, i32* %24, align 4
  store i64 0, i64* %23, align 8
  br label %45

45:                                               ; preds = %139, %35
  %46 = load i64, i64* %23, align 8
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %24, align 4
  %50 = icmp sgt i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %53, label %142

53:                                               ; preds = %51
  %54 = load i32, i32* %24, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %136

57:                                               ; preds = %53
  %58 = load i64, i64* %22, align 8
  %59 = mul i64 %58, 8
  %60 = load i64, i64* %23, align 8
  %61 = add i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %19, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @VERB_ALGO, align 4
  %65 = load i32*, i32** %19, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %19, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %21, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %57
  %72 = load i8**, i8*** %20, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  %77 = load i8*, i8** %76, align 8
  br label %79

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %71
  %80 = phi i8* [ %77, %71 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %78 ]
  %81 = call i32 (i32, i8*, i32, i8*, ...) @verbose(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %66, i8* %80)
  %82 = load i64, i64* %22, align 8
  %83 = mul i64 %82, 8
  %84 = load i64, i64* %23, align 8
  %85 = add i64 %83, %84
  %86 = load i64, i64* %17, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %134

88:                                               ; preds = %79
  %89 = load i32*, i32** %16, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %134

91:                                               ; preds = %88
  %92 = load i32*, i32** %16, align 8
  %93 = load i64, i64* %22, align 8
  %94 = mul i64 %93, 8
  %95 = load i64, i64* %23, align 8
  %96 = add i64 %94, %95
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %134

100:                                              ; preds = %91
  %101 = load i32, i32* @VERB_ALGO, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %19, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %21, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i8**, i8*** %20, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  br label %116

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %108
  %117 = phi i8* [ %114, %108 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %115 ]
  %118 = load i32*, i32** %16, align 8
  %119 = load i64, i64* %22, align 8
  %120 = mul i64 %119, 8
  %121 = load i64, i64* %23, align 8
  %122 = add i64 %120, %121
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @local_zone_type2str(i32 %124)
  %126 = call i32 (i32, i8*, i32, i8*, ...) @verbose(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %103, i8* %117, i32 %125)
  %127 = load i32*, i32** %16, align 8
  %128 = load i64, i64* %22, align 8
  %129 = mul i64 %128, 8
  %130 = load i64, i64* %23, align 8
  %131 = add i64 %129, %130
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %11, align 4
  br label %148

134:                                              ; preds = %91, %88, %79
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %11, align 4
  br label %148

136:                                              ; preds = %53
  %137 = load i32, i32* %24, align 4
  %138 = ashr i32 %137, 1
  store i32 %138, i32* %24, align 4
  br label %139

139:                                              ; preds = %136
  %140 = load i64, i64* %23, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %23, align 8
  br label %45

142:                                              ; preds = %51
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %22, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %22, align 8
  br label %25

146:                                              ; preds = %33
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %146, %134, %116
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local i32 @verbose(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @local_zone_type2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
