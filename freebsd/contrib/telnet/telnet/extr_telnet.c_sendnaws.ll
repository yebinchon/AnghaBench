; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_sendnaws.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_sendnaws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TELOPT_NAWS = common dso_local global i32 0, align 4
@IAC = common dso_local global i8* null, align 8
@SB = common dso_local global i32 0, align 4
@SE = common dso_local global i32 0, align 4
@netoring = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendnaws() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @TELOPT_NAWS, align 4
  %6 = call i64 @my_state_is_wont(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %124

9:                                                ; preds = %0
  %10 = call i64 @TerminalWindowSize(i64* %1, i64* %2)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %124

13:                                               ; preds = %9
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** @IAC, align 8
  %16 = ptrtoint i8* %15 to i8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  store i8 %16, i8* %17, align 1
  %19 = load i32, i32* @SB, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  %23 = load i32, i32* @TELOPT_NAWS, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i64, i64* %2, align 8
  %28 = ashr i64 %27, 8
  %29 = and i64 %28, 255
  %30 = trunc i64 %29 to i8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store i8 %30, i8* %31, align 1
  %33 = zext i8 %30 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8*, i8** @IAC, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %13
  %38 = load i8*, i8** @IAC, align 8
  %39 = ptrtoint i8* %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %37, %13
  %43 = load i64, i64* %2, align 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8 %45, i8* %46, align 1
  %48 = zext i8 %45 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8*, i8** @IAC, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i8*, i8** @IAC, align 8
  %54 = ptrtoint i8* %53 to i8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  store i8 %54, i8* %55, align 1
  br label %57

57:                                               ; preds = %52, %42
  %58 = load i64, i64* %1, align 8
  %59 = ashr i64 %58, 8
  %60 = and i64 %59, 255
  %61 = trunc i64 %60 to i8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 %61, i8* %62, align 1
  %64 = zext i8 %61 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load i8*, i8** @IAC, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load i8*, i8** @IAC, align 8
  %70 = ptrtoint i8* %69 to i8
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  store i8 %70, i8* %71, align 1
  br label %73

73:                                               ; preds = %68, %57
  %74 = load i64, i64* %1, align 8
  %75 = and i64 %74, 255
  %76 = trunc i64 %75 to i8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  store i8 %76, i8* %77, align 1
  %79 = zext i8 %76 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i8*, i8** @IAC, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load i8*, i8** @IAC, align 8
  %85 = ptrtoint i8* %84 to i8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %4, align 8
  store i8 %85, i8* %86, align 1
  br label %88

88:                                               ; preds = %83, %73
  %89 = load i8*, i8** @IAC, align 8
  %90 = ptrtoint i8* %89 to i8
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %4, align 8
  store i8 %90, i8* %91, align 1
  %93 = load i32, i32* @SE, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  store i8 %94, i8* %95, align 1
  %97 = call i32 (...) @NETROOM()
  %98 = sext i32 %97 to i64
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = icmp sge i64 %98, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %88
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @ring_supply_data(i32* @netoring, i8* %106, i32 %112)
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sub nsw i64 %120, 2
  %122 = trunc i64 %121 to i32
  %123 = call i32 @printsub(i8 signext 62, i8* %115, i32 %122)
  br label %124

124:                                              ; preds = %8, %12, %105, %88
  ret void
}

declare dso_local i64 @my_state_is_wont(i32) #1

declare dso_local i64 @TerminalWindowSize(i64*, i64*) #1

declare dso_local i32 @NETROOM(...) #1

declare dso_local i32 @ring_supply_data(i32*, i8*, i32) #1

declare dso_local i32 @printsub(i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
