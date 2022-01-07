; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_NUMERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"AabB:def:hiNnoqtTwWxX\00", align 1
@oflag = common dso_local global i32 0, align 4
@aflag = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32* null, align 8
@Bflag = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@eflag = common dso_local global i32 0, align 4
@conffile = common dso_local global i32* null, align 8
@hflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@Nflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@qflag = common dso_local global i32 0, align 4
@tflag = common dso_local global i32 0, align 4
@Tflag = common dso_local global i32 0, align 4
@Wflag = common dso_local global i32 0, align 4
@xflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @LC_NUMERIC, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @setbuf(i32 %10, i32 0)
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @setbuf(i32 %12, i32 0)
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %43 [
    i32 65, label %21
    i32 97, label %22
    i32 98, label %23
    i32 66, label %24
    i32 100, label %27
    i32 101, label %28
    i32 102, label %29
    i32 104, label %31
    i32 105, label %32
    i32 78, label %33
    i32 110, label %34
    i32 111, label %35
    i32 113, label %36
    i32 116, label %37
    i32 84, label %38
    i32 119, label %39
    i32 87, label %40
    i32 88, label %41
    i32 120, label %42
  ]

21:                                               ; preds = %19
  store i32 1, i32* @oflag, align 4
  store i32 1, i32* @aflag, align 4
  br label %45

22:                                               ; preds = %19
  store i32 1, i32* @aflag, align 4
  br label %45

23:                                               ; preds = %19
  store i32 1, i32* @bflag, align 4
  br label %45

24:                                               ; preds = %19
  %25 = load i32*, i32** @optarg, align 8
  %26 = call i32 @strtol(i32* %25, i32* null, i32 0)
  store i32 %26, i32* @Bflag, align 4
  br label %45

27:                                               ; preds = %19
  store i32 1, i32* @dflag, align 4
  br label %45

28:                                               ; preds = %19
  store i32 1, i32* @eflag, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load i32*, i32** @optarg, align 8
  store i32* %30, i32** @conffile, align 8
  br label %45

31:                                               ; preds = %19
  store i32 1, i32* @hflag, align 4
  br label %45

32:                                               ; preds = %19
  store i32 1, i32* @iflag, align 4
  br label %45

33:                                               ; preds = %19
  store i32 1, i32* @Nflag, align 4
  br label %45

34:                                               ; preds = %19
  store i32 1, i32* @nflag, align 4
  br label %45

35:                                               ; preds = %19
  store i32 1, i32* @oflag, align 4
  br label %45

36:                                               ; preds = %19
  store i32 1, i32* @qflag, align 4
  br label %45

37:                                               ; preds = %19
  store i32 1, i32* @tflag, align 4
  br label %45

38:                                               ; preds = %19
  store i32 1, i32* @Tflag, align 4
  br label %45

39:                                               ; preds = %19
  br label %45

40:                                               ; preds = %19
  store i32 1, i32* @Wflag, align 4
  br label %45

41:                                               ; preds = %19
  store i32 1, i32* @xflag, align 4
  store i32 1, i32* @aflag, align 4
  br label %45

42:                                               ; preds = %19
  store i32 1, i32* @xflag, align 4
  br label %45

43:                                               ; preds = %19
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %29, %28, %27, %24, %23, %22, %21
  br label %14

46:                                               ; preds = %14
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* @optind, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52
  store i8** %54, i8*** %5, align 8
  %55 = load i32, i32* @Nflag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @nflag, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %57, %46
  %63 = load i32, i32* @aflag, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = call i32 @sysctl_all(i32 0, i32 0)
  %70 = call i32 @exit(i32 %69) #3
  unreachable

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32*, i32** @conffile, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %77, %74, %71
  store i32 0, i32* %7, align 4
  %80 = load i32*, i32** @conffile, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** @conffile, align 8
  %84 = call i64 @parsefile(i32* %83)
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %82, %79
  br label %90

90:                                               ; preds = %94, %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %4, align 4
  %93 = icmp sgt i32 %91, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %5, align 8
  %97 = load i8*, i8** %95, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = call i64 @parse(i32 %98, i32 0)
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %7, align 4
  br label %90

104:                                              ; preds = %90
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @setbuf(i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtol(i32*, i32*, i32) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sysctl_all(i32, i32) #1

declare dso_local i64 @parsefile(i32*) #1

declare dso_local i64 @parse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
