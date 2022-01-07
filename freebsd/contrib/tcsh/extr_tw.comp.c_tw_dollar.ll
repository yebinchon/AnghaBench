; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_dollar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_dollar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 4
@ERR_COMPMIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i64, i8**, i8, i8*)* @tw_dollar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tw_dollar(i8* %0, i8** %1, i64 %2, i8** %3, i8 signext %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca %struct.Strbuf, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8 %4, i8* %12, align 1
  store i8* %5, i8** %13, align 8
  %19 = bitcast %struct.Strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 4, i1 false)
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %16, align 8
  br label %21

21:                                               ; preds = %126, %6
  %22 = load i8*, i8** %16, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i8*, i8** %16, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* %12, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br label %33

33:                                               ; preds = %26, %21
  %34 = phi i1 [ false, %21 ], [ %32, %26 ]
  br i1 %34, label %35, label %127

35:                                               ; preds = %33
  %36 = load i8*, i8** %16, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 36
  br i1 %40, label %41, label %120

41:                                               ; preds = %35
  %42 = load i8*, i8** %16, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 58
  br i1 %46, label %47, label %120

47:                                               ; preds = %41
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 3, i32 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %48, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @Isdigit(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %120

61:                                               ; preds = %47
  store i32 0, i32* %18, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %16, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 45
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  store i32 1, i32* %18, align 4
  %69 = load i8*, i8** %16, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %16, align 8
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %16, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 48
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %83, %71
  %78 = load i8*, i8** %16, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @Isdigit(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %17, align 4
  %85 = mul nsw i32 10, %84
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %16, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %85, %89
  %91 = sub nsw i32 %90, 48
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %17, align 4
  br label %77

94:                                               ; preds = %77
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %98, %100
  %102 = sub i64 %101, 1
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %97, %94
  %105 = load i32, i32* %17, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %10, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i8**, i8*** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @Strbuf_append(%struct.Strbuf* %14, i8* %117)
  br label %119

119:                                              ; preds = %112, %107, %104
  br label %126

120:                                              ; preds = %47, %41, %35
  %121 = load i8*, i8** %16, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %16, align 8
  %123 = load i8, i8* %121, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 @Strbuf_append1(%struct.Strbuf* %14, i32 %124)
  br label %126

126:                                              ; preds = %120, %119
  br label %21

127:                                              ; preds = %33
  %128 = call i8* @Strbuf_finish(%struct.Strbuf* %14)
  store i8* %128, i8** %15, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %16, align 8
  %131 = load i8, i8* %129, align 1
  %132 = sext i8 %131 to i32
  %133 = load i8, i8* %12, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load i8*, i8** %15, align 8
  %138 = load i8**, i8*** %11, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i8*, i8** %16, align 8
  store i8* %139, i8** %7, align 8
  br label %152

140:                                              ; preds = %127
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @xfree(i8* %141)
  %143 = load i32, i32* @ERR_COMPMIS, align 4
  %144 = load i8, i8* %12, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8*, i8** %13, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @short2str(i8* %147)
  %149 = call i32 @stderror(i32 %143, i32 %145, i8* %146, i32 %148)
  %150 = load i8*, i8** %16, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 -1
  store i8* %151, i8** %16, align 8
  store i8* %151, i8** %7, align 8
  br label %152

152:                                              ; preds = %140, %136
  %153 = load i8*, i8** %7, align 8
  ret i8* %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @Isdigit(i8 signext) #2

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i8*) #2

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i32) #2

declare dso_local i8* @Strbuf_finish(%struct.Strbuf*) #2

declare dso_local i32 @xfree(i8*) #2

declare dso_local i32 @stderror(i32, i32, i8*, i32) #2

declare dso_local i32 @short2str(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
