; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.sem.c_chkclob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.sem.c_chkclob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@no_clobber = common dso_local global i32 0, align 4
@NOCLOBBER_NOTEMPTY = common dso_local global i32 0, align 4
@NOCLOBBER_ASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Do you really want to overwrite an existing file? [N/y] \00", align 1
@ERR_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @chkclob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chkclob(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @stat(i8* %4, %struct.stat* %3)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @S_ISCHR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %39

14:                                               ; preds = %8
  %15 = load i32, i32* @no_clobber, align 4
  %16 = load i32, i32* @NOCLOBBER_NOTEMPTY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %39

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @no_clobber, align 4
  %26 = load i32, i32* @NOCLOBBER_ASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = call i32 @CGETS(i32 22, i32 15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %31 = call i64 @getYN(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %39

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* @ERR_EXISTS, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @stderror(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %33, %23, %13, %7
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @getYN(i32) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32 @stderror(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
