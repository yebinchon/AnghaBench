; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_opts.c_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_opts.c_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tbl_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i8 }

@MANDOCERR_TBLOPT_EQN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@MANDOCERR_TBLOPT_NOARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@keys = common dso_local global %struct.TYPE_4__* null, align 8
@MANDOCERR_TBLOPT_ARGSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s want %d have %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tbl_node*, i32, i8*, i32*, i32)* @arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg(%struct.tbl_node* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.tbl_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tbl_node* %0, %struct.tbl_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  br label %13

13:                                               ; preds = %33, %5
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = load i8*, i8** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 9
  br label %31

31:                                               ; preds = %22, %13
  %32 = phi i1 [ true, %13 ], [ %30, %22 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %13

37:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 40
  br i1 %45, label %46, label %65

46:                                               ; preds = %37
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %61, %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 41
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %50

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %110 [
    i32 131, label %67
    i32 128, label %79
    i32 129, label %94
    i32 130, label %95
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* @MANDOCERR_TBLOPT_EQN, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = call i32 (i32, i32, i32, i8*, i32, ...) @mandoc_msg(i32 %68, i32 %69, i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %72, i8* %77)
  store i32 2, i32* %12, align 4
  br label %112

79:                                               ; preds = %65
  store i32 1, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i8*, i8** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %91 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i8 %89, i8* %92, align 1
  br label %93

93:                                               ; preds = %83, %79
  br label %112

94:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %112

95:                                               ; preds = %65
  store i32 1, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %107 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i8 %105, i8* %108, align 1
  br label %109

109:                                              ; preds = %99, %95
  br label %112

110:                                              ; preds = %65
  %111 = call i32 (...) @abort() #3
  unreachable

112:                                              ; preds = %109, %94, %93, %67
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i32, i32* @MANDOCERR_TBLOPT_NOARG, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i32, i32, i8*, i32, ...) @mandoc_msg(i32 %116, i32 %117, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %149

127:                                              ; preds = %112
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load i32, i32* @MANDOCERR_TBLOPT_ARGSZ, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 (i32, i32, i32, i8*, i32, ...) @mandoc_msg(i32 %135, i32 %136, i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %134, %130, %127
  br label %149

149:                                              ; preds = %148, %115
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %150
  store i32 %153, i32* %151, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 41
  br i1 %161, label %162, label %166

162:                                              ; preds = %149
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %162, %149
  ret void
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
