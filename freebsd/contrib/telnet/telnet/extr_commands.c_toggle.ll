; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.togglelist = type { i32*, i8*, i32 (i32)* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Need an argument to 'toggle' command.  'toggle ?' for help.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"'%s': ambiguous argument ('toggle ?' for help).\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"'%s': unknown argument ('toggle ?' for help).\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s %s.\0A\00", align 1
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
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %94

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %5, align 8
  br label %19

19:                                               ; preds = %91, %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %92

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
  %30 = bitcast %struct.togglelist* %29 to i8*
  %31 = call i64 @Ambiguous(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 0, i32* %3, align 4
  br label %94

37:                                               ; preds = %23
  %38 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %39 = icmp eq %struct.togglelist* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  store i32 0, i32* %3, align 4
  br label %94

44:                                               ; preds = %37
  %45 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %46 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %51 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %58 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32 %56, i32* %59, align 4
  %60 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %61 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %49
  %65 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %66 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %72 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %73 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %71, i8* %74)
  br label %76

76:                                               ; preds = %64, %49
  br label %77

77:                                               ; preds = %76, %44
  %78 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %79 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %78, i32 0, i32 2
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = icmp ne i32 (i32)* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %84 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %83, i32 0, i32 2
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = call i32 %85(i32 -1)
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %82, %77
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  br label %19

92:                                               ; preds = %19
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %40, %33, %11
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.togglelist* @GETTOGGLE(i8*) #1

declare dso_local i64 @Ambiguous(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
