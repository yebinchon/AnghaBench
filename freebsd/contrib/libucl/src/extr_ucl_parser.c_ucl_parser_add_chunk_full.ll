; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_add_chunk_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_add_chunk_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i64, i64, i32, i32*, i32 }
%struct.ucl_chunk = type { i8*, i64, i8*, i8*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"invalid chunk added\00", align 1
@UCL_STATE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot allocate chunk structure\00", align 1
@UCL_PARSE_AUTO = common dso_local global i32 0, align 4
@UCL_MAX_RECURSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"maximum include nesting limit is reached: %d\00", align 1
@UCL_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"a parser is in an invalid state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_parser_add_chunk_full(%struct.ucl_parser* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ucl_chunk*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %16 = icmp eq %struct.ucl_parser* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %159

18:                                               ; preds = %6
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %26 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %25, i32 0, i32 2
  %27 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %159

28:                                               ; preds = %21, %18
  %29 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %30 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UCL_STATE_ERROR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %155

34:                                               ; preds = %28
  %35 = call %struct.ucl_chunk* @UCL_ALLOC(i32 56)
  store %struct.ucl_chunk* %35, %struct.ucl_chunk** %14, align 8
  %36 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %37 = icmp eq %struct.ucl_chunk* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %40 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %39, i32 0, i32 2
  %41 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %159

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @UCL_PARSE_AUTO, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %58, 220
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp sle i32 %63, 223
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 129, i32* %13, align 4
  br label %74

66:                                               ; preds = %60, %55, %49
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 40
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 130, i32* %13, align 4
  br label %73

72:                                               ; preds = %66
  store i32 128, i32* %13, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %65
  br label %75

75:                                               ; preds = %74, %46, %42
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %78 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %81 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %83 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %86 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %88 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %93 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %95 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  %96 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %97 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %96, i32 0, i32 8
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %100 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %103 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %106 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %108 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ucl_chunk*, %struct.ucl_chunk** %14, align 8
  %111 = call i32 @LL_PREPEND(i32 %109, %struct.ucl_chunk* %110)
  %112 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %113 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %117 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @UCL_MAX_RECURSION, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %75
  %122 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %123 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %122, i32 0, i32 2
  %124 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %125 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  store i32 0, i32* %7, align 4
  br label %159

128:                                              ; preds = %75
  %129 = load i64, i64* %10, align 8
  %130 = icmp ugt i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  switch i32 %132, label %133 [
    i32 128, label %134
    i32 129, label %137
    i32 130, label %140
  ]

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %131, %133
  %135 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %136 = call i32 @ucl_state_machine(%struct.ucl_parser* %135)
  store i32 %136, i32* %7, align 4
  br label %159

137:                                              ; preds = %131
  %138 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %139 = call i32 @ucl_parse_msgpack(%struct.ucl_parser* %138)
  store i32 %139, i32* %7, align 4
  br label %159

140:                                              ; preds = %131
  %141 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %142 = call i32 @ucl_parse_csexp(%struct.ucl_parser* %141)
  store i32 %142, i32* %7, align 4
  br label %159

143:                                              ; preds = %128
  %144 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %145 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* @UCL_OBJECT, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32* @ucl_object_new_full(i32 %149, i32 %150)
  %152 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %153 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %152, i32 0, i32 3
  store i32* %151, i32** %153, align 8
  br label %154

154:                                              ; preds = %148, %143
  store i32 1, i32* %7, align 4
  br label %159

155:                                              ; preds = %28
  %156 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %157 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %156, i32 0, i32 2
  %158 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %154, %140, %137, %134, %121, %38, %24, %17
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @ucl_create_err(i32*, i8*, ...) #1

declare dso_local %struct.ucl_chunk* @UCL_ALLOC(i32) #1

declare dso_local i32 @LL_PREPEND(i32, %struct.ucl_chunk*) #1

declare dso_local i32 @ucl_state_machine(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_parse_msgpack(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_parse_csexp(%struct.ucl_parser*) #1

declare dso_local i32* @ucl_object_new_full(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
