; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertDotCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_expertDotCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-sample\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"option requires an argument: %s\0A\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"value out of range: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown option: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"sqlite3_expert_new: %s\0A\00", align 1
@EXPERT_CONFIG_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**, i32)* @expertDotCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expertDotCommand(%struct.TYPE_4__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @memset(%struct.TYPE_5__* %22, i32 0, i32 4)
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %118, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %121

34:                                               ; preds = %32
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  br label %54

54:                                               ; preds = %51, %45, %34
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strlen30(i8* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = icmp eq i64 0, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %117

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %69, 2
  br i1 %70, label %71, label %111

71:                                               ; preds = %68
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @strncmp(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = icmp eq i64 0, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @raw_printf(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %85, i32* %7, align 4
  br label %110

86:                                               ; preds = %76
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @integerValue(i8* %92)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %10, align 4
  %99 = icmp sgt i32 %98, 100
  br i1 %99, label %100, label %109

100:                                              ; preds = %97, %86
  %101 = load i32, i32* @stderr, align 4
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @raw_printf(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %100, %97
  br label %110

110:                                              ; preds = %109, %81
  br label %116

111:                                              ; preds = %71, %68
  %112 = load i32, i32* @stderr, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @raw_printf(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %111, %110
  br label %117

117:                                              ; preds = %116, %64
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %24

121:                                              ; preds = %32
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @SQLITE_OK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %121
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sqlite3_expert_new(i32 %128, i8** %8)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %125
  %139 = load i32, i32* @stderr, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @raw_printf(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %142, i32* %7, align 4
  br label %151

143:                                              ; preds = %125
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @EXPERT_CONFIG_SAMPLE, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @sqlite3_expert_config(i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %143, %138
  br label %152

152:                                              ; preds = %151, %121
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @raw_printf(i32, i8*, i8*) #1

declare dso_local i64 @integerValue(i8*) #1

declare dso_local i32 @sqlite3_expert_new(i32, i8**) #1

declare dso_local i32 @sqlite3_expert_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
