; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@STRrecognize_only_executables = common dso_local global i32 0, align 4
@STRedit = common dso_local global i32 0, align 4
@shvhed = common dso_local global i32 0, align 4
@STRhistchars = common dso_local global i32 0, align 4
@HIST = common dso_local global i8 0, align 1
@HISTSUB = common dso_local global i8 0, align 1
@STRignoreeof = common dso_local global i32 0, align 4
@numeof = common dso_local global i64 0, align 8
@STRpromptchars = common dso_local global i32 0, align 4
@tcsh = common dso_local global i64 0, align 8
@PRCH = common dso_local global i8 0, align 1
@PRCHROOT = common dso_local global i8 0, align 1
@STRnoclobber = common dso_local global i32 0, align 4
@no_clobber = common dso_local global i64 0, align 8
@STRhistlit = common dso_local global i32 0, align 4
@HistLit = common dso_local global i64 0, align 8
@STRloginsh = common dso_local global i32 0, align 4
@loginsh = common dso_local global i64 0, align 8
@STRanyerror = common dso_local global i32 0, align 4
@anyerror = common dso_local global i64 0, align 8
@STRwordchars = common dso_local global i32 0, align 4
@STR_WORD_CHARS = common dso_local global i32 0, align 4
@word_chars = common dso_local global i32 0, align 4
@editing = common dso_local global i64 0, align 8
@STRbackslash_quote = common dso_local global i32 0, align 4
@bslash_quote = common dso_local global i64 0, align 8
@STRcompat_expr = common dso_local global i32 0, align 4
@compat_expr = common dso_local global i64 0, align 8
@STRsymlinks = common dso_local global i32 0, align 4
@symlinks = common dso_local global i64 0, align 8
@STRimplicitcd = common dso_local global i32 0, align 4
@implicit_cd = common dso_local global i64 0, align 8
@STRcdtohome = common dso_local global i32 0, align 4
@cdtohome = common dso_local global i64 0, align 8
@STRkillring = common dso_local global i32 0, align 4
@noediting = common dso_local global i64 0, align 8
@STRvimode = common dso_local global i32 0, align 4
@VImode = common dso_local global i64 0, align 8
@STRhistory = common dso_local global i32 0, align 4
@STRcolor = common dso_local global i32 0, align 4
@STRfilec = common dso_local global i32 0, align 4
@filec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unset(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %7 = load %struct.command*, %struct.command** %4, align 8
  %8 = call i32 @USE(%struct.command* %7)
  %9 = load i32, i32* @STRrecognize_only_executables, align 4
  %10 = call i32* @adrof(i32 %9)
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @STRedit, align 4
  %14 = call i32* @adrof(i32 %13)
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32**, i32*** %3, align 8
  %18 = call i32 @unset1(i32** %17, i32* @shvhed)
  %19 = load i32, i32* @STRhistchars, align 4
  %20 = call i32* @adrof(i32 %19)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8 33, i8* @HIST, align 1
  store i8 94, i8* @HISTSUB, align 1
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @STRignoreeof, align 4
  %25 = call i32* @adrof(i32 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, i64* @numeof, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* @STRpromptchars, align 4
  %30 = call i32* @adrof(i32 %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* @tcsh, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 62, i32 37
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* @PRCH, align 1
  store i8 35, i8* @PRCHROOT, align 1
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i32, i32* @STRnoclobber, align 4
  %40 = call i32* @adrof(i32 %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* @no_clobber, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* @STRhistlit, align 4
  %45 = call i32* @adrof(i32 %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 0, i64* @HistLit, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* @STRloginsh, align 4
  %50 = call i32* @adrof(i32 %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 0, i64* @loginsh, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* @STRanyerror, align 4
  %55 = call i32* @adrof(i32 %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i64 0, i64* @anyerror, align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* @STRwordchars, align 4
  %60 = call i32* @adrof(i32 %59)
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @STR_WORD_CHARS, align 4
  store i32 %63, i32* @word_chars, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* @STRedit, align 4
  %66 = call i32* @adrof(i32 %65)
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i64 0, i64* @editing, align 8
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, i32* @STRbackslash_quote, align 4
  %71 = call i32* @adrof(i32 %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i64 0, i64* @bslash_quote, align 8
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* @STRcompat_expr, align 4
  %76 = call i32* @adrof(i32 %75)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i64 0, i64* @compat_expr, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* @STRsymlinks, align 4
  %81 = call i32* @adrof(i32 %80)
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i64 0, i64* @symlinks, align 8
  br label %84

84:                                               ; preds = %83, %79
  %85 = load i32, i32* @STRimplicitcd, align 4
  %86 = call i32* @adrof(i32 %85)
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i64 0, i64* @implicit_cd, align 8
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, i32* @STRcdtohome, align 4
  %91 = call i32* @adrof(i32 %90)
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i64 0, i64* @cdtohome, align 8
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, i32* @STRkillring, align 4
  %96 = call i32* @adrof(i32 %95)
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @SetKillRing(i32 0)
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i64, i64* @noediting, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @STRedit, align 4
  %108 = call i32* @adrof(i32 %107)
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i64 0, i64* @noediting, align 8
  br label %111

111:                                              ; preds = %110, %106, %103, %100
  %112 = load i32, i32* @STRvimode, align 4
  %113 = call i32* @adrof(i32 %112)
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i64 0, i64* @VImode, align 8
  br label %116

116:                                              ; preds = %115, %111
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* @STRrecognize_only_executables, align 4
  %121 = call i32* @adrof(i32 %120)
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (...) @tw_cmd_free()
  br label %125

125:                                              ; preds = %123, %119, %116
  %126 = load i32, i32* @STRhistory, align 4
  %127 = call i32* @adrof(i32 %126)
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 @sethistory(i32 0)
  br label %131

131:                                              ; preds = %129, %125
  %132 = call i32 (...) @update_wordchars()
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32* @adrof(i32) #1

declare dso_local i32 @unset1(i32**, i32*) #1

declare dso_local i32 @SetKillRing(i32) #1

declare dso_local i32 @tw_cmd_free(...) #1

declare dso_local i32 @sethistory(i32) #1

declare dso_local i32 @update_wordchars(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
