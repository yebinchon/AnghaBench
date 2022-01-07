; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_sl.c_sl_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_sl.c_sl_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"SLMANDOC\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\0A\09%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"No such command: %s. Try \22help\22 for a list of all commands\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Synonyms:\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sl_help(%struct.TYPE_10__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = call i64 @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @mandoc_template(%struct.TYPE_10__* %12, i32* null)
  br label %161

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %89

17:                                               ; preds = %14
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  br label %19

19:                                               ; preds = %63, %17
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %19
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %41 ]
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %49)
  br label %51

51:                                               ; preds = %42, %29
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %8, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %62

57:                                               ; preds = %24
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %51
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 1
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %7, align 8
  br label %19

66:                                               ; preds = %19
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i8* [ %77, %74 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %78 ]
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %80, i8* %86)
  br label %88

88:                                               ; preds = %79, %66
  br label %161

89:                                               ; preds = %14
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = load i8**, i8*** %6, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = call %struct.TYPE_10__* @sl_match(%struct.TYPE_10__* %90, i8* %93, i32 0)
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %7, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = icmp eq %struct.TYPE_10__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i8**, i8*** %6, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  br label %160

102:                                              ; preds = %89
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %105, i8* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %102
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %121, %114, %102
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 1
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %159

132:                                              ; preds = %126
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %159

137:                                              ; preds = %132
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %139

139:                                              ; preds = %151, %137
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i1 [ false, %139 ], [ %148, %144 ]
  br i1 %150, label %151, label %157

151:                                              ; preds = %149
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 1
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %155)
  br label %139

157:                                              ; preds = %149
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %132, %126
  br label %160

160:                                              ; preds = %159, %97
  br label %161

161:                                              ; preds = %11, %160, %88
  ret void
}

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @mandoc_template(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_10__* @sl_match(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
