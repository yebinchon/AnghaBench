; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_dollar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_dollar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 4
@QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dollar(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Strbuf, align 4
  store i8* %0, i8** %3, align 8
  %5 = bitcast %struct.Strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 4, i1 false)
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 36
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @Strbuf_append1(%struct.Strbuf* %4, i32 %19)
  br label %30

21:                                               ; preds = %10
  %22 = load i32, i32* @QUOTE, align 4
  %23 = call i64 @expdollar(%struct.Strbuf* %4, i8** %3, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xfree(i32 %27)
  store i8* null, i8** %2, align 8
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %15
  br label %6

31:                                               ; preds = %6
  %32 = call i8* @Strbuf_finish(%struct.Strbuf* %4)
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i32) #2

declare dso_local i64 @expdollar(%struct.Strbuf*, i8**, i32) #2

declare dso_local i32 @xfree(i32) #2

declare dso_local i8* @Strbuf_finish(%struct.Strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
