; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TELOPT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Remote side does not support STATUS option\0A\00", align 1
@IAC = common dso_local global i8* null, align 8
@SB = common dso_local global i32 0, align 4
@TELQUAL_SEND = common dso_local global i32 0, align 4
@SE = common dso_local global i32 0, align 4
@netoring = common dso_local global i32 0, align 4
@want_status_response = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @TELOPT_STATUS, align 4
  %5 = call i64 @my_want_state_is_dont(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %65

9:                                                ; preds = %0
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** @IAC, align 8
  %12 = ptrtoint i8* %11 to i8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  store i8 %12, i8* %13, align 1
  %15 = load i32, i32* @SB, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  store i8 %16, i8* %17, align 1
  %19 = load i32, i32* @TELOPT_STATUS, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 %20, i8* %21, align 1
  %23 = load i32, i32* @TELQUAL_SEND, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i8*, i8** @IAC, align 8
  %28 = ptrtoint i8* %27 to i8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i32, i32* @SE, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  store i8 %32, i8* %33, align 1
  %35 = call i32 (...) @NETROOM()
  %36 = sext i32 %35 to i64
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = icmp sge i64 %36, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %9
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ring_supply_data(i32* @netoring, i8* %44, i32 %50)
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sub nsw i64 %58, 2
  %60 = trunc i64 %59 to i32
  %61 = call i32 @printsub(i8 signext 62, i8* %53, i32 %60)
  br label %62

62:                                               ; preds = %43, %9
  %63 = load i32, i32* @want_status_response, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @want_status_response, align 4
  store i32 1, i32* %1, align 4
  br label %65

65:                                               ; preds = %62, %7
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i64 @my_want_state_is_dont(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @NETROOM(...) #1

declare dso_local i32 @ring_supply_data(i32*, i8*, i32) #1

declare dso_local i32 @printsub(i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
