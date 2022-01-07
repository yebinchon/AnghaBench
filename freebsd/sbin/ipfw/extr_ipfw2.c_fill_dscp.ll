; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_fill_dscp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_fill_dscp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@O_DSCP = common dso_local global i32 0, align 4
@ipfw_insn_u32 = common dso_local global i32 0, align 4
@CHECK_CMDLEN = common dso_local global i32 0, align 4
@f_ipdscp = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unknown DSCP code\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid DSCP value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @fill_dscp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_dscp(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i32, i32* @O_DSCP, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ipfw_insn_u32, align 4
  %17 = call i32 @F_INSN_SIZE(i32 %16)
  %18 = add nsw i32 %17, 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @CHECK_CMDLEN, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = bitcast %struct.TYPE_3__* %25 to i32*
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %84, %3
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 44)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  store i8 0, i8* %40, align 1
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isalpha(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* @f_ipdscp, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @match_token(i32 %48, i8* %49)
  store i32 %50, i32* %11, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EX_DATAERR, align 4
  %54 = call i32 @errx(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  br label %68

56:                                               ; preds = %42
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strtoul(i8* %57, i32* null, i32 10)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %62, 63
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @EX_DATAERR, align 4
  %66 = call i32 @errx(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* %11, align 4
  %70 = icmp sge i32 %69, 32
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 32
  %74 = shl i32 1, %73
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %84

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 1, %79
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %71
  %85 = load i8*, i8** %10, align 8
  store i8* %85, i8** %9, align 8
  br label %31

86:                                               ; preds = %31
  ret void
}

declare dso_local i32 @F_INSN_SIZE(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @match_token(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
