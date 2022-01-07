; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_Dpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }

@DODOL = common dso_local global i32 0, align 4
@DEOF = common dso_local global i8 0, align 1
@QUOTE = common dso_local global i8 0, align 1
@_SP = common dso_local global i32 0, align 4
@_NL = common dso_local global i32 0, align 4
@_QF = common dso_local global i32 0, align 4
@_QB = common dso_local global i32 0, align 4
@QUOTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Strbuf*)* @Dpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Dpack(%struct.Strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Strbuf*, align 8
  %4 = alloca i8, align 1
  store %struct.Strbuf* %0, %struct.Strbuf** %3, align 8
  br label %5

5:                                                ; preds = %63, %1
  %6 = load i32, i32* @DODOL, align 4
  %7 = call signext i8 @DgetC(i32 %6)
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 92
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = call signext i8 @DgetC(i32 0)
  store i8 %12, i8* %4, align 1
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @DEOF, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i8, i8* %4, align 1
  %20 = call i32 @unDredc(i8 signext %19)
  store i32 1, i32* %2, align 4
  br label %68

21:                                               ; preds = %11
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8 32, i8* %4, align 1
  br label %33

26:                                               ; preds = %21
  %27 = load i8, i8* @QUOTE, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %4, align 1
  br label %33

33:                                               ; preds = %26, %25
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i8, i8* %4, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @DEOF, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8, i8* %4, align 1
  %42 = call i32 @unDredc(i8 signext %41)
  store i32 1, i32* %2, align 4
  br label %68

43:                                               ; preds = %34
  %44 = load i8, i8* %4, align 1
  %45 = load i32, i32* @_SP, align 4
  %46 = load i32, i32* @_NL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @_QF, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @_QB, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @cmap(i8 signext %44, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load i8, i8* %4, align 1
  %56 = call i32 @unDgetC(i8 signext %55)
  %57 = load i8, i8* %4, align 1
  %58 = load i32, i32* @QUOTES, align 4
  %59 = call i64 @cmap(i8 signext %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %68

62:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %68

63:                                               ; preds = %43
  %64 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %65 = load i8, i8* %4, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @Strbuf_append1(%struct.Strbuf* %64, i32 %66)
  br label %5

68:                                               ; preds = %62, %61, %40, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local signext i8 @DgetC(i32) #1

declare dso_local i32 @unDredc(i8 signext) #1

declare dso_local i64 @cmap(i8 signext, i32) #1

declare dso_local i32 @unDgetC(i8 signext) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
