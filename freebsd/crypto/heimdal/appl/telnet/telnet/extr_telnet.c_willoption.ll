; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_willoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_willoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_dont_resp = common dso_local global i64* null, align 8
@modenegotiated = common dso_local global i32 0, align 4
@flushout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @willoption(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64*, i64** @do_dont_resp, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, i64* %4, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load i64*, i64** @do_dont_resp, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load i64*, i64** @do_dont_resp, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %10
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @my_state_is_do(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64*, i64** @do_dont_resp, align 8
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
  %36 = load i64*, i64** @do_dont_resp, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @my_want_state_is_dont(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  switch i32 %47, label %62 [
    i32 133, label %48
    i32 134, label %48
    i32 130, label %48
    i32 129, label %51
    i32 128, label %52
    i32 131, label %61
  ]

48:                                               ; preds = %46, %46, %46
  %49 = load i32, i32* @modenegotiated, align 4
  %50 = call i32 @settimer(i32 %49)
  br label %51

51:                                               ; preds = %46, %48
  store i32 1, i32* %3, align 4
  br label %63

52:                                               ; preds = %46
  %53 = load i32, i32* @flushout, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* @flushout, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @set_my_want_state_dont(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @set_my_state_dont(i32 %59)
  br label %85

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %46, %61
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @set_my_want_state_do(i32 %67)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @send_do(i32 %69, i32 0)
  %71 = call i32 @setconnmode(i32 0)
  br label %81

72:                                               ; preds = %63
  %73 = load i64*, i64** @do_dont_resp, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @send_dont(i32 %79, i32 0)
  br label %81

81:                                               ; preds = %72, %66
  br label %82

82:                                               ; preds = %81, %42, %35
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @set_my_state_do(i32 %83)
  br label %85

85:                                               ; preds = %82, %56
  ret void
}

declare dso_local i64 @my_state_is_do(i32) #1

declare dso_local i64 @my_want_state_is_dont(i32) #1

declare dso_local i32 @settimer(i32) #1

declare dso_local i32 @set_my_want_state_dont(i32) #1

declare dso_local i32 @set_my_state_dont(i32) #1

declare dso_local i32 @set_my_want_state_do(i32) #1

declare dso_local i32 @send_do(i32, i32) #1

declare dso_local i32 @setconnmode(i32) #1

declare dso_local i32 @send_dont(i32, i32) #1

declare dso_local i32 @set_my_state_do(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
