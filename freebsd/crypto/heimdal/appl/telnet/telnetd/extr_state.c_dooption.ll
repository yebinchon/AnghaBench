; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_state.c_dooption.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_state.c_dooption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TD_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"td: recv do\00", align 1
@will_wont_resp = common dso_local global i64* null, align 8
@turn_on_sga = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dooption(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @TD_OPTIONS, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @printoption(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @DIAG(i32 %4, i32 %6)
  %8 = load i64*, i64** @will_wont_resp, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load i64*, i64** @will_wont_resp, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load i64*, i64** @will_wont_resp, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %14
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @my_state_is_will(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64*, i64** @will_wont_resp, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %31, %27, %14
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i64*, i64** @will_wont_resp, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %39
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @my_want_state_is_wont(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  switch i32 %51, label %84 [
    i32 141, label %52
    i32 142, label %58
    i32 133, label %64
    i32 132, label %67
    i32 131, label %70
    i32 137, label %77
    i32 138, label %83
    i32 129, label %83
    i32 136, label %83
    i32 130, label %83
    i32 139, label %83
    i32 128, label %83
    i32 134, label %83
  ]

52:                                               ; preds = %50
  %53 = call i32 (...) @init_termbuf()
  %54 = call i32 @tty_setecho(i32 1)
  %55 = call i32 (...) @set_termbuf()
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %85

58:                                               ; preds = %50
  %59 = call i32 (...) @init_termbuf()
  %60 = call i32 @tty_binaryout(i32 1)
  %61 = call i32 (...) @set_termbuf()
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %85

64:                                               ; preds = %50
  store i32 0, i32* @turn_on_sga, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %85

67:                                               ; preds = %50
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %50
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @send_will(i32 %71, i32 0)
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @set_my_want_state_wont(i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @set_my_state_wont(i32 %75)
  br label %106

77:                                               ; preds = %50
  %78 = call i32 @set_my_want_state_will(i32 137)
  %79 = call i32 @send_will(i32 137, i32 0)
  %80 = call i32 @set_my_state_will(i32 137)
  %81 = call i32 (...) @netflush()
  %82 = call i32 @cleanup(i32 0)
  br label %85

83:                                               ; preds = %50, %50, %50, %50, %50, %50, %50
  br label %84

84:                                               ; preds = %50, %83
  br label %85

85:                                               ; preds = %84, %77, %67, %64, %58, %52
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @set_my_want_state_will(i32 %89)
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @send_will(i32 %91, i32 0)
  br label %102

93:                                               ; preds = %85
  %94 = load i64*, i64** @will_wont_resp, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @send_wont(i32 %100, i32 0)
  br label %102

102:                                              ; preds = %93, %88
  br label %103

103:                                              ; preds = %102, %46, %39
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @set_my_state_will(i32 %104)
  br label %106

106:                                              ; preds = %103, %70
  ret void
}

declare dso_local i32 @DIAG(i32, i32) #1

declare dso_local i32 @printoption(i8*, i32) #1

declare dso_local i64 @my_state_is_will(i32) #1

declare dso_local i64 @my_want_state_is_wont(i32) #1

declare dso_local i32 @init_termbuf(...) #1

declare dso_local i32 @tty_setecho(i32) #1

declare dso_local i32 @set_termbuf(...) #1

declare dso_local i32 @tty_binaryout(i32) #1

declare dso_local i32 @send_will(i32, i32) #1

declare dso_local i32 @set_my_want_state_wont(i32) #1

declare dso_local i32 @set_my_state_wont(i32) #1

declare dso_local i32 @set_my_want_state_will(i32) #1

declare dso_local i32 @set_my_state_will(i32) #1

declare dso_local i32 @netflush(...) #1

declare dso_local i32 @cleanup(i32) #1

declare dso_local i32 @send_wont(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
