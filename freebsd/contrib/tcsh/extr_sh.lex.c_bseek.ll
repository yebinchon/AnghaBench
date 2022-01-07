; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_bseek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_bseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Ain = type { i64, i32, i32, i64 }

@aret = common dso_local global i64 0, align 8
@evalvec = common dso_local global i32 0, align 4
@evalp = common dso_local global i32 0, align 4
@alvec = common dso_local global i32 0, align 4
@alvecp = common dso_local global i32 0, align 4
@fseekp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Bad seek type %d\0A\00", align 1
@cantell = common dso_local global i32 0, align 4
@fbobp = common dso_local global i64 0, align 8
@fclens = common dso_local global i64* null, align 8
@feobp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bseek(%struct.Ain* %0) #0 {
  %2 = alloca %struct.Ain*, align 8
  store %struct.Ain* %0, %struct.Ain** %2, align 8
  %3 = load %struct.Ain*, %struct.Ain** %2, align 8
  %4 = getelementptr inbounds %struct.Ain, %struct.Ain* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* @aret, align 8
  switch i64 %5, label %24 [
    i64 129, label %6
    i64 130, label %13
    i64 128, label %20
  ]

6:                                                ; preds = %1
  %7 = load %struct.Ain*, %struct.Ain** %2, align 8
  %8 = getelementptr inbounds %struct.Ain, %struct.Ain* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @evalvec, align 4
  %10 = load %struct.Ain*, %struct.Ain** %2, align 8
  %11 = getelementptr inbounds %struct.Ain, %struct.Ain* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* @evalp, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.Ain*, %struct.Ain** %2, align 8
  %15 = getelementptr inbounds %struct.Ain, %struct.Ain* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @alvec, align 4
  %17 = load %struct.Ain*, %struct.Ain** %2, align 8
  %18 = getelementptr inbounds %struct.Ain, %struct.Ain* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* @alvecp, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.Ain*, %struct.Ain** %2, align 8
  %22 = getelementptr inbounds %struct.Ain, %struct.Ain* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* @fseekp, align 8
  br label %29

24:                                               ; preds = %1
  %25 = call i32 @CGETS(i32 16, i32 7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @aret, align 8
  %27 = call i32 (i32, i64, ...) @xprintf(i32 %25, i64 %26)
  %28 = call i32 (...) @abort() #3
  unreachable

29:                                               ; preds = %20, %13, %6
  ret void
}

declare dso_local i32 @xprintf(i32, i64, ...) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
