; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_mgmt_body_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_mgmt_body_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@st_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unhandled Management subtype(%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @mgmt_body_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_body_print(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* @st_str, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @FC_SUBTYPE(i32 %14)
  %16 = call i32 @tok2str(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @ND_PRINT(i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @FC_PROTECTED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @wep_print(i32* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  br label %90

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @FC_SUBTYPE(i32 %28)
  switch i32 %29, label %89 [
    i32 138, label %30
    i32 137, label %35
    i32 129, label %40
    i32 128, label %45
    i32 131, label %50
    i32 130, label %55
    i32 134, label %60
    i32 136, label %65
    i32 132, label %67
    i32 135, label %72
    i32 133, label %77
    i32 139, label %83
  ]

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @handle_assoc_request(i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %90

35:                                               ; preds = %27
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @handle_assoc_response(i32* %36, i32* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %90

40:                                               ; preds = %27
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @handle_reassoc_request(i32* %41, i32* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %90

45:                                               ; preds = %27
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @handle_reassoc_response(i32* %46, i32* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %90

50:                                               ; preds = %27
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @handle_probe_request(i32* %51, i32* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %90

55:                                               ; preds = %27
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @handle_probe_response(i32* %56, i32* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %90

60:                                               ; preds = %27
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @handle_beacon(i32* %61, i32* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %90

65:                                               ; preds = %27
  %66 = call i32 (...) @handle_atim()
  store i32 %66, i32* %6, align 4
  br label %90

67:                                               ; preds = %27
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @handle_disassoc(i32* %68, i32* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %90

72:                                               ; preds = %27
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @handle_auth(i32* %73, i32* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %90

77:                                               ; preds = %27
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @handle_deauth(i32* %78, i32* %79, i32* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  br label %90

83:                                               ; preds = %27
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @handle_action(i32* %84, i32* %85, i32* %86, i32 %87)
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %83, %77, %72, %67, %65, %60, %55, %50, %45, %40, %35, %30, %23
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @FC_SUBTYPE(i32) #1

declare dso_local i64 @FC_PROTECTED(i32) #1

declare dso_local i32 @wep_print(i32*, i32*) #1

declare dso_local i32 @handle_assoc_request(i32*, i32*, i32) #1

declare dso_local i32 @handle_assoc_response(i32*, i32*, i32) #1

declare dso_local i32 @handle_reassoc_request(i32*, i32*, i32) #1

declare dso_local i32 @handle_reassoc_response(i32*, i32*, i32) #1

declare dso_local i32 @handle_probe_request(i32*, i32*, i32) #1

declare dso_local i32 @handle_probe_response(i32*, i32*, i32) #1

declare dso_local i32 @handle_beacon(i32*, i32*, i32) #1

declare dso_local i32 @handle_atim(...) #1

declare dso_local i32 @handle_disassoc(i32*, i32*, i32) #1

declare dso_local i32 @handle_auth(i32*, i32*, i32) #1

declare dso_local i32 @handle_deauth(i32*, i32*, i32*, i32) #1

declare dso_local i32 @handle_action(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
