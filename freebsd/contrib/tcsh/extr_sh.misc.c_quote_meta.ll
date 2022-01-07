; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_quote_meta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_quote_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i8*, i64 }

@_META = common dso_local global i32 0, align 4
@_DOL = common dso_local global i32 0, align 4
@_QF = common dso_local global i32 0, align 4
@_QB = common dso_local global i32 0, align 4
@_ESC = common dso_local global i32 0, align 4
@_GLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_meta(%struct.Strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.Strbuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %6 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = load i32, i32* @_META, align 4
  %16 = load i32, i32* @_DOL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @_QF, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @_QB, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @_ESC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @_GLOB, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @cmap(i8 signext %14, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %12
  %29 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %30 = call i32 @Strbuf_append1(%struct.Strbuf* %29, i8 signext 92)
  br label %31

31:                                               ; preds = %28, %12
  %32 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %33, align 1
  %36 = call i32 @Strbuf_append1(%struct.Strbuf* %32, i8 signext %35)
  br label %7

37:                                               ; preds = %7
  %38 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %39 = call i32 @Strbuf_terminate(%struct.Strbuf* %38)
  %40 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %41 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  ret i8* %42
}

declare dso_local i64 @cmap(i8 signext, i32) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
