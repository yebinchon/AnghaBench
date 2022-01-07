; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_wontoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_wontoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TD_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"td: recv wont\00", align 1
@do_dont_resp = common dso_local global i64* null, align 8
@not42 = common dso_local global i32 0, align 4
@SLC_LEVELBITS = common dso_local global i32 0, align 4
@slctab = common dso_local global %struct.TYPE_4__* null, align 8
@SLC_XON = common dso_local global i64 0, align 8
@SLC_CANTCHANGE = common dso_local global i32 0, align 4
@SLC_XOFF = common dso_local global i64 0, align 8
@ttypesubopt = common dso_local global i32 0, align 4
@tspeedsubopt = common dso_local global i32 0, align 4
@xdisplocsubopt = common dso_local global i32 0, align 4
@oenvironsubopt = common dso_local global i32 0, align 4
@environsubopt = common dso_local global i32 0, align 4
@AUTH_REJECT = common dso_local global i32 0, align 4
@KLUDGE_LINEMODE = common dso_local global i32 0, align 4
@NO_AUTOKLUDGE = common dso_local global i32 0, align 4
@NO_LINEMODE = common dso_local global i32 0, align 4
@REAL_LINEMODE = common dso_local global i32 0, align 4
@TELOPT_SGA = common dso_local global i32 0, align 4
@WONT = common dso_local global i32 0, align 4
@lmodetype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wontoption(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @TD_OPTIONS, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @printoption(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i32 @DIAG(i32 %3, i32 %5)
  %7 = load i64*, i64** @do_dont_resp, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i64*, i64** @do_dont_resp, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load i64*, i64** @do_dont_resp, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @his_state_is_wont(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64*, i64** @do_dont_resp, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %30, %26, %13
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i64*, i64** @do_dont_resp, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %125

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @his_want_state_is_will(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %119

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  switch i32 %50, label %108 [
    i32 136, label %51
    i32 137, label %52
    i32 131, label %56
    i32 135, label %58
    i32 129, label %93
    i32 130, label %96
    i32 128, label %99
    i32 132, label %102
    i32 133, label %105
  ]

51:                                               ; preds = %49
  store i32 1, i32* @not42, align 4
  br label %109

52:                                               ; preds = %49
  %53 = call i32 (...) @init_termbuf()
  %54 = call i32 @tty_binaryin(i32 0)
  %55 = call i32 (...) @set_termbuf()
  br label %109

56:                                               ; preds = %49
  %57 = call i32 @set_his_want_state_wont(i32 131)
  br label %128

58:                                               ; preds = %49
  %59 = load i32, i32* @SLC_LEVELBITS, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %62 = load i64, i64* @SLC_XON, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %60
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @SLC_CANTCHANGE, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %70 = load i64, i64* @SLC_XON, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %68
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @SLC_LEVELBITS, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %79 = load i64, i64* @SLC_XOFF, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %77
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @SLC_CANTCHANGE, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %87 = load i64, i64* @SLC_XOFF, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %85
  store i32 %92, i32* %90, align 4
  br label %109

93:                                               ; preds = %49
  %94 = load i32, i32* @ttypesubopt, align 4
  %95 = call i32 @settimer(i32 %94)
  br label %109

96:                                               ; preds = %49
  %97 = load i32, i32* @tspeedsubopt, align 4
  %98 = call i32 @settimer(i32 %97)
  br label %109

99:                                               ; preds = %49
  %100 = load i32, i32* @xdisplocsubopt, align 4
  %101 = call i32 @settimer(i32 %100)
  br label %109

102:                                              ; preds = %49
  %103 = load i32, i32* @oenvironsubopt, align 4
  %104 = call i32 @settimer(i32 %103)
  br label %109

105:                                              ; preds = %49
  %106 = load i32, i32* @environsubopt, align 4
  %107 = call i32 @settimer(i32 %106)
  br label %109

108:                                              ; preds = %49
  br label %109

109:                                              ; preds = %108, %105, %102, %99, %96, %93, %58, %52, %51
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @set_his_want_state_wont(i32 %110)
  %112 = load i32, i32* %2, align 4
  %113 = call i64 @his_state_is_will(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @send_dont(i32 %116, i32 0)
  br label %118

118:                                              ; preds = %115, %109
  br label %124

119:                                              ; preds = %45
  %120 = load i32, i32* %2, align 4
  switch i32 %120, label %122 [
    i32 131, label %121
  ]

121:                                              ; preds = %119
  br label %123

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %123, %118
  br label %125

125:                                              ; preds = %124, %38
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @set_his_state_wont(i32 %126)
  br label %128

128:                                              ; preds = %125, %56
  ret void
}

declare dso_local i32 @DIAG(i32, i32) #1

declare dso_local i32 @printoption(i8*, i32) #1

declare dso_local i64 @his_state_is_wont(i32) #1

declare dso_local i64 @his_want_state_is_will(i32) #1

declare dso_local i32 @init_termbuf(...) #1

declare dso_local i32 @tty_binaryin(i32) #1

declare dso_local i32 @set_termbuf(...) #1

declare dso_local i32 @set_his_want_state_wont(i32) #1

declare dso_local i32 @settimer(i32) #1

declare dso_local i64 @his_state_is_will(i32) #1

declare dso_local i32 @send_dont(i32, i32) #1

declare dso_local i32 @set_his_state_wont(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
