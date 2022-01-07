; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_modecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_modecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modelist = type { i32 (i32)*, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"'mode' command requires an argument\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"'mode ?' for help.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unknown mode '%s' ('mode ?' for help).\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Ambiguous mode '%s' ('mode ?' for help).\0A\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"?Need to be connected first.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @modecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modecmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.modelist*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %63

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call %struct.modelist* @GETMODECMD(i8* %15)
  store %struct.modelist* %16, %struct.modelist** %6, align 8
  %17 = icmp eq %struct.modelist* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %62

24:                                               ; preds = %12
  %25 = load %struct.modelist*, %struct.modelist** %6, align 8
  %26 = bitcast %struct.modelist* %25 to i8*
  %27 = call i64 @Ambiguous(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %61

35:                                               ; preds = %24
  %36 = load %struct.modelist*, %struct.modelist** %6, align 8
  %37 = getelementptr inbounds %struct.modelist, %struct.modelist* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @connected, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %60

46:                                               ; preds = %40, %35
  %47 = load %struct.modelist*, %struct.modelist** %6, align 8
  %48 = getelementptr inbounds %struct.modelist, %struct.modelist* %47, i32 0, i32 0
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = icmp ne i32 (i32)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.modelist*, %struct.modelist** %6, align 8
  %53 = getelementptr inbounds %struct.modelist, %struct.modelist* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load %struct.modelist*, %struct.modelist** %6, align 8
  %56 = getelementptr inbounds %struct.modelist, %struct.modelist* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %54(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %29
  br label %62

62:                                               ; preds = %61, %18
  br label %63

63:                                               ; preds = %62, %9
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.modelist* @GETMODECMD(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @Ambiguous(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
