; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EL_FLAGS = common dso_local global i32 0, align 4
@T_pt = common dso_local global i32 0, align 4
@T_xt = common dso_local global i32 0, align 4
@TERM_CAN_TAB = common dso_local global i32 0, align 4
@T_km = common dso_local global i32 0, align 4
@T_MT = common dso_local global i32 0, align 4
@TERM_HAS_META = common dso_local global i32 0, align 4
@T_ce = common dso_local global i32 0, align 4
@TERM_CAN_CEOL = common dso_local global i32 0, align 4
@T_dc = common dso_local global i32 0, align 4
@T_DC = common dso_local global i32 0, align 4
@TERM_CAN_DELETE = common dso_local global i32 0, align 4
@T_im = common dso_local global i32 0, align 4
@T_ic = common dso_local global i32 0, align 4
@T_IC = common dso_local global i32 0, align 4
@TERM_CAN_INSERT = common dso_local global i32 0, align 4
@T_up = common dso_local global i32 0, align 4
@T_UP = common dso_local global i32 0, align 4
@TERM_CAN_UP = common dso_local global i32 0, align 4
@T_am = common dso_local global i32 0, align 4
@TERM_HAS_AUTO_MARGINS = common dso_local global i32 0, align 4
@T_xn = common dso_local global i32 0, align 4
@TERM_HAS_MAGIC_MARGINS = common dso_local global i32 0, align 4
@T_me = common dso_local global i32 0, align 4
@T_ue = common dso_local global i32 0, align 4
@TERM_CAN_ME = common dso_local global i32 0, align 4
@T_se = common dso_local global i32 0, align 4
@EL_CAN_CEOL = common dso_local global i32 0, align 4
@EL_CAN_DELETE = common dso_local global i32 0, align 4
@EL_CAN_INSERT = common dso_local global i32 0, align 4
@EL_CAN_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @terminal_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminal_setflags(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* @EL_FLAGS, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @T_pt, align 4
  %10 = call i64 @Val(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @T_xt, align 4
  %14 = call i64 @Val(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @TERM_CAN_TAB, align 4
  br label %19

18:                                               ; preds = %12, %8
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load i32, i32* @EL_FLAGS, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @EL_FLAGS, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @T_km, align 4
  %25 = call i64 @Val(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @T_MT, align 4
  %29 = call i64 @Val(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @TERM_HAS_META, align 4
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* @EL_FLAGS, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @EL_FLAGS, align 4
  %38 = load i32, i32* @T_ce, align 4
  %39 = call i64 @GoodStr(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @TERM_CAN_CEOL, align 4
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = load i32, i32* @EL_FLAGS, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @EL_FLAGS, align 4
  %48 = load i32, i32* @T_dc, align 4
  %49 = call i64 @GoodStr(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @T_DC, align 4
  %53 = call i64 @GoodStr(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %44
  %56 = load i32, i32* @TERM_CAN_DELETE, align 4
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load i32, i32* @EL_FLAGS, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @EL_FLAGS, align 4
  %62 = load i32, i32* @T_im, align 4
  %63 = call i64 @GoodStr(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @T_ic, align 4
  %67 = call i64 @GoodStr(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @T_IC, align 4
  %71 = call i64 @GoodStr(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %65, %58
  %74 = load i32, i32* @TERM_CAN_INSERT, align 4
  br label %76

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = load i32, i32* @EL_FLAGS, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* @EL_FLAGS, align 4
  %80 = load i32, i32* @T_up, align 4
  %81 = call i64 @GoodStr(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @T_UP, align 4
  %85 = call i64 @GoodStr(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %76
  %88 = load i32, i32* @TERM_CAN_UP, align 4
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = load i32, i32* @EL_FLAGS, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* @EL_FLAGS, align 4
  %94 = load i32, i32* @T_am, align 4
  %95 = call i64 @Val(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @TERM_HAS_AUTO_MARGINS, align 4
  br label %100

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = load i32, i32* @EL_FLAGS, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* @EL_FLAGS, align 4
  %104 = load i32, i32* @T_xn, align 4
  %105 = call i64 @Val(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @TERM_HAS_MAGIC_MARGINS, align 4
  br label %110

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = load i32, i32* @EL_FLAGS, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* @EL_FLAGS, align 4
  %114 = load i32, i32* @T_me, align 4
  %115 = call i64 @GoodStr(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %110
  %118 = load i32, i32* @T_ue, align 4
  %119 = call i64 @GoodStr(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i32, i32* @T_me, align 4
  %123 = call i32 @Str(i32 %122)
  %124 = load i32, i32* @T_ue, align 4
  %125 = call i32 @Str(i32 %124)
  %126 = call i64 @strcmp(i32 %123, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @TERM_CAN_ME, align 4
  br label %131

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ]
  %133 = load i32, i32* @EL_FLAGS, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* @EL_FLAGS, align 4
  br label %140

135:                                              ; preds = %117, %110
  %136 = load i32, i32* @TERM_CAN_ME, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* @EL_FLAGS, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* @EL_FLAGS, align 4
  br label %140

140:                                              ; preds = %135, %131
  %141 = load i32, i32* @T_me, align 4
  %142 = call i64 @GoodStr(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %140
  %145 = load i32, i32* @T_se, align 4
  %146 = call i64 @GoodStr(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %144
  %149 = load i32, i32* @T_me, align 4
  %150 = call i32 @Str(i32 %149)
  %151 = load i32, i32* @T_se, align 4
  %152 = call i32 @Str(i32 %151)
  %153 = call i64 @strcmp(i32 %150, i32 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* @TERM_CAN_ME, align 4
  br label %158

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i32 [ %156, %155 ], [ 0, %157 ]
  %160 = load i32, i32* @EL_FLAGS, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* @EL_FLAGS, align 4
  br label %162

162:                                              ; preds = %158, %144, %140
  ret void
}

declare dso_local i64 @Val(i32) #1

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @Str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
