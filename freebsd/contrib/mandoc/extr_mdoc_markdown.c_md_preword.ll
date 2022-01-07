; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_preword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_preword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@list_blocks = common dso_local global i64 0, align 8
@outflags = common dso_local global i32 0, align 4
@MD_sp = common dso_local global i32 0, align 4
@MD_br = common dso_local global i32 0, align 4
@MD_nl = common dso_local global i32 0, align 4
@escflags = common dso_local global i32 0, align 4
@ESC_EOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"zwnj\00", align 1
@ESC_BOL = common dso_local global i32 0, align 4
@outcount = common dso_local global i64 0, align 8
@MD_spc = common dso_local global i32 0, align 4
@MD_Bk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"&nbsp;\00", align 1
@stdout = common dso_local global i32 0, align 4
@ESC_FON = common dso_local global i32 0, align 4
@MD_spc_force = common dso_local global i32 0, align 4
@MD_nonl = common dso_local global i32 0, align 4
@MD_Sm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @md_preword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_preword() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @list_blocks, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = load i32, i32* @outflags, align 4
  %6 = load i32, i32* @MD_sp, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load i32, i32* @MD_sp, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @outflags, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @outflags, align 4
  %14 = load i32, i32* @MD_br, align 4
  %15 = load i32, i32* @outflags, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @outflags, align 4
  br label %17

17:                                               ; preds = %9, %4, %0
  %18 = load i32, i32* @outflags, align 4
  %19 = load i32, i32* @MD_sp, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @putchar(i8 signext 10)
  br label %46

24:                                               ; preds = %17
  %25 = load i32, i32* @outflags, align 4
  %26 = load i32, i32* @MD_br, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @putchar(i8 signext 32)
  %31 = call i32 @putchar(i8 signext 32)
  br label %45

32:                                               ; preds = %24
  %33 = load i32, i32* @outflags, align 4
  %34 = load i32, i32* @MD_nl, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @escflags, align 4
  %39 = load i32, i32* @ESC_EOL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @md_named(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37, %32
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* @outflags, align 4
  %48 = load i32, i32* @MD_nl, align 4
  %49 = load i32, i32* @MD_br, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MD_sp, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %47, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %46
  %56 = call i32 @putchar(i8 signext 10)
  %57 = call i8* @md_stack(i8 signext 0)
  store i8* %57, i8** %1, align 8
  br label %58

58:                                               ; preds = %74, %55
  %59 = load i8*, i8** %1, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i8*, i8** %1, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @putchar(i8 signext %65)
  %67 = load i8*, i8** %1, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 62
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = call i32 @putchar(i8 signext 32)
  br label %73

73:                                               ; preds = %71, %63
  br label %74

74:                                               ; preds = %73
  %75 = load i8*, i8** %1, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %1, align 8
  br label %58

77:                                               ; preds = %58
  %78 = load i32, i32* @MD_nl, align 4
  %79 = load i32, i32* @MD_br, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MD_sp, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* @outflags, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* @outflags, align 4
  %86 = load i32, i32* @ESC_BOL, align 4
  store i32 %86, i32* @escflags, align 4
  store i64 0, i64* @outcount, align 8
  br label %110

87:                                               ; preds = %46
  %88 = load i32, i32* @outflags, align 4
  %89 = load i32, i32* @MD_spc, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i32, i32* @outflags, align 4
  %94 = load i32, i32* @MD_Bk, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %102

100:                                              ; preds = %92
  %101 = call i32 @putchar(i8 signext 32)
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32, i32* @ESC_FON, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* @escflags, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* @escflags, align 4
  %107 = load i64, i64* @outcount, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* @outcount, align 8
  br label %109

109:                                              ; preds = %102, %87
  br label %110

110:                                              ; preds = %109, %77
  %111 = load i32, i32* @MD_spc_force, align 4
  %112 = load i32, i32* @MD_nonl, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* @outflags, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* @outflags, align 4
  %117 = load i32, i32* @outflags, align 4
  %118 = load i32, i32* @MD_Sm, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load i32, i32* @MD_spc, align 4
  %123 = load i32, i32* @outflags, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* @outflags, align 4
  br label %130

125:                                              ; preds = %110
  %126 = load i32, i32* @MD_spc, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* @outflags, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* @outflags, align 4
  br label %130

130:                                              ; preds = %125, %121
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @md_named(i8*) #1

declare dso_local i8* @md_stack(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
