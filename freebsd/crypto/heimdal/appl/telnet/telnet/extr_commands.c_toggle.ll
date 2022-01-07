; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.togglelist = type { i32*, i8*, i32 (i32)* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Need an argument to 'toggle' command.  'toggle ?' for help.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"'%s': ambiguous argument ('toggle ?' for help).\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"'%s': unknown argument ('toggle ?' for help).\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s %s.\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Will\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Won't\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toggle(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.togglelist*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %93

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %5, align 8
  br label %19

19:                                               ; preds = %90, %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %5, align 8
  %26 = load i8*, i8** %24, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call %struct.togglelist* @GETTOGGLE(i8* %27)
  store %struct.togglelist* %28, %struct.togglelist** %8, align 8
  %29 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %30 = call i64 @Ambiguous(%struct.togglelist* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 0, i32* %3, align 4
  br label %93

36:                                               ; preds = %23
  %37 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %38 = icmp eq %struct.togglelist* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  store i32 0, i32* %3, align 4
  br label %93

43:                                               ; preds = %36
  %44 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %45 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %50 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %57 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32 %55, i32* %58, align 4
  %59 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %60 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %48
  %64 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %65 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %71 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %72 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %70, i8* %73)
  br label %75

75:                                               ; preds = %63, %48
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %78 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %77, i32 0, i32 2
  %79 = load i32 (i32)*, i32 (i32)** %78, align 8
  %80 = icmp ne i32 (i32)* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %83 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %82, i32 0, i32 2
  %84 = load i32 (i32)*, i32 (i32)** %83, align 8
  %85 = call i32 %84(i32 -1)
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %81, %76
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  br label %19

91:                                               ; preds = %19
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %39, %32, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.togglelist* @GETTOGGLE(i8*) #1

declare dso_local i64 @Ambiguous(%struct.togglelist*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
