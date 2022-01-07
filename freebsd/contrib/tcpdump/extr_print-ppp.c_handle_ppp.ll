; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_ppp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_ppp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"compressed PPP data\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@ppptype2str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unknown PPP protocol (0x%04x)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @handle_ppp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ppp(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 65280
  %11 = icmp eq i32 %10, 32256
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 -1
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @ppp_hdlc(i32* %13, i32* %15, i32 %16)
  br label %86

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %74 [
    i32 136, label %20
    i32 140, label %20
    i32 130, label %20
    i32 134, label %20
    i32 138, label %20
    i32 144, label %20
    i32 146, label %20
    i32 135, label %26
    i32 143, label %31
    i32 129, label %36
    i32 145, label %41
    i32 149, label %46
    i32 128, label %46
    i32 141, label %46
    i32 148, label %51
    i32 139, label %51
    i32 147, label %56
    i32 137, label %56
    i32 131, label %61
    i32 132, label %66
    i32 133, label %66
    i32 142, label %71
  ]

20:                                               ; preds = %18, %18, %18, %18, %18, %18, %18
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @handle_ctrl_proto(i32* %21, i32 %22, i32* %23, i32 %24)
  br label %86

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @handle_mlppp(i32* %27, i32* %28, i32 %29)
  br label %86

31:                                               ; preds = %18
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @handle_chap(i32* %32, i32* %33, i32 %34)
  br label %86

36:                                               ; preds = %18
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @handle_pap(i32* %37, i32* %38, i32 %39)
  br label %86

41:                                               ; preds = %18
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @handle_bap(i32* %42, i32* %43, i32 %44)
  br label %86

46:                                               ; preds = %18, %18, %18
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ip_print(i32* %47, i32* %48, i32 %49)
  br label %86

51:                                               ; preds = %18, %18
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ip6_print(i32* %52, i32* %53, i32 %54)
  br label %86

56:                                               ; preds = %18, %18
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ipx_print(i32* %57, i32* %58, i32 %59)
  br label %86

61:                                               ; preds = %18
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @isoclns_print(i32* %62, i32* %63, i32 %64)
  br label %86

66:                                               ; preds = %18, %18
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @mpls_print(i32* %67, i32* %68, i32 %69)
  br label %86

71:                                               ; preds = %18
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ND_PRINT(i32* bitcast ([20 x i8]* @.str to i32*))
  br label %86

74:                                               ; preds = %18
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @ppptype2str, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @tok2str(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @ND_PRINT(i32* %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @print_unknown_data(i32* %82, i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %12, %74, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %20
  ret void
}

declare dso_local i32 @ppp_hdlc(i32*, i32*, i32) #1

declare dso_local i32 @handle_ctrl_proto(i32*, i32, i32*, i32) #1

declare dso_local i32 @handle_mlppp(i32*, i32*, i32) #1

declare dso_local i32 @handle_chap(i32*, i32*, i32) #1

declare dso_local i32 @handle_pap(i32*, i32*, i32) #1

declare dso_local i32 @handle_bap(i32*, i32*, i32) #1

declare dso_local i32 @ip_print(i32*, i32*, i32) #1

declare dso_local i32 @ip6_print(i32*, i32*, i32) #1

declare dso_local i32 @ipx_print(i32*, i32*, i32) #1

declare dso_local i32 @isoclns_print(i32*, i32*, i32) #1

declare dso_local i32 @mpls_print(i32*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @print_unknown_data(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
