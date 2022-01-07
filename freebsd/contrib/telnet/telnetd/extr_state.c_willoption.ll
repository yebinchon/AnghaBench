; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_willoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_willoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TD_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"td: recv will\00", align 1
@do_dont_resp = common dso_local global i64* null, align 8
@not42 = common dso_local global i32 0, align 4
@SLC_LEVELBITS = common dso_local global i32 0, align 4
@slctab = common dso_local global %struct.TYPE_4__* null, align 8
@SLC_XON = common dso_local global i64 0, align 8
@SLC_DEFAULT = common dso_local global i32 0, align 4
@SLC_XOFF = common dso_local global i64 0, align 8
@KLUDGE_LINEMODE = common dso_local global i32 0, align 4
@KLUDGE_OK = common dso_local global i32 0, align 4
@NO_AUTOKLUDGE = common dso_local global i32 0, align 4
@REAL_LINEMODE = common dso_local global i32 0, align 4
@WILL = common dso_local global i32 0, align 4
@auth_level = common dso_local global i32 0, align 4
@lmodetype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @willoption(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store void ()* null, void ()** %4, align 8
  %5 = load i32, i32* @TD_OPTIONS, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @printoption(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @DIAG(i32 %5, i32 %7)
  %9 = load i64*, i64** @do_dont_resp, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load i64*, i64** @do_dont_resp, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load i64*, i64** @do_dont_resp, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %15
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @his_state_is_will(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64*, i64** @do_dont_resp, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %32, %28, %15
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i64*, i64** @do_dont_resp, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %126

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = call i64 @his_want_state_is_wont(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %118

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  switch i32 %52, label %99 [
    i32 140, label %53
    i32 139, label %59
    i32 131, label %60
    i32 137, label %61
    i32 129, label %96
    i32 132, label %96
    i32 135, label %96
    i32 130, label %96
    i32 128, label %96
    i32 134, label %96
    i32 133, label %96
  ]

53:                                               ; preds = %51
  %54 = call i32 (...) @init_termbuf()
  %55 = call i32 @tty_binaryin(i32 1)
  %56 = call i32 (...) @set_termbuf()
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %100

59:                                               ; preds = %51
  store i32 0, i32* @not42, align 4
  br label %100

60:                                               ; preds = %51
  br label %133

61:                                               ; preds = %51
  %62 = load i32, i32* @SLC_LEVELBITS, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %65 = load i64, i64* @SLC_XON, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %63
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @SLC_DEFAULT, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %73 = load i64, i64* @SLC_XON, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @SLC_LEVELBITS, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %82 = load i64, i64* @SLC_XOFF, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %80
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @SLC_DEFAULT, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slctab, align 8
  %90 = load i64, i64* @SLC_XOFF, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %88
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %61
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %51
  br label %100

100:                                              ; preds = %99, %96, %59, %53
  %101 = load i32, i32* %3, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @set_his_want_state_will(i32 %104)
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @send_do(i32 %106, i32 0)
  br label %117

108:                                              ; preds = %100
  %109 = load i64*, i64** @do_dont_resp, align 8
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @send_dont(i32 %115, i32 0)
  br label %117

117:                                              ; preds = %108, %103
  br label %125

118:                                              ; preds = %47
  %119 = load i32, i32* %2, align 4
  switch i32 %119, label %124 [
    i32 139, label %120
    i32 137, label %123
  ]

120:                                              ; preds = %118
  store i32 0, i32* @not42, align 4
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @send_dont(i32 %121, i32 1)
  br label %124

123:                                              ; preds = %118
  store void ()* bitcast (void (...)* @flowstat to void ()*), void ()** %4, align 8
  br label %124

124:                                              ; preds = %118, %123, %120
  br label %125

125:                                              ; preds = %124, %117
  br label %126

126:                                              ; preds = %125, %40
  %127 = load i32, i32* %2, align 4
  %128 = call i32 @set_his_state_will(i32 %127)
  %129 = load void ()*, void ()** %4, align 8
  %130 = icmp ne void ()* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load void ()*, void ()** %4, align 8
  call void %132()
  br label %133

133:                                              ; preds = %60, %131, %126
  ret void
}

declare dso_local i32 @DIAG(i32, i32) #1

declare dso_local i32 @printoption(i8*, i32) #1

declare dso_local i64 @his_state_is_will(i32) #1

declare dso_local i64 @his_want_state_is_wont(i32) #1

declare dso_local i32 @init_termbuf(...) #1

declare dso_local i32 @tty_binaryin(i32) #1

declare dso_local i32 @set_termbuf(...) #1

declare dso_local i32 @set_his_want_state_will(i32) #1

declare dso_local i32 @send_do(i32, i32) #1

declare dso_local i32 @send_dont(i32, i32) #1

declare dso_local void @flowstat(...) #1

declare dso_local i32 @set_his_state_will(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
