; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_fixDolMod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_fixDolMod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dolmcnt = common dso_local global i32 0, align 4
@dol_flag_a = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@dolmod = common dso_local global i32 0, align 4
@DEOF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@ERR_BADSUBST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"luhtrqxes\00", align 1
@ERR_BADMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fixDolMod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixDolMod() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = call signext i8 @DgetC(i32 0)
  store i8 %4, i8* %1, align 1
  %5 = load i8, i8* %1, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 58
  br i1 %7, label %8, label %143

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %136, %8
  %10 = call signext i8 @DgetC(i32 0)
  store i8 %10, i8* %1, align 1
  store i32 1, i32* @dolmcnt, align 4
  store i32 0, i32* @dol_flag_a, align 4
  %11 = load i8, i8* %1, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 103
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i8, i8* %1, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 97
  br i1 %17, label %18, label %27

18:                                               ; preds = %14, %9
  %19 = load i8, i8* %1, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 103
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @INT_MAX, align 4
  store i32 %23, i32* @dolmcnt, align 4
  br label %25

24:                                               ; preds = %18
  store i32 1, i32* @dol_flag_a, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = call signext i8 @DgetC(i32 0)
  store i8 %26, i8* %1, align 1
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i8, i8* %1, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 103
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @dolmcnt, align 4
  %33 = load i32, i32* @INT_MAX, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %31, %27
  %36 = load i8, i8* %1, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 97
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32, i32* @dol_flag_a, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39, %31
  %43 = load i8, i8* %1, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 103
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @INT_MAX, align 4
  store i32 %47, i32* @dolmcnt, align 4
  br label %49

48:                                               ; preds = %42
  store i32 1, i32* @dol_flag_a, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = call signext i8 @DgetC(i32 0)
  store i8 %50, i8* %1, align 1
  br label %51

51:                                               ; preds = %49, %39, %35
  %52 = load i8, i8* %1, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 115
  br i1 %54, label %55, label %117

55:                                               ; preds = %51
  store i32 2, i32* %2, align 4
  %56 = call signext i8 @DgetC(i32 0)
  store i8 %56, i8* %3, align 1
  %57 = load i8, i8* %1, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @Strbuf_append1(i32* @dolmod, i32 %58)
  %60 = load i8, i8* %3, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 @Strbuf_append1(i32* @dolmod, i32 %61)
  %63 = load i8, i8* %3, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @DEOF, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %83, label %68

68:                                               ; preds = %55
  %69 = load i8, i8* %3, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i8, i8* %3, align 1
  %73 = call i64 @letter(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i8, i8* %3, align 1
  %77 = call i64 @Isdigit(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i8, i8* %3, align 1
  %81 = call i64 @any(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %75, %71, %68, %55
  %84 = load i32, i32* @ERR_BADSUBST, align 4
  %85 = call i32 @seterror(i32 %84)
  br label %140

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %109, %86
  %88 = call signext i8 @DgetC(i32 0)
  store i8 %88, i8* %1, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @DEOF, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load i8, i8* %1, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 @Strbuf_append1(i32* @dolmod, i32 %95)
  %97 = load i8, i8* %1, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %3, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %93
  %106 = load i32, i32* %2, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %110

109:                                              ; preds = %105
  br label %87

110:                                              ; preds = %108, %87
  %111 = load i32, i32* %2, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @ERR_BADSUBST, align 4
  %115 = call i32 @seterror(i32 %114)
  br label %140

116:                                              ; preds = %110
  br label %136

117:                                              ; preds = %51
  %118 = load i8, i8* %1, align 1
  %119 = call i64 @any(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 signext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @ERR_BADMOD, align 4
  %123 = load i8, i8* %1, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 @stderror(i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i8, i8* %1, align 1
  %128 = sext i8 %127 to i32
  %129 = call i32 @Strbuf_append1(i32* @dolmod, i32 %128)
  %130 = load i8, i8* %1, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 113
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @INT_MAX, align 4
  store i32 %134, i32* @dolmcnt, align 4
  br label %135

135:                                              ; preds = %133, %126
  br label %136

136:                                              ; preds = %135, %116
  %137 = call signext i8 @DgetC(i32 0)
  store i8 %137, i8* %1, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 58
  br i1 %139, label %9, label %140

140:                                              ; preds = %136, %113, %83
  %141 = load i8, i8* %1, align 1
  %142 = call i32 @unDredc(i8 signext %141)
  br label %146

143:                                              ; preds = %0
  %144 = load i8, i8* %1, align 1
  %145 = call i32 @unDredc(i8 signext %144)
  br label %146

146:                                              ; preds = %143, %140
  ret void
}

declare dso_local signext i8 @DgetC(i32) #1

declare dso_local i32 @Strbuf_append1(i32*, i32) #1

declare dso_local i64 @letter(i8 signext) #1

declare dso_local i64 @Isdigit(i8 signext) #1

declare dso_local i64 @any(i8*, i8 signext) #1

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @stderror(i32, i32) #1

declare dso_local i32 @unDredc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
