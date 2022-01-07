; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_do_mdconfig_attach_au.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_do_mdconfig_attach_au.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"-t swap\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-t vnode\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-t malloc\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s -a %s%s\00", align 1
@path_mdconfig = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"mdconfig (attach) exited %s %d\00", align 1
@norun = common dso_local global i64 0, align 8
@unit = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"fdopen\00", align 1
@mdnamelen = common dso_local global i32 0, align 4
@mdname = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"unexpected output from mdconfig (attach)\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @do_mdconfig_attach_au to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_mdconfig_attach_au(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [12 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %18 [
    i32 129, label %15
    i32 128, label %16
    i32 130, label %17
  ]

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %20

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %20

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @abort() #3
  unreachable

20:                                               ; preds = %17, %16, %15
  %21 = load i32, i32* @path_mdconfig, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @run(i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %21, i8* %22, i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @run_exitstr(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @run_exitnumber(i32 %30)
  %32 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i64, i64* @norun, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 0, i64* @unit, align 8
  br label %100

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32*, i32** %9, align 8
  %46 = call i8* @fgetln(i32* %45, i64* %12)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @mdnamelen, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = icmp ule i64 %50, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* @mdnamelen, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %56, %58
  %60 = icmp uge i64 %59, 12
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @mdname, align 4
  %64 = load i32, i32* @mdnamelen, align 4
  %65 = call i64 @strncmp(i8* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %55, %49, %44
  %68 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* @mdnamelen, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %6, align 8
  %74 = load i32, i32* @mdnamelen, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %12, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %12, align 8
  %78 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @strncpy(i8* %78, i8* %79, i64 %80)
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 %82
  store i8 0, i8* %83, align 1
  %84 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %85 = call i64 @strtoul(i8* %84, i8** %11, i32 10)
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @ULONG_MAX, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %69
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %69
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i64, i64* %13, align 8
  store i64 %97, i64* @unit, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @fclose(i32* %98)
  br label %100

100:                                              ; preds = %96, %36
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @run(i32*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @run_exitstr(i32) #2

declare dso_local i32 @run_exitnumber(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i8* @fgetln(i32*, i64*) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
