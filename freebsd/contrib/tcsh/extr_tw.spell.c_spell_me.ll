; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.spell.c_spell_me.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.spell.c_spell_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i8*, i64 }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 8
@Strbuf_cleanup = common dso_local global i32 0, align 4
@SPELL = common dso_local global i32 0, align 4
@TW_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spell_me(%struct.Strbuf* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Strbuf, align 8
  %11 = alloca %struct.Strbuf, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Strbuf* %0, %struct.Strbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = bitcast %struct.Strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.Strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 16, i1 false)
  %18 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %19 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* @Strbuf_cleanup, align 4
  %22 = call i32 @cleanup_push(%struct.Strbuf* %10, i32 %21)
  %23 = load i32, i32* @Strbuf_cleanup, align 4
  %24 = call i32 @cleanup_push(%struct.Strbuf* %11, i32 %23)
  br label %25

25:                                               ; preds = %133, %4
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i8*, i8** %12, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  %34 = load i8, i8* %32, align 1
  %35 = call i32 @Strbuf_append1(%struct.Strbuf* %11, i8 signext %34)
  store i32 1, i32* %14, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %12, align 8
  %50 = load i8, i8* %48, align 1
  %51 = call i32 @Strbuf_append1(%struct.Strbuf* %11, i8 signext %50)
  br label %52

52:                                               ; preds = %47, %41, %36
  %53 = call i32 @Strbuf_terminate(%struct.Strbuf* %11)
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %60 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %11, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @StrQcmp(i8* %61, i8* %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = call i32 @cleanup_ignore(%struct.Strbuf* %11)
  %68 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %69 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @xfree(i8* %70)
  %72 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %73 = bitcast %struct.Strbuf* %72 to i8*
  %74 = bitcast %struct.Strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = call i32 @cleanup_until(%struct.Strbuf* %10)
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %5, align 4
  br label %139

77:                                               ; preds = %52
  %78 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %11, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @Strbuf_append(%struct.Strbuf* %10, i8* %80)
  %82 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %100, %77
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 47
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %12, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ false, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %103

96:                                               ; preds = %94
  %97 = load i8*, i8** %12, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @Strbuf_append1(%struct.Strbuf* %10, i8 signext %98)
  br label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %12, align 8
  br label %84

103:                                              ; preds = %94
  %104 = call i32 @Strbuf_terminate(%struct.Strbuf* %10)
  %105 = load i32, i32* @SPELL, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @TW_COMMAND, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load i8*, i8** %12, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 47
  br i1 %116, label %117, label %119

117:                                              ; preds = %112, %109
  %118 = load i32, i32* @TW_COMMAND, align 4
  br label %121

119:                                              ; preds = %112, %103
  %120 = load i32, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @t_search(%struct.Strbuf* %10, i32 %105, i32 %122, i32 1, i8* %123, i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 4
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128, %121
  %132 = call i32 @cleanup_until(%struct.Strbuf* %10)
  store i32 -1, i32* %5, align 4
  br label %139

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = call i32 @Strbuf_append(%struct.Strbuf* %11, i8* %137)
  br label %25

139:                                              ; preds = %131, %58
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cleanup_push(%struct.Strbuf*, i32) #2

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #2

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #2

declare dso_local i64 @StrQcmp(i8*, i8*) #2

declare dso_local i32 @cleanup_ignore(%struct.Strbuf*) #2

declare dso_local i32 @xfree(i8*) #2

declare dso_local i32 @cleanup_until(%struct.Strbuf*) #2

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i8*) #2

declare dso_local i32 @t_search(%struct.Strbuf*, i32, i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
