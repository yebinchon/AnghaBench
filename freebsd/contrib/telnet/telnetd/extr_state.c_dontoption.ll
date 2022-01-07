; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_dontoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_state.c_dontoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TD_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"td: recv dont\00", align 1
@will_wont_resp = common dso_local global i64* null, align 8
@turn_on_sga = common dso_local global i32 0, align 4
@KLUDGE_LINEMODE = common dso_local global i32 0, align 4
@KLUDGE_OK = common dso_local global i32 0, align 4
@REAL_LINEMODE = common dso_local global i32 0, align 4
@TELOPT_LINEMODE = common dso_local global i32 0, align 4
@WILL = common dso_local global i32 0, align 4
@lmodetype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dontoption(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @TD_OPTIONS, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @printoption(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i32 @DIAG(i32 %3, i32 %5)
  %7 = load i64*, i64** @will_wont_resp, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i64*, i64** @will_wont_resp, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load i64*, i64** @will_wont_resp, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @my_state_is_wont(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64*, i64** @will_wont_resp, align 8
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
  %39 = load i64*, i64** @will_wont_resp, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @my_want_state_is_will(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  switch i32 %50, label %78 [
    i32 130, label %51
    i32 129, label %55
    i32 128, label %59
  ]

51:                                               ; preds = %49
  %52 = call i32 (...) @init_termbuf()
  %53 = call i32 @tty_binaryout(i32 0)
  %54 = call i32 (...) @set_termbuf()
  br label %79

55:                                               ; preds = %49
  %56 = call i32 (...) @init_termbuf()
  %57 = call i32 @tty_setecho(i32 0)
  %58 = call i32 (...) @set_termbuf()
  br label %79

59:                                               ; preds = %49
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @set_my_want_state_wont(i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = call i64 @my_state_is_will(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @send_wont(i32 %66, i32 0)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @set_my_state_wont(i32 %69)
  %71 = load i32, i32* @turn_on_sga, align 4
  %72 = xor i32 %71, 1
  store i32 %72, i32* @turn_on_sga, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @send_will(i32 %75, i32 1)
  br label %77

77:                                               ; preds = %74, %68
  br label %92

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78, %55, %51
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @set_my_want_state_wont(i32 %80)
  %82 = load i32, i32* %2, align 4
  %83 = call i64 @my_state_is_will(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @send_wont(i32 %86, i32 0)
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %45, %38
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @set_my_state_wont(i32 %90)
  br label %92

92:                                               ; preds = %89, %77
  ret void
}

declare dso_local i32 @DIAG(i32, i32) #1

declare dso_local i32 @printoption(i8*, i32) #1

declare dso_local i64 @my_state_is_wont(i32) #1

declare dso_local i64 @my_want_state_is_will(i32) #1

declare dso_local i32 @init_termbuf(...) #1

declare dso_local i32 @tty_binaryout(i32) #1

declare dso_local i32 @set_termbuf(...) #1

declare dso_local i32 @tty_setecho(i32) #1

declare dso_local i32 @set_my_want_state_wont(i32) #1

declare dso_local i64 @my_state_is_will(i32) #1

declare dso_local i32 @send_wont(i32, i32) #1

declare dso_local i32 @set_my_state_wont(i32) #1

declare dso_local i32 @send_will(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
