; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.directory*, %struct.directory* }
%struct.directory = type { i64*, %struct.TYPE_2__*, %struct.TYPE_2__*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@xfree = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32 0, align 4
@dhead = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@printd = common dso_local global i64 0, align 8
@STRdirstack = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@VAR_NOGLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dinit(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.directory*, align 8
  %6 = alloca i8*, align 8
  store i64* %0, i64** %2, align 8
  %7 = call i64* (...) @agetcwd()
  store i64* %7, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load i32, i32* @progname, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i64*, i64** %2, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load i64*, i64** %2, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i64*, i64** %2, align 8
  %23 = call i8* @short2str(i64* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @dstart(i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @chdir(i8* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i64* null, i64** %3, align 8
  br label %33

30:                                               ; preds = %21
  %31 = load i64*, i64** %2, align 8
  %32 = call i64* @Strsave(i64* %31)
  store i64* %32, i64** %3, align 8
  br label %33

33:                                               ; preds = %30, %29
  br label %35

34:                                               ; preds = %17, %10
  store i64* null, i64** %3, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i64*, i64** %3, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = call i32 @dstart(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @xexit(i32 1)
  br label %44

44:                                               ; preds = %42, %38
  %45 = call i64* @SAVE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64* %45, i64** %3, align 8
  br label %46

46:                                               ; preds = %44, %35
  br label %58

47:                                               ; preds = %1
  %48 = load i64*, i64** %4, align 8
  %49 = load i32, i32* @xfree, align 4
  %50 = call i32 @cleanup_push(i64* %48, i32 %49)
  %51 = load i64*, i64** %4, align 8
  %52 = load i32, i32* @STRNULL, align 4
  %53 = call i64* @dcanon(i64* %51, i32 %52)
  store i64* %53, i64** %3, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = call i32 @cleanup_ignore(i64* %54)
  %56 = load i64*, i64** %4, align 8
  %57 = call i32 @cleanup_until(i64* %56)
  br label %58

58:                                               ; preds = %47, %46
  %59 = call %struct.directory* @xcalloc(i32 32, i32 1)
  store %struct.directory* %59, %struct.directory** %5, align 8
  %60 = load i64*, i64** %3, align 8
  %61 = load %struct.directory*, %struct.directory** %5, align 8
  %62 = getelementptr inbounds %struct.directory, %struct.directory* %61, i32 0, i32 0
  store i64* %60, i64** %62, align 8
  %63 = load %struct.directory*, %struct.directory** %5, align 8
  %64 = getelementptr inbounds %struct.directory, %struct.directory* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.directory*, %struct.directory** %5, align 8
  store %struct.directory* %65, %struct.directory** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dhead, i32 0, i32 0), align 8
  store %struct.directory* %65, %struct.directory** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dhead, i32 0, i32 1), align 8
  %66 = load %struct.directory*, %struct.directory** %5, align 8
  %67 = getelementptr inbounds %struct.directory, %struct.directory* %66, i32 0, i32 1
  store %struct.TYPE_2__* @dhead, %struct.TYPE_2__** %67, align 8
  %68 = load %struct.directory*, %struct.directory** %5, align 8
  %69 = getelementptr inbounds %struct.directory, %struct.directory* %68, i32 0, i32 2
  store %struct.TYPE_2__* @dhead, %struct.TYPE_2__** %69, align 8
  store i64 0, i64* @printd, align 8
  %70 = load %struct.directory*, %struct.directory** %5, align 8
  %71 = call i32 @dnewcwd(%struct.directory* %70, i32 0)
  %72 = load i32, i32* @STRdirstack, align 4
  %73 = load %struct.directory*, %struct.directory** %5, align 8
  %74 = getelementptr inbounds %struct.directory, %struct.directory* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* @VAR_READWRITE, align 4
  %77 = load i32, i32* @VAR_NOGLOB, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @setcopy(i32 %72, i64* %75, i32 %78)
  ret void
}

declare dso_local i64* @agetcwd(...) #1

declare dso_local i32 @xprintf(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @short2str(i64*) #1

declare dso_local i32 @dstart(i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i64* @Strsave(i64*) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local i64* @SAVE(i8*) #1

declare dso_local i32 @cleanup_push(i64*, i32) #1

declare dso_local i64* @dcanon(i64*, i32) #1

declare dso_local i32 @cleanup_ignore(i64*) #1

declare dso_local i32 @cleanup_until(i64*) #1

declare dso_local %struct.directory* @xcalloc(i32, i32) #1

declare dso_local i32 @dnewcwd(%struct.directory*, i32) #1

declare dso_local i32 @setcopy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
