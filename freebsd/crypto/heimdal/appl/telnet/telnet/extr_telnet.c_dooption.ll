; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_dooption.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_dooption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@will_wont_resp = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@autologin = common dso_local global i32 0, align 4
@kludgelinemode = common dso_local global i32 0, align 4
@telopt_environ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dooption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dooption(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64*, i64** @will_wont_resp, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, i64* %4, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load i64*, i64** @will_wont_resp, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load i64*, i64** @will_wont_resp, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %10
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @my_state_is_will(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64*, i64** @will_wont_resp, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %27, %23, %10
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i64*, i64** @will_wont_resp, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %96

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @my_want_state_is_wont(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  switch i32 %47, label %67 [
    i32 131, label %48
    i32 140, label %53
    i32 135, label %53
    i32 130, label %53
    i32 137, label %53
    i32 129, label %53
    i32 132, label %53
    i32 134, label %54
    i32 128, label %55
    i32 136, label %60
    i32 139, label %66
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @send_will(i32 %49, i32 0)
  %51 = call i32 @set_my_want_state_wont(i32 131)
  %52 = call i32 @set_my_state_wont(i32 131)
  br label %99

53:                                               ; preds = %46, %46, %46, %46, %46, %46
  store i32 1, i32* %3, align 4
  br label %68

54:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %68

55:                                               ; preds = %46
  %56 = call i32 @env_getvalue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55
  br label %68

60:                                               ; preds = %46
  %61 = call i32 @set_my_want_state_will(i32 136)
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @send_will(i32 %62, i32 0)
  %64 = call i32 @set_my_state_will(i32 136)
  %65 = call i32 (...) @slc_init()
  br label %99

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %46, %66
  br label %68

68:                                               ; preds = %67, %59, %54, %53
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @set_my_want_state_will(i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @send_will(i32 %74, i32 0)
  %76 = call i32 @setconnmode(i32 0)
  br label %86

77:                                               ; preds = %68
  %78 = load i64*, i64** @will_wont_resp, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @send_wont(i32 %84, i32 0)
  br label %86

86:                                               ; preds = %77, %71
  br label %95

87:                                               ; preds = %42
  %88 = load i32, i32* %2, align 4
  switch i32 %88, label %94 [
    i32 136, label %89
  ]

89:                                               ; preds = %87
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @set_my_state_will(i32 %90)
  %92 = call i32 (...) @slc_init()
  %93 = call i32 @send_do(i32 132, i32 0)
  br label %99

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %86
  br label %96

96:                                               ; preds = %95, %35
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @set_my_state_will(i32 %97)
  br label %99

99:                                               ; preds = %96, %89, %60, %48
  ret void
}

declare dso_local i64 @my_state_is_will(i32) #1

declare dso_local i64 @my_want_state_is_wont(i32) #1

declare dso_local i32 @send_will(i32, i32) #1

declare dso_local i32 @set_my_want_state_wont(i32) #1

declare dso_local i32 @set_my_state_wont(i32) #1

declare dso_local i32 @env_getvalue(i8*) #1

declare dso_local i32 @set_my_want_state_will(i32) #1

declare dso_local i32 @set_my_state_will(i32) #1

declare dso_local i32 @slc_init(...) #1

declare dso_local i32 @setconnmode(i32) #1

declare dso_local i32 @send_wont(i32, i32) #1

declare dso_local i32 @send_do(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
