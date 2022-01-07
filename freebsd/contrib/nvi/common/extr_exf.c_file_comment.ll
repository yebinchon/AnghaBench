; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@SC_SCR_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @file_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_comment(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @db_get(%struct.TYPE_5__* %7, i8* %8, i32 0, i8** %5, i64* %4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i1 [ false, %6 ], [ %13, %11 ]
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  br label %6

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %170

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = load i32, i32* @SC_SCR_TOP, align 4
  %33 = call i32 @F_SET(%struct.TYPE_5__* %31, i32 %32)
  br label %34

34:                                               ; preds = %54, %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  %38 = call i32 @db_get(%struct.TYPE_5__* %35, i8* %37, i32 0, i8** %5, i64* %4)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %42, 1
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 35
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %41
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %170

54:                                               ; preds = %44
  br label %34

55:                                               ; preds = %34
  br label %170

56:                                               ; preds = %24
  %57 = load i64, i64* %4, align 8
  %58 = icmp ugt i64 %57, 1
  br i1 %58, label %59, label %110

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %110

65:                                               ; preds = %59
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 42
  br i1 %70, label %71, label %110

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = load i32, i32* @SC_SCR_TOP, align 4
  %74 = call i32 @F_SET(%struct.TYPE_5__* %72, i32 %73)
  br label %75

75:                                               ; preds = %102, %71
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i64, i64* %4, align 8
  %78 = icmp ugt i64 %77, 1
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 42
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 47
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i8*, i8** %3, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %170

95:                                               ; preds = %85, %79
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %4, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %4, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  br label %76

101:                                              ; preds = %76
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  %106 = call i32 @db_get(%struct.TYPE_5__* %103, i8* %105, i32 0, i8** %5, i64* %4)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br i1 %108, label %75, label %109

109:                                              ; preds = %102
  br label %169

110:                                              ; preds = %65, %59, %56
  %111 = load i64, i64* %4, align 8
  %112 = icmp ugt i64 %111, 1
  br i1 %112, label %113, label %168

113:                                              ; preds = %110
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 47
  br i1 %118, label %119, label %168

119:                                              ; preds = %113
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 47
  br i1 %124, label %125, label %168

125:                                              ; preds = %119
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = load i32, i32* @SC_SCR_TOP, align 4
  %128 = call i32 @F_SET(%struct.TYPE_5__* %126, i32 %127)
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  store i8* %130, i8** %5, align 8
  %131 = load i64, i64* %4, align 8
  %132 = sub i64 %131, 2
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %160, %125
  br label %134

134:                                              ; preds = %154, %133
  %135 = load i64, i64* %4, align 8
  %136 = icmp ugt i64 %135, 1
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 47
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 47
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i8*, i8** %3, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %170

153:                                              ; preds = %143, %137
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %4, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %4, align 8
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  br label %134

159:                                              ; preds = %134
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %3, align 8
  %164 = call i32 @db_get(%struct.TYPE_5__* %161, i8* %163, i32 0, i8** %5, i64* %4)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br i1 %166, label %133, label %167

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %119, %113, %110
  br label %169

169:                                              ; preds = %168, %109
  br label %170

170:                                              ; preds = %23, %50, %91, %149, %169, %55
  ret void
}

declare dso_local i32 @db_get(%struct.TYPE_5__*, i8*, i32, i8**, i64*) #1

declare dso_local i32 @F_SET(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
