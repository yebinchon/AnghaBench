; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_evalav.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_evalav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { %struct.wordent*, %struct.wordent*, i32 }
%struct.command = type { %struct.command*, %struct.command*, i32 }

@STRstatus = common dso_local global i32 0, align 4
@STR0 = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@lex_cleanup = common dso_local global i32 0, align 4
@syntax_cleanup = common dso_local global i32 0, align 4
@seterr = common dso_local global i64 0, align 8
@ERR_OLD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**)* @evalav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalav(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.wordent, align 8
  %4 = alloca %struct.wordent*, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca %struct.wordent*, align 8
  %7 = alloca %struct.wordent*, align 8
  store i32** %0, i32*** %2, align 8
  store %struct.wordent* %3, %struct.wordent** %4, align 8
  %8 = load %struct.wordent*, %struct.wordent** %4, align 8
  store %struct.wordent* %8, %struct.wordent** %6, align 8
  %9 = load i32, i32* @STRstatus, align 4
  %10 = load i32, i32* @STR0, align 4
  %11 = load i32, i32* @VAR_READWRITE, align 4
  %12 = call i32 @setcopy(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.wordent*, %struct.wordent** %4, align 8
  %14 = call i32 @initlex(%struct.wordent* %13)
  br label %15

15:                                               ; preds = %19, %1
  %16 = load i32**, i32*** %2, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = call %struct.wordent* @xcalloc(i32 1, i32 24)
  store %struct.wordent* %20, %struct.wordent** %7, align 8
  %21 = load %struct.wordent*, %struct.wordent** %6, align 8
  %22 = load %struct.wordent*, %struct.wordent** %7, align 8
  %23 = getelementptr inbounds %struct.wordent, %struct.wordent* %22, i32 0, i32 1
  store %struct.wordent* %21, %struct.wordent** %23, align 8
  %24 = load %struct.wordent*, %struct.wordent** %4, align 8
  %25 = load %struct.wordent*, %struct.wordent** %7, align 8
  %26 = getelementptr inbounds %struct.wordent, %struct.wordent* %25, i32 0, i32 0
  store %struct.wordent* %24, %struct.wordent** %26, align 8
  %27 = load %struct.wordent*, %struct.wordent** %7, align 8
  %28 = load %struct.wordent*, %struct.wordent** %6, align 8
  %29 = getelementptr inbounds %struct.wordent, %struct.wordent* %28, i32 0, i32 0
  store %struct.wordent* %27, %struct.wordent** %29, align 8
  %30 = load %struct.wordent*, %struct.wordent** %7, align 8
  store %struct.wordent* %30, %struct.wordent** %6, align 8
  %31 = load i32**, i32*** %2, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i32 1
  store i32** %32, i32*** %2, align 8
  %33 = load i32*, i32** %31, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = call i32 @Strsave(i32 %34)
  %36 = load %struct.wordent*, %struct.wordent** %6, align 8
  %37 = getelementptr inbounds %struct.wordent, %struct.wordent* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.wordent*, %struct.wordent** %6, align 8
  %40 = load %struct.wordent*, %struct.wordent** %4, align 8
  %41 = getelementptr inbounds %struct.wordent, %struct.wordent* %40, i32 0, i32 1
  store %struct.wordent* %39, %struct.wordent** %41, align 8
  %42 = load i32, i32* @lex_cleanup, align 4
  %43 = call i32 @cleanup_push(%struct.wordent* %3, i32 %42)
  %44 = call i32 @alias(%struct.wordent* %3)
  %45 = getelementptr inbounds %struct.wordent, %struct.wordent* %3, i32 0, i32 0
  %46 = load %struct.wordent*, %struct.wordent** %45, align 8
  %47 = call %struct.wordent* @syntax(%struct.wordent* %46, %struct.wordent* %3, i32 0)
  %48 = bitcast %struct.wordent* %47 to %struct.command*
  store %struct.command* %48, %struct.command** %5, align 8
  %49 = load %struct.command*, %struct.command** %5, align 8
  %50 = bitcast %struct.command* %49 to %struct.wordent*
  %51 = load i32, i32* @syntax_cleanup, align 4
  %52 = call i32 @cleanup_push(%struct.wordent* %50, i32 %51)
  %53 = load i64, i64* @seterr, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @ERR_OLD, align 4
  %57 = call i32 @stderror(i32 %56)
  br label %58

58:                                               ; preds = %55, %38
  %59 = load %struct.command*, %struct.command** %5, align 8
  %60 = bitcast %struct.command* %59 to %struct.wordent*
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @execute(%struct.wordent* %60, i32 -1, i32* null, i32* null, i32 %61)
  %63 = call i32 @cleanup_until(%struct.wordent* %3)
  ret void
}

declare dso_local i32 @setcopy(i32, i32, i32) #1

declare dso_local i32 @initlex(%struct.wordent*) #1

declare dso_local %struct.wordent* @xcalloc(i32, i32) #1

declare dso_local i32 @Strsave(i32) #1

declare dso_local i32 @cleanup_push(%struct.wordent*, i32) #1

declare dso_local i32 @alias(%struct.wordent*) #1

declare dso_local %struct.wordent* @syntax(%struct.wordent*, %struct.wordent*, i32) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @execute(%struct.wordent*, i32, i32*, i32*, i32) #1

declare dso_local i32 @cleanup_until(%struct.wordent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
