; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [48 x i8] c"Commands may be abbreviated.  Commands are:\0D\0A\0D\0A\00", align 1
@cmdtab = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%-*s\09%s\0D\0A\00", align 1
@HELPINDENT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"?Ambiguous help command %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"?Invalid help command %s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cmdtab, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  br label %13

13:                                               ; preds = %33, %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i8*, i8** @HELPINDENT, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %27, i8* %30)
  br label %32

32:                                               ; preds = %23, %18
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 1
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %6, align 8
  br label %13

36:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %68

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call %struct.TYPE_5__* @getcmd(i8* %46)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = call i64 @Ambiguous(%struct.TYPE_5__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %66

54:                                               ; preds = %42
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = icmp eq %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %65

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %57
  br label %66

66:                                               ; preds = %65, %51
  br label %38

67:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @getcmd(i8*) #1

declare dso_local i64 @Ambiguous(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
