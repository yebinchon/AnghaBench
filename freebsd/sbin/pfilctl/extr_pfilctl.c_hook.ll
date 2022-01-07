; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfilctl/extr_pfilctl.c_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfilctl/extr_pfilctl.c_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfilioc_link = type { i32, i32, i32, i64 }

@PFIL_UNLINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ioa\00", align 1
@PFIL_IN = common dso_local global i64 0, align 8
@PFIL_OUT = common dso_local global i64 0, align 8
@PFIL_APPEND = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@dev = common dso_local global i32 0, align 4
@PFILIOC_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ioctl(PFILIOC_LINK)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pfilioc_link, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 117
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* @PFIL_UNLINK, align 8
  %17 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 3
  store i64 %16, i64* %17, align 8
  br label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 3
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %43 [
    i32 105, label %28
    i32 111, label %33
    i32 97, label %38
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* @PFIL_IN, align 8
  %30 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, %29
  store i64 %32, i64* %30, align 8
  br label %45

33:                                               ; preds = %26
  %34 = load i64, i64* @PFIL_OUT, align 8
  %35 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %34
  store i64 %37, i64* %35, align 8
  br label %45

38:                                               ; preds = %26
  %39 = load i64, i64* @PFIL_APPEND, align 8
  %40 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %39
  store i64 %42, i64* %40, align 8
  br label %45

43:                                               ; preds = %26
  %44 = call i32 (...) @help()
  br label %45

45:                                               ; preds = %43, %38, %33, %28
  br label %21

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @PFIL_DIR(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 (...) @help()
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i64, i64* @optind, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %3, align 4
  %59 = load i64, i64* @optind, align 8
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 %59
  store i8** %61, i8*** %4, align 8
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = call i32 (...) @help()
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i8**, i8*** %4, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 58)
  store i8* %70, i8** %7, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 (...) @help()
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i8*, i8** %7, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  %78 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i8**, i8*** %4, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strlcpy(i32 %79, i8* %82, i32 4)
  %84 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i8**, i8*** %4, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strlcpy(i32 %85, i8* %88, i32 4)
  %90 = getelementptr inbounds %struct.pfilioc_link, %struct.pfilioc_link* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @strlcpy(i32 %91, i8* %92, i32 4)
  %94 = load i32, i32* @dev, align 4
  %95 = load i32, i32* @PFILIOC_LINK, align 4
  %96 = call i64 @ioctl(i32 %94, i32 %95, %struct.pfilioc_link* %5)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %74
  %99 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %74
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @help(...) #1

declare dso_local i32 @PFIL_DIR(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfilioc_link*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
