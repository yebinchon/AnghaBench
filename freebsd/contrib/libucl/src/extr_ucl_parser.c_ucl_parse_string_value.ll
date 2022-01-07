; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_string_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_string_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_chunk = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*)* @ucl_parse_string_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_parse_string_value(%struct.ucl_parser* %0, %struct.ucl_chunk* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca %struct.ucl_chunk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [3 x [2 x i32]], align 16
  store %struct.ucl_parser* %0, %struct.ucl_parser** %5, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = bitcast [3 x [2 x i32]]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %13 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %137, %111, %80, %48, %4
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %18 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ult i8* %16, %19
  br i1 %20, label %21, label %141

21:                                               ; preds = %15
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 123
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 2
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 16
  br label %117

31:                                               ; preds = %21
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 125
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 2
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 2
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 2
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %49, i8* %50)
  br label %15

52:                                               ; preds = %36
  br label %116

53:                                               ; preds = %31
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 91
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 1
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %59, i64 0, i64 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %115

63:                                               ; preds = %53
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 93
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 1
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 1
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %73, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %10, i64 0, i64 1
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %81, i8* %82)
  br label %15

84:                                               ; preds = %68
  br label %114

85:                                               ; preds = %63
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 36
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32*, i32** %7, align 8
  store i32 1, i32* %91, align 4
  br label %113

92:                                               ; preds = %85
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 92
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i32*, i32** %8, align 8
  store i32 1, i32* %98, align 4
  %99 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %99, i8* %100)
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %104 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ult i8* %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %108, i8* %109)
  br label %111

111:                                              ; preds = %107, %97
  br label %15

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %90
  br label %114

114:                                              ; preds = %113, %84
  br label %115

115:                                              ; preds = %114, %58
  br label %116

116:                                              ; preds = %115, %52
  br label %117

117:                                              ; preds = %116, %26
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @ucl_lex_is_atom_end(i8 zeroext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %117
  %123 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %124 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 2
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = call i64 @ucl_lex_is_comment(i8 zeroext %130, i8 zeroext %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127, %117
  br label %141

137:                                              ; preds = %127, %122
  %138 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %138, i8* %139)
  br label %15

141:                                              ; preds = %136, %15
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #2

declare dso_local i64 @ucl_lex_is_atom_end(i8 zeroext) #2

declare dso_local i64 @ucl_lex_is_comment(i8 zeroext, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
