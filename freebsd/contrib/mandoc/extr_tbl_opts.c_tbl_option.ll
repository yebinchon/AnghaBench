; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_opts.c_tbl_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_opts.c_tbl_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.tbl_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MANDOCERR_TBLOPT_ALPHA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@KEY_MAXKEYS = common dso_local global i32 0, align 4
@keys = common dso_local global %struct.TYPE_4__* null, align 8
@MANDOCERR_TBLOPT_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tbl_option(%struct.tbl_node* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.tbl_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tbl_node* %0, %struct.tbl_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %171, %128, %73, %4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %39, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 44
  br label %39

39:                                               ; preds = %31, %23, %15
  %40 = phi i1 [ true, %23 ], [ true, %15 ], [ %38, %31 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %15

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 59
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  ret void

56:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %67, %56
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isalpha(i8 zeroext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %57

70:                                               ; preds = %57
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* @MANDOCERR_TBLOPT_ALPHA, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i32 (i32, i32, i32, i8*, i8, ...) @mandoc_msg(i32 %74, i32 %75, i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %81)
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %14

85:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %121, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @KEY_MAXKEYS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %86
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @strncasecmp(i8* %94, i8* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %90
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %104, %90
  %118 = phi i1 [ true, %90 ], [ %116, %104 ]
  br label %119

119:                                              ; preds = %117, %86
  %120 = phi i1 [ false, %86 ], [ %118, %117 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %86

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @KEY_MAXKEYS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %124
  %129 = load i32, i32* @MANDOCERR_TBLOPT_BAD, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = call i32 (i32, i32, i32, i8*, i8, ...) @mandoc_msg(i32 %129, i32 %130, i32 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %133, i8* %137)
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %14

142:                                              ; preds = %124
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %142
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %161 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 4
  br label %171

165:                                              ; preds = %142
  %166 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @arg(%struct.tbl_node* %166, i32 %167, i8* %168, i32* %10, i32 %169)
  br label %171

171:                                              ; preds = %165, %153
  br label %14
}

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8 signext, ...) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @arg(%struct.tbl_node*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
