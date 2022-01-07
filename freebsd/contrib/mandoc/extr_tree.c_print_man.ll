; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tree.c_print_man.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tree.c_print_man.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, i8*, i64, i32, i32, i32, %struct.roff_node*, %struct.roff_node*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"elem\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"eqn\00", align 1
@roff_name = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s (%s) \00", align 1
@NODE_LINE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@NODE_DELIMC = common dso_local global i32 0, align 4
@NODE_EOS = common dso_local global i32 0, align 4
@NODE_NOFILL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c" NOFILL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*, i32)* @print_man to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_man(%struct.roff_node* %0, i32 %1) #0 {
  %3 = alloca %struct.roff_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %9 = icmp eq %struct.roff_node* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %166

11:                                               ; preds = %2
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %13 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %24 [
    i32 130, label %15
    i32 133, label %16
    i32 128, label %17
    i32 134, label %18
    i32 136, label %19
    i32 131, label %20
    i32 135, label %21
    i32 129, label %22
    i32 132, label %23
  ]

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %26

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %26

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %26

18:                                               ; preds = %11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %26

19:                                               ; preds = %11
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %26

20:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %26

21:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %26

22:                                               ; preds = %11
  br label %26

23:                                               ; preds = %11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %26

24:                                               ; preds = %11
  %25 = call i32 (...) @abort() #3
  unreachable

26:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15
  %27 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %28 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %44 [
    i32 128, label %30
    i32 134, label %30
    i32 133, label %34
    i32 136, label %34
    i32 131, label %34
    i32 135, label %34
    i32 130, label %41
    i32 129, label %42
    i32 132, label %43
  ]

30:                                               ; preds = %26, %26
  %31 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %32 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %46

34:                                               ; preds = %26, %26, %26, %26
  %35 = load i8**, i8*** @roff_name, align 8
  %36 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %37 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %5, align 8
  br label %46

41:                                               ; preds = %26
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %46

42:                                               ; preds = %26
  br label %46

43:                                               ; preds = %26
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %46

44:                                               ; preds = %26
  %45 = call i32 (...) @abort() #3
  unreachable

46:                                               ; preds = %43, %42, %41, %34, %30
  %47 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = icmp eq i8* null, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = icmp eq i8* null, %55
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %62 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @print_span(i64 %63, i32 %64)
  br label %125

66:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %73, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = call i32 @putchar(i8 signext 32)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %67

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %77, i8* %78)
  %80 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %81 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NODE_LINE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = call i32 @putchar(i8 signext 42)
  br label %88

88:                                               ; preds = %86, %76
  %89 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %90 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %93 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %91, i32 %95)
  %97 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %98 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NODE_DELIMC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %88
  %104 = call i32 @putchar(i8 signext 41)
  br label %105

105:                                              ; preds = %103, %88
  %106 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %107 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NODE_EOS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 @putchar(i8 signext 46)
  br label %114

114:                                              ; preds = %112, %105
  %115 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %116 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @NODE_NOFILL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %114
  %124 = call i32 @putchar(i8 signext 10)
  br label %125

125:                                              ; preds = %123, %57
  %126 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %127 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %126, i32 0, i32 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = icmp ne %struct.TYPE_2__* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %132 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %131, i32 0, i32 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 4
  %138 = call i32 @print_box(i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %130, %125
  %140 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %141 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %140, i32 0, i32 7
  %142 = load %struct.roff_node*, %struct.roff_node** %141, align 8
  %143 = icmp ne %struct.roff_node* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %146 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %145, i32 0, i32 7
  %147 = load %struct.roff_node*, %struct.roff_node** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %150 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 136
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 2, i32 4
  %155 = add nsw i32 %148, %154
  call void @print_man(%struct.roff_node* %147, i32 %155)
  br label %156

156:                                              ; preds = %144, %139
  %157 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %158 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %157, i32 0, i32 6
  %159 = load %struct.roff_node*, %struct.roff_node** %158, align 8
  %160 = icmp ne %struct.roff_node* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %163 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %162, i32 0, i32 6
  %164 = load %struct.roff_node*, %struct.roff_node** %163, align 8
  %165 = load i32, i32* %4, align 4
  call void @print_man(%struct.roff_node* %164, i32 %165)
  br label %166

166:                                              ; preds = %10, %161, %156
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @print_span(i64, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @print_box(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
