; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@connected = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Connected to %s.\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Not connected.\0A\00", align 1
@proxy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Connected for proxy commands to %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"No proxy connection.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Mode: %s; Type: %s; Form: %s; Structure: %s\0A\00", align 1
@modename = common dso_local global i8* null, align 8
@typename = common dso_local global i8* null, align 8
@formname = common dso_local global i8* null, align 8
@structname = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"Verbose: %s; Bell: %s; Prompting: %s; Globbing: %s\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@bell = common dso_local global i32 0, align 4
@interactive = common dso_local global i32 0, align 4
@doglob = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Store unique: %s; Receive unique: %s\0A\00", align 1
@sunique = common dso_local global i32 0, align 4
@runique = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Case: %s; CR stripping: %s\0A\00", align 1
@mcase = common dso_local global i32 0, align 4
@crflag = common dso_local global i32 0, align 4
@ntflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"Ntrans: (in) %s (out) %s\0A\00", align 1
@ntin = common dso_local global i8* null, align 8
@ntout = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"Ntrans: off\0A\00", align 1
@mapflag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"Nmap: (in) %s (out) %s\0A\00", align 1
@mapin = common dso_local global i8* null, align 8
@mapout = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"Nmap: off\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Hash mark printing: %s; Use of PORT cmds: %s\0A\00", align 1
@hash = common dso_local global i32 0, align 4
@sendport = common dso_local global i32 0, align 4
@macnum = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"Macros:\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@macros = common dso_local global %struct.TYPE_2__* null, align 8
@code = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i64, i64* @connected, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** @hostname, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @proxy, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = call i32 @pswitch(i32 1)
  %18 = load i64, i64* @connected, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** @hostname, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %25

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 @pswitch(i32 0)
  br label %27

27:                                               ; preds = %25, %13
  %28 = call i32 (...) @sec_status()
  %29 = load i8*, i8** @modename, align 8
  %30 = load i8*, i8** @typename, align 8
  %31 = load i8*, i8** @formname, align 8
  %32 = load i8*, i8** @structname, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %29, i8* %30, i8* %31, i8* %32)
  %34 = load i32, i32* @verbose, align 4
  %35 = call i8* @onoff(i32 %34)
  %36 = load i32, i32* @bell, align 4
  %37 = call i8* @onoff(i32 %36)
  %38 = load i32, i32* @interactive, align 4
  %39 = call i8* @onoff(i32 %38)
  %40 = load i32, i32* @doglob, align 4
  %41 = call i8* @onoff(i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %35, i8* %37, i8* %39, i8* %41)
  %43 = load i32, i32* @sunique, align 4
  %44 = call i8* @onoff(i32 %43)
  %45 = load i32, i32* @runique, align 4
  %46 = call i8* @onoff(i32 %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %44, i8* %46)
  %48 = load i32, i32* @mcase, align 4
  %49 = call i8* @onoff(i32 %48)
  %50 = load i32, i32* @crflag, align 4
  %51 = call i8* @onoff(i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %49, i8* %51)
  %53 = load i64, i64* @ntflag, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %27
  %56 = load i8*, i8** @ntin, align 8
  %57 = load i8*, i8** @ntout, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %56, i8* %57)
  br label %61

59:                                               ; preds = %27
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i64, i64* @mapflag, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** @mapin, align 8
  %66 = load i8*, i8** @mapout, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %65, i8* %66)
  br label %70

68:                                               ; preds = %61
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* @hash, align 4
  %72 = call i8* @onoff(i32 %71)
  %73 = load i32, i32* @sendport, align 4
  %74 = call i8* @onoff(i32 %73)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %72, i8* %74)
  %76 = load i32, i32* @macnum, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %70
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %92, %78
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @macnum, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %80

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %70
  store i64 0, i64* @code, align 8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pswitch(i32) #1

declare dso_local i32 @sec_status(...) #1

declare dso_local i8* @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
