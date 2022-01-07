; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.wordent = type { i8*, %struct.wordent*, %struct.wordent* }

@enterhist = common dso_local global i32 0, align 4
@histvalid = common dso_local global i32 0, align 4
@histline = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@postcmd_active = common dso_local global i32 0, align 4
@lineloc = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i8* null, align 8
@hadhist = common dso_local global i32 0, align 4
@HISTSUB = common dso_local global i64 0, align 8
@intty = common dso_local global i64 0, align 8
@lex_cleanup = common dso_local global i32 0, align 4
@ERR_LTOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lex(%struct.wordent* %0) #0 {
  %2 = alloca %struct.wordent*, align 8
  %3 = alloca %struct.wordent*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wordent*, align 8
  store %struct.wordent* %0, %struct.wordent** %2, align 8
  %8 = load i32, i32* @enterhist, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* @histvalid, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @histline, i32 0, i32 0), align 8
  %9 = load i32, i32* @postcmd_active, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @btell(i32* @lineloc)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.wordent*, %struct.wordent** %2, align 8
  %15 = load %struct.wordent*, %struct.wordent** %2, align 8
  %16 = getelementptr inbounds %struct.wordent, %struct.wordent* %15, i32 0, i32 1
  store %struct.wordent* %14, %struct.wordent** %16, align 8
  %17 = load %struct.wordent*, %struct.wordent** %2, align 8
  %18 = getelementptr inbounds %struct.wordent, %struct.wordent* %17, i32 0, i32 2
  store %struct.wordent* %14, %struct.wordent** %18, align 8
  %19 = load i8*, i8** @STRNULL, align 8
  %20 = load %struct.wordent*, %struct.wordent** %2, align 8
  %21 = getelementptr inbounds %struct.wordent, %struct.wordent* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  store i32 0, i32* @hadhist, align 4
  br label %22

22:                                               ; preds = %32, %13
  %23 = call signext i8 @readc(i32 0)
  store i8 %23, i8* %4, align 1
  br label %24

24:                                               ; preds = %22
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  br i1 %33, label %22, label %34

34:                                               ; preds = %32
  %35 = load i8, i8* %4, align 1
  %36 = sext i8 %35 to i32
  %37 = load i64, i64* @HISTSUB, align 8
  %38 = trunc i64 %37 to i8
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i64, i64* @intty, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8, i8* %4, align 1
  %46 = call i32 @getexcl(i8 signext %45)
  br label %50

47:                                               ; preds = %41, %34
  %48 = load i8, i8* %4, align 1
  %49 = call i32 @unreadc(i8 signext %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.wordent*, %struct.wordent** %2, align 8
  %52 = load i32, i32* @lex_cleanup, align 4
  %53 = call i32 @cleanup_push(%struct.wordent* %51, i32 %52)
  %54 = load %struct.wordent*, %struct.wordent** %2, align 8
  store %struct.wordent* %54, %struct.wordent** %3, align 8
  br label %55

55:                                               ; preds = %86, %50
  %56 = call %struct.wordent* @xmalloc(i32 24)
  store %struct.wordent* %56, %struct.wordent** %7, align 8
  %57 = load %struct.wordent*, %struct.wordent** %7, align 8
  %58 = getelementptr inbounds %struct.wordent, %struct.wordent* %57, i32 0, i32 0
  store i8* null, i8** %58, align 8
  %59 = load %struct.wordent*, %struct.wordent** %3, align 8
  %60 = load %struct.wordent*, %struct.wordent** %7, align 8
  %61 = getelementptr inbounds %struct.wordent, %struct.wordent* %60, i32 0, i32 1
  store %struct.wordent* %59, %struct.wordent** %61, align 8
  %62 = load %struct.wordent*, %struct.wordent** %2, align 8
  %63 = load %struct.wordent*, %struct.wordent** %7, align 8
  %64 = getelementptr inbounds %struct.wordent, %struct.wordent* %63, i32 0, i32 2
  store %struct.wordent* %62, %struct.wordent** %64, align 8
  %65 = load %struct.wordent*, %struct.wordent** %7, align 8
  %66 = load %struct.wordent*, %struct.wordent** %3, align 8
  %67 = getelementptr inbounds %struct.wordent, %struct.wordent* %66, i32 0, i32 2
  store %struct.wordent* %65, %struct.wordent** %67, align 8
  %68 = load %struct.wordent*, %struct.wordent** %7, align 8
  %69 = load %struct.wordent*, %struct.wordent** %2, align 8
  %70 = getelementptr inbounds %struct.wordent, %struct.wordent* %69, i32 0, i32 1
  store %struct.wordent* %68, %struct.wordent** %70, align 8
  %71 = load %struct.wordent*, %struct.wordent** %7, align 8
  store %struct.wordent* %71, %struct.wordent** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i8* @word(i32 %72)
  %74 = load %struct.wordent*, %struct.wordent** %3, align 8
  %75 = getelementptr inbounds %struct.wordent, %struct.wordent* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  store i32 0, i32* %5, align 4
  %76 = load i32, i32* @enterhist, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %55
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = icmp sgt i32 %79, 10240
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @ERR_LTOOLONG, align 4
  %84 = call i32 @stderror(i32 %83)
  br label %85

85:                                               ; preds = %82, %78, %55
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.wordent*, %struct.wordent** %3, align 8
  %88 = getelementptr inbounds %struct.wordent, %struct.wordent* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %55, label %94

94:                                               ; preds = %86
  %95 = load %struct.wordent*, %struct.wordent** %2, align 8
  %96 = call i32 @cleanup_ignore(%struct.wordent* %95)
  %97 = load %struct.wordent*, %struct.wordent** %2, align 8
  %98 = call i32 @cleanup_until(%struct.wordent* %97)
  %99 = call i32 @Strbuf_terminate(%struct.TYPE_3__* @histline)
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @histline, i32 0, i32 0), align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @histline, i32 0, i32 1), align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @histline, i32 0, i32 0), align 8
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @histline, i32 0, i32 1), align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @histline, i32 0, i32 0), align 8
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 0, i8* %116, align 1
  br label %117

117:                                              ; preds = %111, %102, %94
  store i32 1, i32* @histvalid, align 4
  %118 = load i32, i32* @hadhist, align 4
  ret i32 %118
}

declare dso_local i32 @btell(i32*) #1

declare dso_local signext i8 @readc(i32) #1

declare dso_local i32 @getexcl(i8 signext) #1

declare dso_local i32 @unreadc(i8 signext) #1

declare dso_local i32 @cleanup_push(%struct.wordent*, i32) #1

declare dso_local %struct.wordent* @xmalloc(i32) #1

declare dso_local i8* @word(i32) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @cleanup_ignore(%struct.wordent*) #1

declare dso_local i32 @cleanup_until(%struct.wordent*) #1

declare dso_local i32 @Strbuf_terminate(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
