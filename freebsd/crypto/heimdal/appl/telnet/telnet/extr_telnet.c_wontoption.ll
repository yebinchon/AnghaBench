; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_wontoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_wontoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_dont_resp = common dso_local global i64* null, align 8
@modenegotiated = common dso_local global i32 0, align 4
@flushout = common dso_local global i64 0, align 8
@kludgelinemode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wontoption(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64*, i64** @do_dont_resp, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i64, i64* %3, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load i64*, i64** @do_dont_resp, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load i64*, i64** @do_dont_resp, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %9
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @my_state_is_dont(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i64*, i64** @do_dont_resp, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %26, %22, %9
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i64*, i64** @do_dont_resp, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @my_want_state_is_do(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  switch i32 %46, label %59 [
    i32 131, label %47
    i32 128, label %50
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @modenegotiated, align 4
  %49 = call i32 @settimer(i32 %48)
  br label %60

50:                                               ; preds = %45
  %51 = load i64, i64* @flushout, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 0, i64* @flushout, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @set_my_want_state_dont(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @set_my_state_dont(i32 %57)
  br label %85

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @set_my_want_state_dont(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i64 @my_state_is_do(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @send_dont(i32 %67, i32 0)
  br label %69

69:                                               ; preds = %66, %60
  %70 = call i32 @setconnmode(i32 0)
  br label %82

71:                                               ; preds = %41, %34
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* @flushout, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i64 0, i64* @flushout, align 8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @set_my_want_state_dont(i32 %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %69
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @set_my_state_dont(i32 %83)
  br label %85

85:                                               ; preds = %82, %54
  ret void
}

declare dso_local i64 @my_state_is_dont(i32) #1

declare dso_local i64 @my_want_state_is_do(i32) #1

declare dso_local i32 @settimer(i32) #1

declare dso_local i32 @set_my_want_state_dont(i32) #1

declare dso_local i32 @set_my_state_dont(i32) #1

declare dso_local i64 @my_state_is_do(i32) #1

declare dso_local i32 @send_dont(i32, i32) #1

declare dso_local i32 @setconnmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
