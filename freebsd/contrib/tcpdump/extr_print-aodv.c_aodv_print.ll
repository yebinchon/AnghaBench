; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aodv.c_aodv_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aodv.c_aodv_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" aodv\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" rrep-ack %u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" type %u %u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" [|aodv]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aodv_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ND_TCHECK(i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str to i32*))
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %87 [
    i32 132, label %18
    i32 134, label %32
    i32 135, label %46
    i32 133, label %60
    i32 128, label %66
    i32 130, label %71
    i32 131, label %76
    i32 129, label %81
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @aodv_v6_rreq(i32* %22, i32* %23, i32 %24)
  br label %31

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @aodv_rreq(i32* %27, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %94

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @aodv_v6_rrep(i32* %36, i32* %37, i32 %38)
  br label %45

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @aodv_rrep(i32* %41, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %94

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @aodv_v6_rerr(i32* %50, i32* %51, i32 %52)
  br label %59

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @aodv_rerr(i32* %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %94

60:                                               ; preds = %4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 @ND_PRINT(i32* %64)
  br label %94

66:                                               ; preds = %4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @aodv_v6_draft_01_rreq(i32* %67, i32* %68, i32 %69)
  br label %94

71:                                               ; preds = %4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @aodv_v6_draft_01_rrep(i32* %72, i32* %73, i32 %74)
  br label %94

76:                                               ; preds = %4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @aodv_v6_draft_01_rerr(i32* %77, i32* %78, i32 %79)
  br label %94

81:                                               ; preds = %4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i32*
  %86 = call i32 @ND_PRINT(i32* %85)
  br label %94

87:                                               ; preds = %4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @ND_PRINT(i32* %92)
  br label %94

94:                                               ; preds = %87, %81, %76, %71, %66, %60, %59, %45, %31
  br label %98

95:                                               ; No predecessors!
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  br label %98

98:                                               ; preds = %95, %94
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @aodv_v6_rreq(i32*, i32*, i32) #1

declare dso_local i32 @aodv_rreq(i32*, i32*, i32) #1

declare dso_local i32 @aodv_v6_rrep(i32*, i32*, i32) #1

declare dso_local i32 @aodv_rrep(i32*, i32*, i32) #1

declare dso_local i32 @aodv_v6_rerr(i32*, i32*, i32) #1

declare dso_local i32 @aodv_rerr(i32*, i32*, i32) #1

declare dso_local i32 @aodv_v6_draft_01_rreq(i32*, i32*, i32) #1

declare dso_local i32 @aodv_v6_draft_01_rrep(i32*, i32*, i32) #1

declare dso_local i32 @aodv_v6_draft_01_rerr(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
