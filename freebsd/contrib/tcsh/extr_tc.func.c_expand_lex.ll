; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_expand_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_expand_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i64 }
%struct.wordent = type { i8*, %struct.wordent*, %struct.wordent* }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 8
@QUOTE = common dso_local global i8 0, align 1
@TRIM = common dso_local global i8 0, align 1
@HIST = common dso_local global i8 0, align 1
@INVALID_BYTE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expand_lex(%struct.wordent* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Strbuf, align 8
  %9 = alloca %struct.wordent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.Strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 8, i1 false)
  store i8 0, i8* %11, align 1
  %14 = load %struct.wordent*, %struct.wordent** %5, align 8
  %15 = icmp ne %struct.wordent* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.wordent*, %struct.wordent** %5, align 8
  %18 = getelementptr inbounds %struct.wordent, %struct.wordent* %17, i32 0, i32 1
  %19 = load %struct.wordent*, %struct.wordent** %18, align 8
  store %struct.wordent* %19, %struct.wordent** %9, align 8
  %20 = load %struct.wordent*, %struct.wordent** %5, align 8
  %21 = icmp eq %struct.wordent* %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.wordent*, %struct.wordent** %9, align 8
  %24 = load %struct.wordent*, %struct.wordent** %5, align 8
  %25 = getelementptr inbounds %struct.wordent, %struct.wordent* %24, i32 0, i32 2
  %26 = load %struct.wordent*, %struct.wordent** %25, align 8
  store %struct.wordent* %26, %struct.wordent** %5, align 8
  %27 = icmp eq %struct.wordent* %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16, %3
  %29 = call i8* @Strbuf_finish(%struct.Strbuf* %8)
  store i8* %29, i8** %4, align 8
  br label %133

30:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %120, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %111

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %111

39:                                               ; preds = %35
  %40 = load %struct.wordent*, %struct.wordent** %9, align 8
  %41 = getelementptr inbounds %struct.wordent, %struct.wordent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %106, %39
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %109

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @QUOTE, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %47
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* @TRIM, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = load i8, i8* @HIST, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i8, i8* @HIST, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %65, %55
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @TRIM, align 1
  %74 = sext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i8, i8* %11, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 92
  br i1 %80, label %93, label %81

81:                                               ; preds = %77, %69
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @TRIM, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp eq i32 %87, 34
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i8, i8* %11, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 92
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %77, %65
  %94 = call i32 @Strbuf_append1(%struct.Strbuf* %8, i8 signext 92)
  br label %95

95:                                               ; preds = %93, %89, %81, %47
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @TRIM, align 1
  %100 = sext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = trunc i32 %101 to i8
  %103 = call i32 @Strbuf_append1(%struct.Strbuf* %8, i8 signext %102)
  %104 = load i8*, i8** %10, align 8
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %11, align 1
  br label %106

106:                                              ; preds = %95
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %10, align 8
  br label %43

109:                                              ; preds = %43
  %110 = call i32 @Strbuf_append1(%struct.Strbuf* %8, i8 signext 32)
  br label %111

111:                                              ; preds = %109, %35, %31
  %112 = load %struct.wordent*, %struct.wordent** %9, align 8
  %113 = getelementptr inbounds %struct.wordent, %struct.wordent* %112, i32 0, i32 1
  %114 = load %struct.wordent*, %struct.wordent** %113, align 8
  store %struct.wordent* %114, %struct.wordent** %9, align 8
  %115 = load %struct.wordent*, %struct.wordent** %9, align 8
  %116 = load %struct.wordent*, %struct.wordent** %5, align 8
  %117 = icmp eq %struct.wordent* %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %123

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %31

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %8, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %8, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %127, %123
  %132 = call i8* @Strbuf_finish(%struct.Strbuf* %8)
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %131, %28
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @Strbuf_finish(%struct.Strbuf*) #2

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
