; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_sccrp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_sccrp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_sccrp = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@PPTP_CTRL_MSG_TYPE_SCCRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_sccrp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_sccrp_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_sccrp*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_sccrp*
  store %struct.pptp_msg_sccrp* %7, %struct.pptp_msg_sccrp** %5, align 8
  %8 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %8, i32 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ND_TCHECK(i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %13, i32 0, i32 8
  %15 = call i32 @pptp_proto_ver_print(i32* %12, i32** %14)
  %16 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ND_TCHECK(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %22 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %21, i32 0, i32 7
  %23 = load i32, i32* @PPTP_CTRL_MSG_TYPE_SCCRP, align 4
  %24 = call i32 @pptp_result_code_print(i32* %20, i32** %22, i32 %23)
  %25 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %26 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ND_TCHECK(i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %31 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %30, i32 0, i32 6
  %32 = call i32 @pptp_err_code_print(i32* %29, i32** %31)
  %33 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %34 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ND_TCHECK(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %39 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %38, i32 0, i32 5
  %40 = call i32 @pptp_framing_cap_print(i32* %37, i32** %39)
  %41 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %42 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ND_TCHECK(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %47 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %46, i32 0, i32 4
  %48 = call i32 @pptp_bearer_cap_print(i32* %45, i32** %47)
  %49 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %50 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ND_TCHECK(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %55 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %54, i32 0, i32 3
  %56 = call i32 @pptp_max_channel_print(i32* %53, i32** %55)
  %57 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %58 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ND_TCHECK(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %63 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %62, i32 0, i32 2
  %64 = call i32 @pptp_firm_rev_print(i32* %61, i32** %63)
  %65 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %66 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @ND_TCHECK(i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %71 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i32 @pptp_hostname_print(i32* %69, i32* %73)
  %75 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %76 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @ND_TCHECK(i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.pptp_msg_sccrp*, %struct.pptp_msg_sccrp** %5, align 8
  %81 = getelementptr inbounds %struct.pptp_msg_sccrp, %struct.pptp_msg_sccrp* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @pptp_vendor_print(i32* %79, i32* %83)
  br label %91

85:                                               ; No predecessors!
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @tstr, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @ND_PRINT(i32* %89)
  br label %91

91:                                               ; preds = %85, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i32*) #1

declare dso_local i32 @pptp_proto_ver_print(i32*, i32**) #1

declare dso_local i32 @pptp_result_code_print(i32*, i32**, i32) #1

declare dso_local i32 @pptp_err_code_print(i32*, i32**) #1

declare dso_local i32 @pptp_framing_cap_print(i32*, i32**) #1

declare dso_local i32 @pptp_bearer_cap_print(i32*, i32**) #1

declare dso_local i32 @pptp_max_channel_print(i32*, i32**) #1

declare dso_local i32 @pptp_firm_rev_print(i32*, i32**) #1

declare dso_local i32 @pptp_hostname_print(i32*, i32*) #1

declare dso_local i32 @pptp_vendor_print(i32*, i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
