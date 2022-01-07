; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_modecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_modecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modelist = type { i32 (i32)*, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"'mode' command requires an argument\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"'mode ?' for help.\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Unknown mode '%s' ('mode ?' for help).\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Ambiguous mode '%s' ('mode ?' for help).\0D\0A\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"?Need to be connected first.\0D\0A\00", align 1
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
  %10 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %62

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
  %23 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %61

24:                                               ; preds = %12
  %25 = load %struct.modelist*, %struct.modelist** %6, align 8
  %26 = call i64 @Ambiguous(%struct.modelist* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %60

34:                                               ; preds = %24
  %35 = load %struct.modelist*, %struct.modelist** %6, align 8
  %36 = getelementptr inbounds %struct.modelist, %struct.modelist* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @connected, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %59

45:                                               ; preds = %39, %34
  %46 = load %struct.modelist*, %struct.modelist** %6, align 8
  %47 = getelementptr inbounds %struct.modelist, %struct.modelist* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = icmp ne i32 (i32)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.modelist*, %struct.modelist** %6, align 8
  %52 = getelementptr inbounds %struct.modelist, %struct.modelist* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.modelist*, %struct.modelist** %6, align 8
  %55 = getelementptr inbounds %struct.modelist, %struct.modelist* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %28
  br label %61

61:                                               ; preds = %60, %18
  br label %62

62:                                               ; preds = %61, %9
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.modelist* @GETMODECMD(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @Ambiguous(%struct.modelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
